Received: (qmail 14188 invoked by uid 550); 6 Sep 2025 00:25:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 14149 invoked from network); 6 Sep 2025 00:25:20 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2025-04-25; bh=wZBW419R3Oi9muL1
	6gAN26C7uxlaLje/9WtD9Deayfc=; b=JIuvbe1tAPFkbHKLLVRV7Rn9DD3bmQNR
	Yz5KUcAE4+YnNcct3txqVdipHJ5ZU1IZNFH7+lTdpZwwx2LR9lgowGSJteEIt0q6
	rUToQOGkMusLBU0r4PALQ9GBNtoffKcWj2UDEsXg0vedqlKdxS6u3q8Rsx3YbthJ
	AavbzJqOBIaNwZcecg8np4r1amDBaJXjVrUX3ezu0dbV9+w2ZFmvLlcUr/Tj/LXZ
	kYVDm5f44LeRLY703AaecC8UJKeGtTPOU/X8Q1GnsxRTWYj+XMr2V/7aV7oUt+HN
	hC4wVbdq/CKh1fZEwXlUL1JJM2RDjndc//zL8trUh2KU90TMh/vnEw==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EW5slGb+YGin4cuAHwDoPYTZ8isCtsU+Yo3DpXShGqN9ro+6Y9Ly5ejl2SFp/URwLsN5xi2KuEKGVdrdAUjxFtrV5gSeX8ZRFvlTvTPnqBlyin2/jMIhbHPaBWUw8TeaodP8wp3YICWrNtYWT/0RK+MnBJfkpxDbpEe+YyqxhAcOXJY1w2kAp9USfplvxw3WlhiENY0Ftcd4kr7VsuZkcS8cirExuODsImjmt3YIEemhNwmBZOBlBXums8FGzpHLPEoDhyM77RLzRBgiuSRXGe04wxPsvKni1LV5gGS/B6viYv3jaG626AslqbsZDGxcPLp7GwQ4cehe+PoE7zAh4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wZBW419R3Oi9muL16gAN26C7uxlaLje/9WtD9Deayfc=;
 b=dA1EO/41KT7/uJtpjLn4Pzgm7A5ojxA29jV8hTJwhQ7QQTpoD56gEy+k48HJav3NyhHjZBAC7o/blupmoaPatLvyXxDlYlm+WGP4nn7cYjHm11STz9+3jN2F8enWoia8j7simsHokYt4/l4EuXHQmMAFxPB8394j91sr7p3EFjtP+YYu2Y0gOQxiiEocQwrHjS8wb3pWTtAd0+Ww9jFBDXQ4L7qtTm53hrvOdR/hv2J59BhWZdyLkoV92uzTOQ748ESS/c5GEwpbp4+6doyQJ7tcPAi/IFpekqmkeIXk5XmHQW/vCbky8pPjCb8IXBMlDYnF2UriaazzOix6v3Tuzg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wZBW419R3Oi9muL16gAN26C7uxlaLje/9WtD9Deayfc=;
 b=gdgoQ3YC1FF7dSQWk73syX+c0hhAhHORHzjxEGQLazFaFumDJhS11bt7HUPzbU4Kqjb9MPQZZWmz3/6x4fX3AWt9Js8XBiSeegHsrLrFYJklDNEZtuZCY0PJAl2mj8+H+sOP12qUjr6iJDkLTQ/k3pv2TpyhZys5VTvO4zYnPbo=
