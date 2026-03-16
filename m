Received: (qmail 24138 invoked by uid 550); 16 Mar 2026 22:14:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 24009 invoked from network); 16 Mar 2026 22:14:02 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	corp-2025-04-25; bh=oioWi5Sj+EXgbmDIcpcpD5bWiV9y0kkFqx019es94MA=; b=
	hm0psnXa7A7v29RX0ukyVAl0nwm66CD9pqMPXHTrWmvMfri4ksaV8RhrCcS/2N4J
	gnroRDecuaBFOg+TjJnYfR4r9u4WPpUurMmMsk937Gv41sNyd66HID7NLBmoJrXB
	+x9PjiBImRqLGN32sA4rxzujBjQ28of4urstRBbcCuv3HlL2CaY9sdOZGt00vJqC
	ES9ImxIP9UZtYhspy+Bni9jzC9exUZOGF8BBqy+BxztHXJvc0TAeqkj7TVwE0TFc
	Lsl3azd9WYkdz7xYAc5yZD4chMK5oUbWMcehe39Ty/Qrs9zUzXR82FuBE1KM8a4J
	TSz+6lUFPeM0HCIyI/QCkA==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Y4cIOYEJi6ZJ6hKFBHvvaexDniJhfFgAdrjL28UlDKT6p9mStwosKoVw9U4U/W8Gl7wLSnmPTLwfZjPVTSpZHp6k9jI5Pg5qa6NmvMAqCU58mgAs6gxNUR2eHYakXM0Q6zDLTclr5so9VelZRUQtRBMDdLggfOJqw7D/Alvm1qqqr95IahE9bVR4DdcAnpfxDOhtPc01xANOG+Jk2aZvHYlLdtQrFkoXz/UjY0VwNOprKbkV+9XdYfgoHzaZLZmo6rmkLfYCcZrZ+8JQxgL//tYKfIrGcl1/e/aEu8BLkERY7yzNU4US2sV6zPoeCU52ZWkYcVGQwjIuT/u3TK5bwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oioWi5Sj+EXgbmDIcpcpD5bWiV9y0kkFqx019es94MA=;
 b=SxrHAyi6FCj7Fu+Z3mTZRLUb4zrZ6JFHUd3kuWTAkdCjx8aQvh0LaEFr/1V4fil+XQfA5yHR2QQQcqZEaQjrOVn1qAFpmaMHaAJdE2Va7SQ9os7yIi/pbY8n7Wx50kWOQkG1UJUQKzunbTpms04n+ZUGmr3RdjY5aabMdjqmi/ffBowlEyZl+pqWAEmRwThvO7TF/L5r5bKsZDnobVQhToCJCYvtcvUX8cJf/Ty0z5+VOaFAYvqPhOUmXQ0JSwpVjGr/HvQJ/PtmgCZm6hvhcPEZHA5WH5kwMtvrMgjAJ7Zzr/9nMPAyOOfaRYKxdvfaDpUfhRTODgPuxfvLwLZ3Gw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oioWi5Sj+EXgbmDIcpcpD5bWiV9y0kkFqx019es94MA=;
 b=ZGRPMdOpnQOyZ0I0VHpYJWGOEgbAY2001u9V8R670hyNvr8t96ATATJVzFuhy0bQ9DzviTfv6lLX/fF8H0sqcc22r4qDMgvttthUMZkJdySAiQTTsrYY1/CVDSjFZByu7tzgAjaT747NNappKAbD7y+KrcKwlyCBuDwQ5V8syOQ=
