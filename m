Received: (qmail 10138 invoked by uid 550); 11 May 2026 18:12:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 10101 invoked from network); 11 May 2026 18:12:01 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2025-04-25; bh=vdjvr/cvno2zUJ8J
	FDCCa8nx/trIZXkEWuPQ0d72vMc=; b=opL6ZS9pb/z45uRnM7c99D3CI+a5rDmK
	r9Rt1ghFwiQs9d2G6rKNbE1WE9ZnMed3k7dBD8MkX0nFR8xsLeNeriYfyM7KuKZg
	s26g8+6aPz1Pn1GsaC4YRdFALlH+xCQTcLwpB0Mbg67eQmP2AwbPA+4oNpcSbgxC
	2k+sjweTPrWYghIljt098wlu4M0EOSwH4z0LncZ5j6YDUKZhaO+x821saki7D1Qx
	IVe9/lDwqF0XAQILYWjCM8hK/g95kid/XfOemjjLLIjEqSbUHXd/eoZkxeOqwq7+
	xwYL5dr1TCrB4DGlmuz21dOqRPsC9NPoPiBiWdCcpsMpoz95LV0a0g==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hduW9WKSbWFq/SEUjRK2SukGu7SI0SMIsartvXgg/FwuDUeMoOovRFgKAzSTfHuw5sI6ari6vHiLCLKVujivhe15EJBLPqUtEML3BEtnO0XT/30pZl8nqCMXdfgdYFVFqpLVWF240RRHEqIOPzt7M4lSIlPQNJbmJVLDzoZQy1uQUuKOLQMzVUsdECkkT+B/u7crBI2KiB6iU2Ho9fZqKBoboeDchqlGzBpBDNzthQC8Nh+1msBX1cBX5snmGO3Wi4aPWIZz1ptyJsf9aA4oRu8NdcKp0HHGFHtXtfNtVimJ/dzBWUPwoJqj0O6GTmGb3SLExbfL6oss9tzUajorag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vdjvr/cvno2zUJ8JFDCCa8nx/trIZXkEWuPQ0d72vMc=;
 b=L7XUXtMlZluMmx4/otfOYLyhL7WnM71vr9wbBSvZbOI2z+Rfbc+kVlh1Ro6+n0NEL/hbgijywcaU6GUjWHfcldraAj9x2ZbHk9125L2taQZRloIuCCIGw8QUnCXm/jCIhrHPDyOCtX2G73iVSeQ/ltHOChEivBXe7Pvqmk1O5ykaiXY8brE/FPeBz5Jib1Mdx3+wk0nvYCfJIUhe4WDXkD46HgV7kQpaBVNCQkNeCoRMMtZUif4l90T/+xPfXerX/kJjNAwTIBEpD2QIzwk/b1w41Ku/BOP3CKPcXZKoEASkttnbz7gRvj7pHcvx/BGYo1s4nNEaE7+PhU65jxxIuQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vdjvr/cvno2zUJ8JFDCCa8nx/trIZXkEWuPQ0d72vMc=;
 b=IxP7OiMaItoqfWyY140AgCr4MheUICnF9XL6TYVPw5HYrRgGOfZR5wMFR+1DwIUxt+WhgZ8fQZe/lLO183gleXvmPYz2GAAVFuMHij3jhKZypoTmQw/HtNohZZhsXFcLs5L38JJwUpnDE79P0l3c8vi+hVCIC15OSJ655OwOQCI=