Message-ID: <e183318c-31b7-433d-91b9-b4a2699d9538@oracle.com>
Date: Fri, 5 Sep 2025 17:25:03 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-US
From: Alan Coopersmith <alan.coopersmith@oracle.com>
To: oss-security@lists.openwall.com
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 xsDiBEab+moRBACDH5yKqS3wcc5bdxY7PBNuwKvF5TKMfagmSvuRDtZjjIIWaA/nZ1KboV9G
 q5g7kP7+Kfu+Qgd8u65eVsWwmPW10fXvj3aCU53glx2EdGdrHcgiyH2gEQfPiyBw+trIppWF
 RV0IDXSLMA1FNC92t2nSG/VFHaPTVwcgkIRSfcXDvwCglGdEa6f4uLqoNHP+m4yYnzapFuMD
 /R4+2AJDAvEWKDdYCGZzlawjAmmWyXrmT7/C/mx98qUR473l4buXjHgDkkXXlHqdzil1vK85
 PhrKzNJDCCmlHUJNz+QwiAMOLwpD+kwVPb57RG7y+a5JQ5+jtVw4RlUxZIk/wj2An9YBO3A5
 vR7PdjM32ZJCN2+aM4dYfNzQxQKTA/47icvBaBVTl9rztjg2pd2Aqpc1P/GsIYLGj7XjnnJv
 GAENBHSH1QjpZMJGCTS9oJ+B0/wrIr+pA+MdFgYAb6ojMQJOO6UChjWWSGjMFcs/CeXhxlLB
 ido3DtAETbNTwO6OEfAvdosvTdhJFnwvZlJ+zZGGy5CrF2Fd9PUe9tmASc0uQWxhbiBDb29w
 ZXJzbWl0aCA8YWxhbi5jb29wZXJzbWl0aEBvcmFjbGUuY29tPsKCBBMRCgBCAhsDBgsJCAcD
 AgYVCAIJCgsEFgIDAQIeAQIXgAIZARYhBEoZPAbTXnxnD6TvC6L7nggfLRMOBQJkQs2eBQkn
 DNS0AAoJEKL7nggfLRMO1esAnR4FVD60BpDY/bJp5RC1VXhOVlo4AKCJgsQeVeGLxDlMuhAm
 bcCkOjafqc7BTQRGm/pvEAgAmnlpSWGjmtSGlLqKTuymwBAU9G7Jw8ow27QngXS/86g/PTzm
 yhXzK0uPgeoIaTZlqaHWNKCWJnC6T2btXtaDHH6cElrClYNf94os5sSt8PBDh184W+NtctAy
 Y2dA1pQYhYs8/eXwa4E4cyrrQG75M+CHrbu9Se0vlERARCpNcjNYLpTXRCwNuUvAi905VJ0Y
 XnGX83WbJfNIq+uxnBa2gVzwb2/2FwKOG03Wyb1vs6NznWJle9x61y8/LlEDoBRbfIQTFp51
 R0ue8gX2yMVgh8lYVViHYCBq+cat7p8X41Xa/fN/HfBFPsf3/+bhggNgmaBmDJBxxd6BPB8Y
 EireiwADBgf/UWIxQwwRLkiXPacOoh34MJYQIBTrCC8gVFxetlbEPEH5mueZMJegAPTF52l8
 6REenxdNVz/0xT7BD6VlHHY5DowlbRca4W8eb3gpkX/wfNYDYCHtTifT7ewumTrNZx5mrbNk
 0XTJVOPAP3z7E0rVD2w/xo4p22DzIwfeGKwpHqt1b6Z9fmrRDwaiXaFmwUf+rIiGc/OFcOSe
 46HwTmIyTOt6NVdQSf75jOPbdeM/n1I5svOdWTLEj6QEj2q9UQ98UEPJuMdaotyBFwKlcDOO
 LMSL793fWINrYSskdXhHjaht5wWqI+egO2JfciI/vP1+bEzhpY9llGq+r7WG3nCSf8JJBBgR
 AgAJBQJGm/pvAhsMAAoJEKL7nggfLRMOgugAoIdhGnD9d/IS6fDVgv+4xnOXvyohAJ0VVxc1
 uoPzepWFbgvLuHIMvyjRog==
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR13CA0109.namprd13.prod.outlook.com
 (2603:10b6:a03:2c5::24) To BL3PR10MB6140.namprd10.prod.outlook.com
 (2603:10b6:208:3bb::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR10MB6140:EE_|CH3PR10MB7957:EE_
X-MS-Office365-Filtering-Correlation-Id: 38f91e29-cb29-4912-677c-08ddecdbd3cb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?YUE1T2xNcGxKRnZyclNuZ3JydjNVRTQ0Y0RQUXZub2h0c2ZjSG1aVS9KSUYz?=
 =?utf-8?B?YVlQMG84U0lNODdLTit1VFFiVGxOQlF6ZVJCZ01sb0FLR0J2c1FRZFJGSTRU?=
 =?utf-8?B?Q1V4akZYT1ZOMytxalZ3WWwxeUpmMFc4Z21SZnY2ZEFPK2gycENFZGJFKzN3?=
 =?utf-8?B?N3pCeDBBbVRsL2UrRWIxUXFaR1lRSTZMOUd6UmhBeFFnd1pHUEVjZzVaUmhG?=
 =?utf-8?B?SmZlQmlFYnhBVW9UckVNeUo1bUMrQ0Y4bGh0c2EzanA2V0hWNEhsL3l0WU1p?=
 =?utf-8?B?SUROQkNQbW9oZXZ0czRUaUtFQUxKckVwaUdGN29yM3BSTjZRSjVIR3R0b2k2?=
 =?utf-8?B?bDlmRG5mb3dMdlNJNFdubDNQZlo5dGcxb00yMGNGdVJBN09iR0p4aWpuMEdM?=
 =?utf-8?B?Y0h4L2tkZ2dYV0dsYW5zU3lsc3EwblJFSnhBUHhUS2g2eFZCN01JejQ2M1VW?=
 =?utf-8?B?TC8vditicFlPUzR5RlA3ekVtUzlvdm5sYUdKOHVCMzR4bThlV29hRUp2dEg0?=
 =?utf-8?B?ZzdydFp4OU5VQmlsZHU4VmlPdS9PT0p5Vk45U2RERmpLR3F5K1RQc1NSalV3?=
 =?utf-8?B?YVJLU2h0cDdoUUVmSHRDcEVtMjhQWW9VY21QN0hOMHlQTjJGZi9oQzBiZmc1?=
 =?utf-8?B?TzRmQW5NQVVMc3BoWUkvMlZnTHg4UWNBR3prOExKL3pnRC8vcEFURWxoa0du?=
 =?utf-8?B?L2hWYUE1MEY3VWl3c0hvSEd0UjB0OHBnd1htdVp4ZWorV0JjWWtqTkZWQzVW?=
 =?utf-8?B?cW5vT2VQWEFLbFV0Uk9scnNlT21OMEV4UzUyTkZaOFpqVXEzbFZmdzFLME92?=
 =?utf-8?B?Q09JVlFoZ0swbFFzN3pMdXRxTS93ekZocEZXYXc1bU5wK1VSSU1nR1NQZDMx?=
 =?utf-8?B?czdUSlBEU3A4M2pYV0hhcHFSQXRobU91eUpGTE5RWStueTYxZngzcWdMQ0dn?=
 =?utf-8?B?MWV5ZnV0R2o1eEcrbTN3RUxFR3E5Z3JtYWFxWTUwVXlHU3RmdERiaUxGUVhq?=
 =?utf-8?B?TnJBNTFnM2NGQUFLT2x1dmR5Nno0RVhZSjlGSndKb0lvZ1V0UDQ5d3JPbXVv?=
 =?utf-8?B?bUplRk5oT3A2YTBzaWV2aERqQ0NWSmtBcjZvNWxxQUlTV3NFemhPOUhiUjBh?=
 =?utf-8?B?MjEwektPRi84MjhmRDdwd2JBR1dnVnU0N2d5WE84aVZrUlQ5dFBVWEoxTXdY?=
 =?utf-8?B?dE1kSmtuRjVIQXpVTGVDSHljSnJKT2dsRVA2K2IrdFYwV2hzTHN3RDNWV0Iz?=
 =?utf-8?B?Y2ZNclphbzFmbFBkcThuQ0xNbjJ5Y1ArK0VtR2ZoOUtmanFEZzJnRkp1ZEJh?=
 =?utf-8?B?UHhGbTJ5UENjTUIzb1Q5Y0VwTmJkMlJyNG5BM1ZvOTNFMitPaDVaR0pxanBs?=
 =?utf-8?B?ZWt1clZLeFZDdFZMTnFCQi9oYm1CSmhDNVZqZlI3WG5Yc1BiYlZyZ1FNTENo?=
 =?utf-8?B?RTdrb1lYcFNZYWdNQ0hIUm5aRGhJOUxtdTNVakZTQkJQamNoVHFoQjllZWNj?=
 =?utf-8?B?N3RTN2M4NS9MWFNTU1FxTjZNOE15L2NqcHZqRmlsbDVySG56cG5YL1p6SUNQ?=
 =?utf-8?B?VU1vTDZDbHo1VHZ5Slp6UzNQSUs4L2d4ei9yVS9jNVUwNnhWUS9Kb1JpN0hr?=
 =?utf-8?B?ekVFMTlqVVgrMmgwRVU5ZVVuRVE1YkxXdnYzTWJ3azQ1K3hOQVlnL2lzRVNj?=
 =?utf-8?B?dmk1ck5uRnBzZkV2Y1hsTCs1YkROYndLZnphNXFEaUJRUVZON3F6d09PejZm?=
 =?utf-8?B?ek8rQTZiYkp5blprR1ZvSDJyMzJpMXptWXZFRklHckh3RnRKTkE5SHhwRy9n?=
 =?utf-8?B?Q2pqSFprbDZiOVgwSTBiUUh6UDE4QkRadnJaWFg4SDY1bnFnMEs3bitjWSs1?=
 =?utf-8?Q?zk+qx5ZYYcAe2?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL3PR10MB6140.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?SHJvTzEvQ24zZThzcFRZTFZpbHB6ZldRM3BaUXN0TXhib2kxNzgySi8wdG5J?=
 =?utf-8?B?cC9UQ2RhdjJER2UvWStMK0JrMVVKbEFJZXdUL2pOYXV2cTRQMkV2OWlzTjVj?=
 =?utf-8?B?REluN1FlVmhIdlRlajBoakViZlF5RkxNQlFxNlJtcTJCRHc1VW8wZnU1a1M5?=
 =?utf-8?B?enZJWGRrUWd3RnZuRnlSSlpnRFRJbG91bTVSbjllZ3d5cm9jL01NRDZVeDJS?=
 =?utf-8?B?SytNQVE5WlV6QTFFRXZ6dW9qUGRFZThpV3NKazEycG5QM2RXQWY0dVV2d2w3?=
 =?utf-8?B?WkFwaW52V3paMkVDYlFqSC90d3l6dWRVd0tnZll0bjBjNWtQb09FckltTWdZ?=
 =?utf-8?B?Ly9Hc2MrZk5hSE9HWEx5Z0xLbkxxb3JKMmpaNXV6Uks4dEE2VnNtbVhIUURR?=
 =?utf-8?B?QmlGUjI2VGpsblMvbUtDV3dTUytvV202dzJmeGxmMzduMTZCT2xycVErNHNX?=
 =?utf-8?B?dEYvWUVpeEZpQ3VjMVNNRjVqcmE4dlFXekx3bjg0OTZCamZ0bFE0aFdXcFhF?=
 =?utf-8?B?aFJ1VEROOUxUb050Q2lub05FRGRQcUZSYjF6RmtPajRNbVZaNFVBak9OQ3FK?=
 =?utf-8?B?Z2dSWmlwUng3dExMRWJkMWc2Zjc4c2s2eS9SZzRvY3l6cWVhUEVrcEZaSTk2?=
 =?utf-8?B?bFFwZlNiS3ZSMUJLTVhISnlzV051eXB0aEtySmpybVlRdG5ubDdwam0rQ1J4?=
 =?utf-8?B?TUs0QVdGYnd5NllKblFjQVZyTER2d0tsMVUybk13WC9LQUpCb0V1eVJCR08r?=
 =?utf-8?B?MTJSVUEyTHllUktlb0JlcFg4Y3AyS3ZabEV1MXIvQ2l5bmdIU2t4WTZtem9G?=
 =?utf-8?B?ODZaeW1WVGllWDB4NVg5QndOWkNmTHVIQS9QSjNUQlB5dVlrRlEweDM5UFdS?=
 =?utf-8?B?c0dsZ3M5MlhTVFpob29EL0dVVzlhVGFNR2tOTmhTdUNUQ2g0eENQWWlVM3BY?=
 =?utf-8?B?enBhTDFHMFBhUVpkcWx0UFh4SDdOd3VFVlp4aVB3c0dyMlNpeTk2WTlHTUFs?=
 =?utf-8?B?QnBtMUl0SG1NVDBtODNTVWdVZkJCTHBhZ2U3K2VvZEZOTFRTMytyVkxuaS9s?=
 =?utf-8?B?QmVjQ3l2eG4wd0daeDh3OFpwRWRscUdabUsrUEs0Rms1aFJaRTR0UUE2bmw5?=
 =?utf-8?B?aXlmVWNoaW9nb0ZYSXpsWldTWGQ0N3N5akptMmZMUTZ0YWgwWlEyTDRteFhI?=
 =?utf-8?B?WS9hUWtJZ0hsQUYyeXgwS0tWMk5EdjVrdWpyZllxTzVMM1ZEU0hJVTBuQmFk?=
 =?utf-8?B?UHpHa202SXNtQzNBTkQrRjVMSGxOVHBQZkxUbXlwNzFCL1JHTXN2clJJRnJq?=
 =?utf-8?B?bHc5a3hrQ0c3b05oTXR3eFdPck1XZm9sdE96WmEwaWJYU0EzekFnbVl6U2RL?=
 =?utf-8?B?Y0NkUENYdk1mN3lTbzI0RXZFQzd2R05oSnZyUHU2VzhVTWUxeVRkZkx4d00r?=
 =?utf-8?B?YTByTzMydlA2UTA5bGNzQkViM2Y2S1ZpUjZXRXRGWmVXWmR3MkdwbEhndXBj?=
 =?utf-8?B?aXI0T3FVbmJpRjNtUlNBR1hvMVZ3aklJRStza2w2WWg5TDB3K0MvY0haZXYx?=
 =?utf-8?B?ZGFSekVnUFlHREpid3BZcWwzOVo1QVVhTllpTzd4N0prdmpQQnN6cmxOVzRj?=
 =?utf-8?B?YlhVQi94c09iRkgrZTMrS3BxMy84YmlITUllakZjbE5xZmI4RWJvY2NqM2lU?=
 =?utf-8?B?S3hKbERpbk9VVmR0eTFqKzNKUVl1WndwUEdpeTJ5RzJ3MXpWbFRSeXkyWWlS?=
 =?utf-8?B?cXpIRzVaQlRtZHdCUktLU3FER2srMmNpNkZ0OGJoM2xrTEh3RUhSeHZpQlo4?=
 =?utf-8?B?bTNtcExMdXIycXZQbjlCekFEczQxYXg3Q1VwN2JuMWg5eGthOUpNVWtEQVNH?=
 =?utf-8?B?QnJ2dGFzOUxnZXdTZkNBcCtadVlNTXV5NjVWUVZiVGlpOW0wVWhJNGRCR0ZD?=
 =?utf-8?B?bmRyVU52VFZ5M1h5cVhOVWlJV1RpbnFjaElndTNKd1U3Tk5CSVBFeFBTQkNP?=
 =?utf-8?B?blVTNGVQVWh2WWk4cy9mOWJMRUlaTkpIWVRPOWhxcHFmYnB1aFoxTDk5alU3?=
 =?utf-8?B?enoycGVqQ3RFNUpiM3R5ZnhDWXNUQlV1TEJOM3RFYzdSRDNpZEJLNEIvSEd0?=
 =?utf-8?B?a21nelE1QXpWbXl4eGx5c250TCtrV1lZRVplL0RmdnllTzB0Z3crYmgxaHZ5?=
 =?utf-8?B?eHc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	AGUHbuLc3Jp6bGrH9Q73cdvGdiEClWhMrDi/BF9zio52zV6bRyiWC/AUsqM1Zco+ofgzDaaXc834T/Lbxts/Bid3Fmc+NpLX6d9gyVq+/ac3ceCT3qZ3Ftre1Oh+8A+gAeL+YHaq/PPi8xxUUvlfsHceE7KXNPw8CgsHrDYeKvs6in8ZLUJb/3M8AW2fIqbsqoXXws/n+hBYx2Fcop82+K4JUwCdt519ndEPMXyJzPeokxM5DTE7qAZdBO56ZXEbKNGXdZ+XjhBUZmX8ssVY03nWNQPZckrlfOQtLIEDChtbevlewvSEokC5EN+ix5ZmggqEb5a66P0+uP+2/WnRQSoFkhobgb9N6IS5/qO77CvmM8JU2M92EHFgZyXImPcvyr/DVTm+kYzwzpecZjwWXz6xD+G6+Ew4KB71y7zf72XfJMq7HTGDAhpPlbrNxaSJakcTSZofgStlWZ8hRePms9aaTK5W/zizJ+Gd/2IlfsjCtd+qiIFjCPzlwtAXjpon7LqLVnFg6vaSEGf+7QL0UFK3FBEuXhNiFDHOE7YGnh739TGlzq2H0nRwBqyk2nLn1qZj/y6fu7bXacWDvKo6TQ/xvhljD/KD3dNwrQcwcHs=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 38f91e29-cb29-4912-677c-08ddecdbd3cb
X-MS-Exchange-CrossTenant-AuthSource: BL3PR10MB6140.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Sep 2025 00:25:05.4982
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: enGs8cIHvGPCjYOTNG/edxJGTDXGptwVeQniZYEpGgMSkHBufZsprnj5gmljPK2sAEKHLVIk+CA1Oe06r5qk6q2zbRcACzswWLlslx8cSA0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR10MB7957
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-05_09,2025-09-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 adultscore=0
 suspectscore=0 mlxlogscore=999 spamscore=0 bulkscore=0 mlxscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2508110000 definitions=main-2509060001
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA1MDIzMSBTYWx0ZWRfXz6yEOtGViH/M
 re6GEWHOSp0KI5aZSt6dwdWkykNdEk25aOawmx41Sk3n6e77ONi0lrbf8C6Tq0TXpHpQ0I2gzuw
 A/9pxAUTXBHgWKhQI/S/TPHCRJ17Ghu7dZATQuaPA5SntmYnQ2aaCslkMZc0tvfc7+MEIV+JkCw
 fc/7gh6uq7ifzbAPglcHjJrmdkNtTUAPfadp1/wnKZTHqQL4pKCv1n8B/Hi8NgEDvSWFOsw/bQF
 Bp2IZ1nBdpwUz1kgTKzGe8MDQBFANgqARKuE77Vwoo3yEIg1Y/ZmlJBV9d707eSFyxdrGOVghT7
 RUrUFWH54EnRUmY3h7cnOEdp4zG/y6QP6KXUgmf5QKKe8XgewcaNcvwKErOvR8YnYmc0arxg/Ln
 aKKBqfSi
X-Proofpoint-GUID: lYk03ogBxQMOtQOhZFuoKADzUMiMpH-c
X-Proofpoint-ORIG-GUID: lYk03ogBxQMOtQOhZFuoKADzUMiMpH-c
X-Authority-Analysis: v=2.4 cv=XZOJzJ55 c=1 sm=1 tr=0 ts=68bb7f66 b=1 cx=c_pps
 a=WeWmnZmh0fydH62SvGsd2A==:117 a=WeWmnZmh0fydH62SvGsd2A==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19
 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=yJojWOMRYYMA:10 a=GoEa3M9JfhUA:10 a=mLKua8RHAAAA:8 a=NEAV23lmAAAA:8
 a=yPCof4ZbAAAA:8 a=yABA2ZnWbmAhTemZeaUA:9 a=QEXdDO2ut3YA:10 a=cVCl8boktDwA:10
 a=ewTM_9iNE6a0vsrYD_ou:22
Subject: [oss-security] SQLite: Integer truncation in
 findOrCreateAggInfoColumn [CVE-2025-6965]

https://sqlite.org/cves.html lists CVE-2025-6965 as fixed in 3.50.2
(released 2025-06-28) with the description of "An attacker who can inject
arbitrary SQL statements into an application might be able to cause an
integer overflow resulting in a read off the end of an array." and points
to https://sqlite.org/src/info/5508b56fd24016c1 for the fix.

More recently, Google Security Research released their report at
https://github.com/google/security-research/security/advisories/GHSA-qj7j-3jp8-8ccv
which states:

> Summary
> -------
> An integer truncation vulnerability exists in SQLite's handling of
> aggregate queries with a very large number of distinct column
> references. When the number of columns processed in an aggregate
> context exceeds 32,767, the index used to track these columns is
> truncated from a 32-bit integer to a signed 16-bit integer, resulting
> in a negative value.
> 
> Severity
> --------
> High - The exploitation of this vulnerability can lead to remote code
> execution and potential for significant damage.
> 
> Vulnerability Details
> ---------------------
> 
> An integer truncation vulnerability exists in SQLite's handling of
> aggregate queries with a very large number of distinct column
> references. When the number of columns processed in an aggregate
> context exceeds 32,767, the index used to track these columns is
> truncated from a 32-bit integer to a signed 16-bit integer, resulting
> in a negative value [1].
> 
> In debug builds, this invalid value leads to assertion failures
> [2][4]. In non-debug builds, the corrupted index is later used to
> access an array, leading to a heap-buffer-overflow. In sqlite3ExprCodeTarget,
> the out-of-bounds values are used to construct a potentially invalid
> VDBE instruction. In agginfoPersistExprCb, the out-of-bounds index
> read from an array [5] is followed by an out-of-bounds write to the
> same index [6], leading to memory corruption.
> 
> Timeline
> --------
> Date reported: 2025-06-28
> Date fixed: 2025-06-30
> Date disclosed: 2025-08-25

[See the above URL for the code excerpt that the [...] references point to
  and for further analysis.]

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