Message-ID: <8ca8930e-716c-4c68-8265-f7da2f207400@oracle.com>
Date: Mon, 16 Mar 2026 15:13:46 -0700
User-Agent: Mozilla Thunderbird
References: <CAEMnaZKNhOgbgqAoH9MfR+mALz3iE4XNSBdmhcQNiNr05yz1LA@mail.gmail.com>
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
In-Reply-To: <CAEMnaZKNhOgbgqAoH9MfR+mALz3iE4XNSBdmhcQNiNr05yz1LA@mail.gmail.com>
X-Forwarded-Message-Id: <CAEMnaZKNhOgbgqAoH9MfR+mALz3iE4XNSBdmhcQNiNr05yz1LA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: CH0PR13CA0056.namprd13.prod.outlook.com
 (2603:10b6:610:b2::31) To CH3PR10MB6739.namprd10.prod.outlook.com
 (2603:10b6:610:147::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR10MB6739:EE_|CH2PR10MB4264:EE_
X-MS-Office365-Filtering-Correlation-Id: b77b9abc-f789-4cbf-b873-08de83a94c59
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|366016|4022899009|376014|1800799024|56012099003|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info:
	K2IS585tBx5I9eetLLvL8PYxhYj2nqoAPrlXd32bGLKgGXFPDfqACJX4HM2KDWw+0XnnfhViqhcpAlnK5cXNrmsJOzIGMQhD+Z4YYFaUFylEDp9wxXa3VUrnwBGUoSQ1UW+xspioAgjwixqpTgmXK+TzcfmF6I9tqQgaf9E0fdSTx3HE5fCzWC3wK1wsiBi3GulTSSt0au3F16rlAQ5KFrDUWVNGr4Fbgu23KTYIHioYHIXJSIlAiST1853fnOh9b8lcMDjLmap0pDAJT7phx6N8kZoziS9swFWAqiGxwQOyqeyEpExVhuC/5fcf0SsCK3sV/jmVV1Q9Hnkn9ypYQceGPyuXtfQSniD5aBsjtLoe7op11TZsaPdSsgoD35M0KN/YtvPr+CnEzdN6OXVfFl1PWpjsyDsYEQEOcznVNc1Mtek0mtMNKtfGuYKPgf9CGYhQvJOb/ZWAizPaRNIlte7mZAJhGi+EQrL7oQJlbgyUyvCYDfL3wrseASL/RNu7XVK9lQ9PS6+MVirMCt5bjxnZfwxuiiJkNoonQYAqv4MVo3I78+QPJ4sSFiHvUziJH+PJXF75P5ORsZw5oyHaP+uwCibBSbSV9jGyMYYO1KWICxiIB1X8XRByIR22KlRd3RfxIrLngB3QIB1aORpehlIvkEKNl2+fdd1ARusbJ+gw1p9x8nzU9y60dWztVuWT
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR10MB6739.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(4022899009)(376014)(1800799024)(56012099003)(18002099003)(22082099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?MU9tbkozV2o2SWFJQmtOZXVZNmtuWkZPcG5pTHlmY1o3Mi82TkQrQ1kwK0s3?=
 =?utf-8?B?S3pPcHZaRUJTdWlMbUtVMVNEbHh2Qy9WMlhNVk9kR2FIcS84VmpWN2MzQkQ1?=
 =?utf-8?B?eEd3Y3ROMGRCNzlqT3FKSkE2OWNKNXlBS2lRRVMzb1NNSTBjZkpYWnllV3lV?=
 =?utf-8?B?ZVVuYUZuZFJDSzRmS0tlUEpqK2hGeXZNNE9hY1JadzA1VmhyR3hGc3I0bXNM?=
 =?utf-8?B?dG45RmM5YkUrMHRLZzdGZkJaT0lubFFDNmxWejljcis5K2R0THJZN3pXeEZm?=
 =?utf-8?B?NTRQVUF3YXFkMUNCWkRrbmVWbktHR1poSyt0dFR2L2tVYVorWStRWkp2ZVJt?=
 =?utf-8?B?VFpsTnBDN1lMT0ZTZG9RYVE4ZUxESktCcTQ3bXM4dk5pRHh0MXJ6OTlnNkJH?=
 =?utf-8?B?UmI2bWJMa0g0U1NtRjN0dTZ0Rm1MOFYvaFJhN2doalpGcThxYm1abWZ1d0ZN?=
 =?utf-8?B?Tm9YczNmVkNiR2RTTjEvbU5CM29UT1NBK1BQc2VtcDJPc0hOTWVRUSt4dDVR?=
 =?utf-8?B?ejhLdTR1RkM0RGFndzgxR0lXaFJyZkVqOVR0RmFjdXVDNnNxa0lHbGxKeTRB?=
 =?utf-8?B?UGVid2M5WDI5Z1ZMd0xmTyt6dVJrVThhRjEvcUNYcUNZNkJQQzFQSE9ET3dn?=
 =?utf-8?B?bnI3eHhJSm5wbi9EYVRSWHozQyszNHM4RGhxZ2lzVmNLQ09FVjhoeHZLWXk2?=
 =?utf-8?B?Mzd3VDc0NWtIMFVQbGhON29VeDU0eFZSdyt3R0JGMWRBREZRMUttaGxLS1Ax?=
 =?utf-8?B?UW1kNGtBYXIrY3hTdDF2N3pUdlU3aXhzL3dpcE9oVHIydzdHdUVCYnZONmQr?=
 =?utf-8?B?QzR3OE90TVE3T3FWTkd4N0htdTZEL0xrV3l3K1Eyd3FFNzhjdWp1TlhhMzV0?=
 =?utf-8?B?VHBGMkQ5TCtXTWMxVWFiYVRaY25QazlWT2pXZlhyTy9WSmtKaGJSUWZCdE5F?=
 =?utf-8?B?ZjdYak03TDl0NW04WjZqR1g0TnRUamIzRnVaTlplUE5rY09rN0plZklsRTFX?=
 =?utf-8?B?Z2RtaDFkSzJ2M04wU2NScXVxa3V1ZlZVU1VrNmJkN2Q1T1h4dHlVSGp6eUZu?=
 =?utf-8?B?SUNaUXdPVS92YW5xTlpiVGt5MjFRT3I2T1VBZ3Jtclc2R0VGbTJLVEczT0pX?=
 =?utf-8?B?aEpJOEJmbmFmVThXamtBbXBxZlo2bFVZWFBKZ3drQnFWSmNVVWhTbTkwYStB?=
 =?utf-8?B?L04vYnlqaXU1NzQ2d2JzTXltZ0tPL0RWM0s4bzRUVjBCWEFhQU9qZHpVclJ2?=
 =?utf-8?B?VFAwUVNCREQzWTFQUUdYbk1NdWhndzZuRUQ4OGszSVd1Y3FSREZRL2pzbHJK?=
 =?utf-8?B?czh3SzZvalVyN0J5R3kxZUlMVENuVFpOQTdqNFpaN1RhM3hjRkZDQXZDUjh4?=
 =?utf-8?B?SG1sTDJTSFJOOCtGdzNZY1laZmxVTWdmOFo2KzQ4L2U3SnZGTFBqVEE0SzhF?=
 =?utf-8?B?czEyK3NJNitzOXNlUzlRRFdjQzR0dzloSjZuYVhvbkdEaXpYeEl5cVM3SGl5?=
 =?utf-8?B?WEc4KzVuTHVIMFF4SnlTRlVCRTU5Zm5CdUw5a2dsTzFaam96QWtWb24yUkl2?=
 =?utf-8?B?a1o3NjRFOFlGMTBnMWhQQTJtRGhSNWttNzl4cWVlUStlcmNlQkQ0MUs0a0Mv?=
 =?utf-8?B?TUM2ZTI2c2ZBaFdmRTV6NWtJS3ZaVWIrRGxBYjllMXhwMUdscW5mMTFiUkVU?=
 =?utf-8?B?c282VFUwU1FBczlHbGdPdXlQN2xZMHVLQ1lQdHVwVmhoM2dKMExXM0dCdmpD?=
 =?utf-8?B?aW1vcExwN1ZJNjIxQ3ZNMkk1UVhxMXA5Wlh2TXlybm02WFVTRllxeXlyL3hJ?=
 =?utf-8?B?dzRtSGRSbWtRMjRnbnpUQzhCTmR6U1NaZEUzaDN2dkowYzRqMHR4a1hGekp5?=
 =?utf-8?B?UXJZVnpLUTUxc3RPZ3FPQS9XUE5UMGJNOGxHWFcreWg4emNacFVhWHpNY1d3?=
 =?utf-8?B?a0d3T0IrdTkzbGVSTVQ2Y2wrbERMSTB2VHc5MmtpTDVkaWs3MUtwdmd6aTFE?=
 =?utf-8?B?QmVyNFdUUTRXUnhqOFJFNXhpQXZVemdQZXNydUt5bjM2Z2pHNEhTNkJxYkx5?=
 =?utf-8?B?anhoU0N0QnhnSG42bjY1VEdybk5LU1hVUXplZldndVk3UWZNTDBYMkFIZ25t?=
 =?utf-8?B?NzJwV1lrVnNJN3o5L2srbTJBL3Y4ell4eUg5cFBuYmVEdWUzWFRwSjZmZ0N5?=
 =?utf-8?B?WG5JMEtlZHhLQ0sxSkdzTWVKVUVFYktObzd0SXp4YkJFUkJHSmhtLzd2Slor?=
 =?utf-8?B?WXdrRUdKVjAzK0dNN0VNTFAwNThRcTBycDJWWnpCVytQWTduZ1REUW9qQ0Q4?=
 =?utf-8?B?V0cwZEUvUjJLTEJiY09YNWZaSW9YOGhERWZwcHZzT1piOFFIaXFYS0VsMFNM?=
 =?utf-8?Q?f6jg28pFnMzOBk3Q=3D?=
X-Exchange-RoutingPolicyChecked:
	a8JF19z0eOXSYH1bZ73H1K/FK2+JMiIpKZ6K1uWB4McA6wyykBiVHU+E3KlD+fvSPVn7PY76rzse4TLx8h2M0bWvM6eCGvZP7m5wQt50t2wf1Hdc2uRr2iu3xP47tpKPoR9rqrqxxhnlj4NeQfsM9pVEBwX+hDoXUfi4Ty/n7GG2AGh3wjUDMdGsBxKNvm9AzOUbpX79s9fzHdSnSlx0o3rL0FlHf2WilSVQT5KsruyAnMl5qfzswslZVyHOB5P+XOx4PC4t9dwnjKwoQGZkDjPj+mMvOz0Q/pg/5lj5G7Y4UhA8iumh39vVR41B1quiEmVmjDahPNBEWEvteDfgXg==
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	TtdF34uFM3VHezU+bVk88hPGB6ZRD2DLlC01vYaYOUHq5PcpMO4oWSM6ET/84pgqUrdvhYssgvW3r7MhyDZsJN+29QIR9QD8hSv/AUk4NknQBLAk7QXj8lhMQ/21y9nw9aJhqNjAz4pFxJiaJabMaliyIssNM/ATkYTRC6pxm5RnlMVTU9aXNlRvNP/H2TqunEDEC4RDhmXu9vfrhHrpJyHBw4RXh0mCLiDWhk+7UrunwDIBjNzK2E0hQT9iCX3GItQCU+iiGsLXVfZEGzIPnbMceJn3jp2WCsWxYWLRPfW4GThwCgFuvDvVLn1ylVukkGdEPtgrhgXcH4aRCl48GGDRFfRzOgazy3JYVQIOeE4r5oR0v38eoAlBO+wrJhXRreG8wZxkh6oPUcMULakTlj+yTM0/nHgrbcdlSMm6ZGA1GRRzCnaJV0rA/phcSIcpYlzEgB654dcdire3txTETmly3iahnKGJ0WVzmkfC+XCp04I57f5YZQzFV/bapMLSVeugB1/recdFcmn4ikcjdQeLrACiZyhBrMsB4vp2dtsEARPuvLmrcQOGRwL1Rv06d5PH9fgzXqEXOnyhj5V4fB8ZCEEj1uLZpPCComGO5WA=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b77b9abc-f789-4cbf-b873-08de83a94c59
X-MS-Exchange-CrossTenant-AuthSource: CH3PR10MB6739.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Mar 2026 22:13:48.8812
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: packi9aTv/Bfmk0dfl5/4Ly2oLMqawCHgix5LSudq4GTjTE1+ukYfX1nCJAFqbkeC0OWnbPUdlBU7QVvYzA66W6sCySTydQEyPJuaQBu32A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR10MB4264
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-16_06,2026-03-16_06,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0 adultscore=0
 suspectscore=0 bulkscore=0 spamscore=0 phishscore=0 mlxlogscore=999
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2603050001 definitions=main-2603160183
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE2MDE4MyBTYWx0ZWRfX7tark/X3Juox
 HLq6wvMNGez+NKJdhjePVImJfmvOmMdRi0lV3cCpHi8DguhBFOiG6+2/7BCePtjxnFwf32rtRXy
 YZhpdfDee2CkCGRFyweRQIwwtoja4OaLWjqNLRvyGeTHHjq3nyLRA8kH1QdiPGuH+DwKyckLupb
 EThcRrCx88j7t95eZGMI+Q6uCCgdcsS9SM7wTrLLk+zpPA16i9jF55SHsGBPt5Jo4eEIEU+oxsz
 d7/1yyZP1cyNl9FPmfkleS1rL6RgUChA98xQoO7tA3mSb2VlPENxjzQbr8GWjn2XmJG8hGlXlVO
 oSXMLuQeFiOn0JZ0VGiTdj4Wvb4bWp+vwCD8p/T+LDjK5CSG+uiJbeg7zQIZZJLkILlVN2JEU7B
 kA4pF6+Bjs3/vhnpN8sHclUDGCVgrJLy7eLpIw3eYFvh+SJB9hqQEom5CLIePeniCVzOc2bPBpJ
 /rztCDaT8ceeqg14RAkUSTA7jtcfqTXxmLT+dOtU=
X-Authority-Analysis: v=2.4 cv=J8WnLQnS c=1 sm=1 tr=0 ts=69b880a1 b=1 cx=c_pps
 a=qoll8+KPOyaMroiJ2sR5sw==:117 a=qoll8+KPOyaMroiJ2sR5sw==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Yq5XynenixoA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=jiCTI4zE5U7BLdzWsZGv:22 a=BqU2WV_vvsyTyxaotp0D:22 a=8r2qhXULAAAA:8
 a=NEAV23lmAAAA:8 a=8AHkEIZyAAAA:8 a=pGLkceISAAAA:8 a=ozQz-O-Bz4WOD9mMEToA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=8gvLZcY7Nlvl4CGD_6nf:22 cc=ntf
 awl=host:12273
X-Proofpoint-GUID: GkJlC7XrsCo7AjUlwMNhDK_-CWyBIna6
X-Proofpoint-ORIG-GUID: GkJlC7XrsCo7AjUlwMNhDK_-CWyBIna6
Subject: [oss-security][CVE-2026-3644] CPython Incomplete control character
 validation in http.cookies




-------- Forwarded Message --------
Subject: 	[Security-announce][CVE-2026-3644] Incomplete control character validation in http.cookies
Date: 	Mon, 16 Mar 2026 17:28:35 +0000
From: 	Stan Ulbrych via Security-announce <security-announce@python.org>
Reply-To: 	security-sig@python.org
To: 	security-announce@python.org
CC: 	Stan Ulbrych <stanulbrych@gmail.com>



There is a MEDIUM severity vulnerability
affecting CPython.

The fix for CVE-2026-0672, which rejected control characters in http.cookies.Morsel,
was incomplete. The Morsel.update(), |= operator, and unpickling paths were not
patched, allowing control characters to bypass input validation. Additionally,
BaseCookie.js_output() lacked the output validation applied to BaseCookie.output().

Please see the linked CVE ID for the latest information on
affected versions:

* https://www.cve.org/CVERecord?id=CVE-2026-3644
* https://github.com/python/cpython/commit/57e88c1cf95e1481b94ae57abe1010469d47a6b4

-- 
Best regards,
   Stan Ulbrych.
_______________________________________________
Security-announce mailing list -- security-announce@python.org
To unsubscribe send an email to security-announce-leave@python.org
https://mail.python.org/mailman3//lists/security-announce.python.org