Message-ID: <124550bc-4540-451a-9c0a-d1d0aa951a2d@oracle.com>
Date: Mon, 11 May 2026 11:11:39 -0700
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
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PH7PR17CA0034.namprd17.prod.outlook.com
 (2603:10b6:510:323::12) To CH3PR10MB6739.namprd10.prod.outlook.com
 (2603:10b6:610:147::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR10MB6739:EE_|PH0PR10MB4455:EE_
X-MS-Office365-Filtering-Correlation-Id: bc7ef6ab-764b-4741-2026-08deaf88c07d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|366016|1800799024|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info:
	uA7IVRVoiywtGMkub3l2kDrGktSvQMuTcyQGMrgx0BuFJ5zl4fqWkPl8LDdjX7s6i/FAkBTqptr2Rc3rtSTK95EWhT+l0cCR8pusyxWXl62IPoU0QTV4SxOYxp5AkF2e0WCGzqHPy1lDJkQISSMwZ2nZjzOE1VNM0NakY8JjJRnVqc2NrY5ie1YHj5T1Jij9aodj7mnfUdBgEf0+CVPMLxEttPTePdCh8IeRdEob6mo67FxlXwgEoNPFQLOIUoponaZlP3qC2KpIin8jpf+dhmpLy0eOCk5X/Oc4I6ifkX9aTVGDTSUiuapIx6Fq4NbQi0KEfMDVZkl0b0V5LU1CeCYlwn5jP+Ee7Hh7TCDGgcFG7FNz8iZKlrrGbrGPxkvsQKCsUWoYgP1jrvLXjV2BtxUgILITEor3T2HfI3Wjjye4Q4gh5jNS2tnQtLTFLLScVWPlUvhJ3RK98yUCrlC78naSZqJhlehJ95yXaUVu7saFd+3Jv8GBlxhtVVn1mj8B7JjPzK0KhsaNoZKb+eWFg0Pu/n7iQhNyPs2GsD+nhnrIj0Cs5PRY54/ezR4OBlpoW1M/ixxrcawRqpFCP/3JEeNtFxCyxmI/u7RqcSSnfXVzx5bxU+iTUOBjRWvXug2/o5ZUi8qpYgbOInZzDNNKpQ==
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR10MB6739.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(18002099003)(56012099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?M0tTVFVITnNlU1A2VURaTGVPOGkyWHZ6enJJWk5NUWRsMUd1dUNZQlRWMlRN?=
 =?utf-8?B?K0RQVUdiL3RLbWN6dnBBZ3lKNS9zQ0U0UERBWXFaZWdGSGNsdm85ZU04dFdL?=
 =?utf-8?B?aEZ6b0Zmd3E2SzBMalFRMzZqaHVFQkpWQ0tkUUhMNWxCMWJSVjNKMkQrcmtS?=
 =?utf-8?B?SmZTMFZlSDYxMGJUWUd2WmFsd1lZRmpiR2ZWNXRnQkhkU1F4M1RDempaTzV2?=
 =?utf-8?B?U3ZoeVRZUVVweUR6NHN1NnRyM0IwMm5SZk5XaWNLMkpUN3lmWjVBUTRhUFBW?=
 =?utf-8?B?N0tINWhtakp3MFVxeUo1aGJ0UGJKL2oyS2tVMmVmOEcwa3E3SlpUdEViVkps?=
 =?utf-8?B?bG1mbEFQWm40Vm1zVVhuSTNvT1B4NkRCTjJ2b2hUZ2JVQlI0YVBFeHpVZzBU?=
 =?utf-8?B?Z2VvL0dYWVQ5Nm81THdwZ3F0TFJib29nbHJmT0UrNElmMm9IOVdTd2p1ay9C?=
 =?utf-8?B?K01iMSt1YWtHMmhNcy80M1lCNVE0NW4xeWF3MFFLRHBSN3RQU1RXUUs3bGhF?=
 =?utf-8?B?eEpUTVJlQ0E5ZUhFVTR6V29MZkJJbTZ3S01hYkVOQ0x0SnkzYm5kem5Gd3kx?=
 =?utf-8?B?WHpJdFM5eUxCMExmWmpQZzJRa0ExdDBJQkdSNmpiNFJyU01aTHlrK1dYeG9y?=
 =?utf-8?B?S3JqakY3ckxkcW1lVWV4c1RNTnRRcjlvSEpjNkpHYjlwdmNqM0UzSk50YzlI?=
 =?utf-8?B?c2Mrb1IrdUVlSFFRNUZIaXAxMm5SSHFwTHhoR0xsNE5mREx5T2JCZkJZSWVs?=
 =?utf-8?B?bmxxMHdXMlQyZGVUaS9YdUkvQzRubkllbFo1YzNDZWM0Qk5helA5U3FzUUM5?=
 =?utf-8?B?T09OR0ljS3JMSm1McTdvc1QrS052cCtuYnN5cnBxNU10TjBxZS9GSFNDQ3M2?=
 =?utf-8?B?RmJkT0dRVUxMUFFHaWNZN2hIRk1ybXBQbkRrR2dvV0VkUHpxcWQxOFFrMk53?=
 =?utf-8?B?WmtJbFR1Rk4xS2ZYSkloanIxdVVpRHZ3Tzh6K3Qwd0VkdmNIam9Ra3YvdlRj?=
 =?utf-8?B?WjV2YXRDWTNqTDdGbk14dXdRb2Y2aDMvQ0lTV3RQUXBXUlFCV3h0OXdqVWJ1?=
 =?utf-8?B?YnJrc2M5ZVNSOERlS2hHbXdkaDR5UVhBQmx4aTZVak9HZG41WERrUG5nUjFY?=
 =?utf-8?B?V1htaktoTFNHaEp5azBmMVZ1cWhzSHU2UHJQbTZ3WDlMR2FlYzMyeERXOUZo?=
 =?utf-8?B?eE9RSnBNTGJDUmh4LzRweENoZnBUUlcvOC8vUUhOSktSZDhwUXlCazlMRkw1?=
 =?utf-8?B?R1lSYk44R0IySDNoZFpranRrMWNZS0U4VzFjRmNHUGtIUEVxY20yZnV4c3Jp?=
 =?utf-8?B?WW9pcGVxYUlwUkJERjR2VXJieUxPWDVsakJWd04xNGo4QUI4VnBNOU9IenNr?=
 =?utf-8?B?WmVUalQ1Z1lkd0JGQittQ1FtdkpDMUZxMEc5YmhxWnk4d3RheVFmdWdnQXRu?=
 =?utf-8?B?eXRuaHpLZXRQNVMvV0dxZXFQWS9Gd21NQ0szaEZFVWtjZXJLejFKd2QxU1Zy?=
 =?utf-8?B?ZkhXc29yRjJka2NEYnFhNHZNWk4vT1JVT0ZXUmU4d29VOWpqYnFIRWJDY0hw?=
 =?utf-8?B?WmlVa0VYSGptOXJoTHliRVAzSVVJTy95QXVZVjhCYWVxVTFoSitORHovT2dI?=
 =?utf-8?B?Z053M1RUeVJ6ZDBwamtLTWZlMUVkc1BEb1JEMnVKQWJIZGZNcmVobzdtaHlr?=
 =?utf-8?B?QU9zUjZlOVZXeGU1U0xId3l1UFZXekg3ekJ4RXpSQ3Zzckx5MzBMRXFZUThr?=
 =?utf-8?B?OUFqcDdIblgvaFEzd2htSnQ0eXh4NEd4dEQ2QWcxbEFGUjROYjZmcjVKZ3oy?=
 =?utf-8?B?L0sycGIzL3VlUndrQXc4WGlRVlFkbkxkK0QySFZndnA2aWdUeFNta1BYeDlH?=
 =?utf-8?B?MEx5clVkRnErWVkzaGF5eXBoL1BJSkdxZUN0WTJDc1Q1MElyWUxVdXlkWUg4?=
 =?utf-8?B?Q05JYTErZFBKWG5VbGpiMVJGNFpvaEdlTUtCSmUrSXk4YkNjZk5sYXVxVFJv?=
 =?utf-8?B?Tnc0eHBKaEdselQxQUlacGRlSVdXQ0pHMXZ2aURzNFVIa3Uzd0xRVlFRbzkv?=
 =?utf-8?B?UGRnak5SRGNrckEvNktqQlJ1MllFdHUrQ3ZvS2tqaXN5UVp6T3o4SFd4Uk1C?=
 =?utf-8?B?VTArN2pOZkxhNEVsWUVXWGpJbHpvaklHT0FYM0RocDFLK3NrQVdXZHhETEwz?=
 =?utf-8?B?cG8vaENTU3lsaUZ1ajI1RCt3TGsyNWRQUXpRaXkrQXR5am1TYXlUc2lVV2sx?=
 =?utf-8?B?UVUzSmFlY1k4dHBPZXNzbS9LaHkzcG53MW1oZTZFeXQ0djRTSTJEUFh0K0pN?=
 =?utf-8?B?bGRDOU9ZSXlxTGgzNWw4UTlhM0pVU2JZMmo1YjNsU1l4VUR4dkVPS2ZTTWFv?=
 =?utf-8?Q?S0A7U5selfbjK1Xk=3D?=
X-Exchange-RoutingPolicyChecked:
	nJrPRW7iwtXxfkKC8WvHc/cflwcRh5M7tL3xNzFQRdZllgccSeZH/mNYmdZVrRC75g+KNdk/WAVMpFnkoS0nvnaQ2ZhoB8K01FaZlcFeLlMryR2m8qE0xBJxdUopf75ulLmyr9YwzFj1obtMtZxU2s20037fejuT1zSO0VzfLBToBHIWz1z2lkBn6IM3JuoZH/p4BGQFtvZO1R87hTh1nClab2o/iJRbjlF0QPZQzj3VOSTKai4VjjN4VBJnq/ucpJ4L4eJ4cf7R8ychbs1QFLuMsoQ7Ch49t5TwEnTMPFCnufq54Fqo5rj17ATSu4flYepjoQbEsiF+hGVVlGhRGg==
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	EScsGKww0ZwXmxFTV8xolFo3NNPype+ZaSdDjAtfuD3bMFfJsaZc8qIQG4A1YHQ8+XDx5D17AxItfvJBgmjUhz/1bmRgGnUTno1rOujgmJhD0o++BdR2VSJ8KNthkXbng8XZmiqcJhp8+X/Pu/ZcrghNPd/5QwlT06ueIeeMLCu6uVo1ZxwaNwiKSzX2pPTFt9xIXrDvQsI2jUfailYWmqbh3wXkw3nR9tXTLgFv9RMhu0KK2Bd8C82sRfK9r9cAJ38KQKi1WmCYhWCAd7zN2a3YC+US8PlHgSr0Rz/JAgu7iAAGHBjmw7WSjQnujGin7HvB7S4QzxpFzxh71iF6kbr98P6SDK+BWlh/YVQBSaSdX8sIRiuKKqh3LV8i7ju4DIb+ZD7y9hgwoJaFztbauX+7L15rrtlsKad0VFEUNyF2FpZAGDxiVVPe/IGALUG5s9IdxN9CDLB63xHbrS4gpFkTRsHIINP3o9/djLi+ZQr1M5VE36VMbhsJK8TmwsJnd8CKfD3/B7mJsZAx4chCpD8r4mUSeFTM9Bm40nx5wzqZxfmywKQGTgPevekSNYCrmthwVPeJyR7cceiht617faO0fvY8s+5agF4NqYbYOeY=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bc7ef6ab-764b-4741-2026-08deaf88c07d
X-MS-Exchange-CrossTenant-AuthSource: CH3PR10MB6739.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 May 2026 18:11:41.5104
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WNf472kfgZbPAKLcRjpFp2P4/upcxHqqQXwoWIgsnIJ7gsoXMylnUzBRhIAMnA/GlKsBNZaH0TwHpPw7L6Ltx/vasm2LibSb4OGqA9MD+5Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR10MB4455
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-11_05,2026-05-08_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 lowpriorityscore=0 spamscore=0 bulkscore=0 mlxscore=0 mlxlogscore=999
 suspectscore=0 malwarescore=0 phishscore=0 adultscore=0 classifier=spam
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2604200000
 definitions=main-2605110194
X-Authority-Analysis: v=2.4 cv=cPXQdFeN c=1 sm=1 tr=0 ts=6a021be7 cx=c_pps
 a=XiAAW1AwiKB2Y8Wsi+sD2Q==:117 a=XiAAW1AwiKB2Y8Wsi+sD2Q==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=NGcC8JguVDcA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=jiCTI4zE5U7BLdzWsZGv:22 a=7Gl3-_t3PgB9XO-mQDs3:22 a=omqxvBYPAAAA:8
 a=TWq6ZYQzAAAA:8 a=yPCof4ZbAAAA:8 a=pGLkceISAAAA:8 a=VBowi81kAAAA:8
 a=6sAEKeH3pVYU1_xedVUA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=LHRESdT2jHCYgTnjdhDM:22 a=ELI009spOhp4_qEUuRHw:22 a=uoxt2CKr5i4t67rzx1zf:22
X-Proofpoint-ORIG-GUID: NJFQg__KW0Qz5LIpa2iEZMm9JUqm6Hia
X-Proofpoint-GUID: NJFQg__KW0Qz5LIpa2iEZMm9JUqm6Hia
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTExMDE5NCBTYWx0ZWRfXzhoiRSucmZbk
 cD3sFCmyJSuqknG1/VKfax9nszQILOiW+HvOy030YCfbZAkZdXxHVz1gf4wvXReBjEUyhv9xepF
 Ybk8XcvTXHIeZ21wB2wF4mWczdTvPbFK59twMaopyP6ZCdNm8Q/J41nUrOAG21byjpvD8Zp+SCB
 4Trw/SR4OO6zlVbPpMGXD276XvWLLHeUpqQyamqX6fcXTo8TSHPfdzZP4q4Pn3ZqA1RXT0Axkpo
 kBxCIjSvPer7xJmvcD5k/jZJo4e91HP9JoiujzVNyw7+HOIIrcH2casVV/raMd9kRdB1XJo/KGp
 R0X6l22Srve4UMccf/BFGyR/8fbT+5GY/qCoK9DdoQtiA4TCP9SgjL3yrzHpnLLFw4gOiijmGcm
 rb1ss+BJq6P7JeQmc1x4U97jTRCjafg/9zqqss2+uPQ135kKRtz8EhWndwZQDgxNCbsC+bmY2sF
 xxOU8W7EvWjlChw++qA==
Subject: [oss-security] dnsmasq vulnerabilities, including attacker DNS
 redirect, privilege escalation, and heap manipulation

https://lists.thekelleys.org.uk/pipermail/dnsmasq-discuss/2026q2/018471.html 
announces:
> Today, 11th May 2026 CERT is releasing a set of six CVEs for serious 
> security vulnerabilities in dnsmasq. These are all long-standing bugs 
> which apply to pretty much all non-ancient versions. The CVE has been 
> pre-disclosed to vendors, so hopefully they will be releasing patched 
> versions of their dnsmasq packages in a timely manner.
> 
> Details and patches are available on the website at
> 
> https://thekelleys.org.uk/dnsmasq/CVE/
> 
> and I have made "2.92rel2" release of the current 2.92 dnsmasq stable 
> release which is downloadable from the usual place and has had these 
> patches applied.
> 
> At the same time, the commits which fix these bugs in the development 
> tree will be uploaded. Some of these use the same patches as the 
> backports, but some are more comprehensive re-writes to tackle root-causes.
> 
> There has been something of a revolution in AI-based security research, 
> and I've spent a lot of time over the last couple of months dealing with 
> bug reports, weeding duplicates (so many duplicates!) and triaging bugs 
> into those which need vendor pre-disclosure and those which it's better 
> to make public and fix immediately. Those judgements have been 
> necessarily subjective, but given the number of times "good guys" have 
> found these bugs, there's no doubt that "bad guys" have been able to do 
> the same, so long embargoes seem kind of pointless. There's also the 
> problem that the amount of time and effort, for all actors, needed to 
> co-ordinate an embargo and provide backports is huge. I think the 
> priority for most bugs is to fix them going forward, and have new 
> dnsmasq releases as bug-free as possible. To this end, you may have 
> noticed that there have been a lot of security-fix commits to the git 
> repo in the weeks prior to this announcement.
> 
> I will shortly tag dnsmasq-2.93rc1 and the aim is to get a stable 2.93 
> release done ASAP. Testing of release candidate by members here is 
> important and I'd like to encourage anyone who can to do that as soon as 
> they can. With luck, 2.93 could be out in a week or so.
> 
> The tsunami of AI-generated bug reports shows no signs of stopping, so 
> it is likely that this process will have to be repeated again soon. 
> There's a tension between getting as much as possible of the ongoing bug 
> stream fixed in 2.93 and it's timely release. I plan to prioritise 
> timeliness, and keep working after that as necessary.
> 
> 
> 
> Simon.

https://www.kb.cert.org/vuls/id/471747 provides additional details:
> dnsmasq contains several vulnerabilities, including attacker DNS redirect,
>  privilege escalation, and heap manipulation
> 
> Vulnerability Note VU#471747
> Original Release Date: 2026-05-11 | Last Revised: 2026-05-11
> 
> Overview
> --------
> dnsmasq is affected by multiple memory safety and input validation
> vulnerabilities, including heap buffer overflows, heap corruption, and code
> execution flaws. Collectively, these vulnerabilities enable attackers to
> poison cached DNS records, bypass security controls, crash the dnsmasq process,
> or under certain conditions, achieve local privilege escalation.
> 
> Description
> -----------
> 
> dnsmasq is an open-source networking tool that provides DNS forwarding, DHCP,
> and network boot services for small-to-medium sized networks and home routing
> devices. It can also function as a DNS resolver, which is the primary
> exploitation use case for several of the vulnerabilities described below,
> tracked collectively as CVE-2026-2291, CVE-2026-4890, CVE-2026-4891,
> CVE-2026-4892, CVE-2026-4893, and CVE-2026-5172.
> 
> CVE-2026-2291
> dnsmasq's extract_name() function can be abused to cause a heap buffer
> overflow, enabling an attacker to inject false DNS cache entries. This could
> cause DNS queries to be redirected to attacker-controlled IP addresses or
> result in a Denial of Service (DoS).
> 
> CVE-2026-4890
> An infinite-loop flaw in the DNSSEC validation of dnsmasq allows remote
> attackers to cause Denial of Service (DoS) conditions via a crafted DNS packet.
> 
> CVE-2026-4891
> A heap-based out-of-bounds read vulnerability in the DNSSEC validation of
> dnsmasq allows remote attackers to leak memory information via a crafted DNS
> packet.
> 
> CVE-2026-4892
> A heap-based out-of-bounds write vulnerability in the DHCPv6 implementation of
> dnsmasq allows local attackers to execute arbitrary code with root privileges
> via a crafted DHCPv6 packet.
> 
> CVE-2026-4893
> An information disclosure vulnerability in dnsmasq allows remote attackers to
> bypass source checks via a crafted DNS packet containing RFC 7871 client-subnet
> information.
> 
> CVE-2026-5172
> A buffer overflow vulnerability in dnsmasq’s extract_addresses() function
> allows attackers to trigger a heap out-of-bounds read and crash dnsmasq by
> exploiting a malformed DNS response.
> 
> Impact
> ------
> 
> These vulnerabilities collectively pose various risks:
> 
> DoS (CVE-2026-2291, CVE-2026-4890, CVE-2026-5172) — dnsmasq may crash or
> become unresponsive, terminating DNS resolution and affecting dependent
> services.
> 
> Cache Poisoning / Redirection (CVE-2026-2291, CVE-2026-4893) — Attackers
> may overwrite cache entries or manipulate response routing, enabling the
> silent redirection of users to malicious domains.
> 
> Information Disclosure (CVE-2026-4891, CVE-2026-4893) — Internal memory
> and network information may be inadvertently exposed.
> 
> Local Privilege Escalation (CVE-2026-4892) — A local attacker may execute
> arbitrary code as root via DHCPv6 manipulation.
> 
> Solution
> --------
> 
> dnsmasq has released version 2.93 to fix the above vulnerabilities, and
> various vendors have published patches to address individual remediations.
> A full list of affected vendors and vendor patches can be found in the
> References section below. This note, as well as the CVE listings, will be
> updated as additional patches become available.
> 
> Acknowledgements
> ----------------
> 
> Thank you to the reporters for discovering these vulnerabilities:
> * Hugo Martinez (hugomray@gmail.com) - CVE-2026-5172, CVE-2026-2291
> * Andrew Fasano (NIST) - CVE-2026-2291
> * Royce M (royce@xchglabs.com) - CVE-2026-4893, CVE-2026-4892, CVE-2026-4891,
>   CVE-2026-4890, CVE-2026-2291
> * Asim Viladi Oglu Manizada - CVE-2026-4892
> * Mattia Ricciardi (mindless) - CVE-2026-2291

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

