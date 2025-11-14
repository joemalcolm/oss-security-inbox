Received: (qmail 3751 invoked by uid 550); 14 Nov 2025 17:01:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3712 invoked from network); 14 Nov 2025 17:01:19 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	corp-2025-04-25; bh=ibPqGURZ7isqhbEiwAocD5nnverwx0y7G8XGxDW7mfg=; b=
	lp/8x1PqmHPGkKt0aZwaYs3KvasRK/1WTNGL6xWytRjqf5Sd8iKd6UL0ly2B695b
	zz+MXgH9tlzr2uKKJg+a1SB2xK5eirIPel9zvdZxZBu3golOKPNjD6zsCMtj0Lef
	5rvX+E5D37AO1pwVIeFU9NOh+BV5HweCJ52tRANTALBO9HYBj0/AP4Nf74YzjAwg
	5C3I3+tOzoajxPmiylZ7DBrtkLZ2XNQI8MS0z603EzUbFn/aTxmh12nVdt6+cDVu
	Go+r4r4zamtnqCVOGzrt0P0eGBsZshPCEm1EjkYdQD+CoccngrxJ2IjdxGvKLKE6
	GwqE4SMHtp+Nxy81y60K7g==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=upiUljeB5LjkPcdlv5bH+x9J2zLkGYF0Kxcc6dC+V3062vQ0Vb2tdrFG9L+R89/qDoBKeVhT9nAj7YhtejdLtFHQ502+UjoW9BGIMi/0p/0PZaeO82DmsoeH//ZRCznBYlgVaZ261FNyobbSGb8pTIOvUGapIGgCrGiXjb62Tr9by9rGsvKCijTSx8sJE6eke5yHixgRpTCL2iWRcivX5218umI+7z4znCmD/pZzmkS07yKHJgTczFgtP1LXjhVciUpB+TdOEmsqdznoy2kS5Lnl3IfxKN0Io4EQdDSrkZo988VAvOJaLKJX8MxcqnZG4ndv2X/Jnv2aevAr6qDg2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ibPqGURZ7isqhbEiwAocD5nnverwx0y7G8XGxDW7mfg=;
 b=R3kkMtP3oNudlUXGfZLLoZCnJcu7BwE+gr2vEQUX7qp7cHqfwjv7q2kMMoDgg5hdWIBRB38KUWYRlei3mniImSwq5oxOjb6HcEgLdsrPINHV9iYpvvjYaKCOrznVvi1zCY25kF4XH9JfESpJMNwU6RUJtyTc7+rBJLILC9XlgdZ5o0TA9hXmsJ3fZpoQcg//GvLUsYFQ48Pzm9p+3Q7o/5XU2IuJNJBkEnYIrMk+EZzMiC5hOzfA4iungS7Xh6i2AXa447wbwFsMyRAX2heSsaOVVDRClmTJZ3d7KawcTrhe8uUhQ/so5lKMykD/+SG24UuLYkT/adL5MbX+MqX6Sw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ibPqGURZ7isqhbEiwAocD5nnverwx0y7G8XGxDW7mfg=;
 b=JR96AYhKIQr75Oe2N7WW07/onLMXy2rEN8xmTpJkC2RDtKz6nXZxaRTgVEMI4HxJvZDpaAtabhiB4R7no8r1VaJEKH4E9iFm/6nsSUG0g4SSDMpVNI0QNibsR9Qno8ZXMw5gp2v+D4AQUwSNreGqeYRYFuRYYSpHSsoCNqqKQig=
Message-ID: <a6aa04d0-eb96-4d87-b7d4-b37838b05ce0@oracle.com>
Date: Fri, 14 Nov 2025 09:01:01 -0800
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
References: <70e25a3d-7652-44da-8e4d-4e0a2e3a7a63@schafweide.org>
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Content-Language: en-US
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
In-Reply-To: <70e25a3d-7652-44da-8e4d-4e0a2e3a7a63@schafweide.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR21CA0016.namprd21.prod.outlook.com
 (2603:10b6:a03:114::26) To BL3PR10MB6140.namprd10.prod.outlook.com
 (2603:10b6:208:3bb::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR10MB6140:EE_|PH7PR10MB5698:EE_
X-MS-Office365-Filtering-Correlation-Id: fc452581-4745-4782-0a51-08de239f651f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?MTE0SCtxZDg1bGU5THZ6dTVFZVRKekJIOFZTaUd2WTZWVzVNblZNTGNVa08x?=
 =?utf-8?B?ODFXai92SzNoaEZiV05LcnRVS2xzVk1xbmNDR3UxWEo4eGdQK21rQVlIMW96?=
 =?utf-8?B?RW5jTWpOdjdvNFhZYm1DTjZrdFpVSXZ3TmJCY2JkalV4T3VZZDNpby80RGJa?=
 =?utf-8?B?dFNqRXpSMW1BSWtJWlhjRkZQbGJxdkp5MSs5bnFjMlp4SGE3RHJWSFVITmMy?=
 =?utf-8?B?bHJVRkZ2WnlUcU1Tb3R5bFpIc2ZoeFZiT3N1RC9YaS9zeTVvM2Nvb1VqZkFO?=
 =?utf-8?B?WE5SdFA3eXQzcDhtU2NwcHlkdjltd1dIY29jNklDZ09xZWRzeTJudTVVMFFp?=
 =?utf-8?B?dWpXcU5WaTNMeWFLb0NhTWY1UVhUQUtpdEg1SFFDTmJESWpYWUszTmZSY09T?=
 =?utf-8?B?eGdoc3FNQ1RzK3hhaEIzc2RpUUlKUGphZVoweW9NeWUwMzVBckFqQXU4WWRP?=
 =?utf-8?B?MGN2cmMwdjR2OHV6SDV3VDZZcWVNY3VJTTB6ZE9JeDdYckdEVkFxQllvVnB2?=
 =?utf-8?B?a0VzeHhVcGlub1V1RXVHTzlobkxwZ1h6dStPWFI3WjBmYThQMFhyQ2JEWWZW?=
 =?utf-8?B?Ynppdi9SaE1mdk9vSmg3d2k3V21ML3NXeGlNbWpBNUdvR1QrL1hiQzlxUUpF?=
 =?utf-8?B?ZExRaTNoYndwY205M3B3V0s1VzFoZXZqUFJUeHQyOTMwVXVZdEtHZ3IveFBD?=
 =?utf-8?B?WXpIUFJiaE92TWFZZW1TMzFTRmFMY2hBbms2eFZxR2k3NDNRcXdEUWtGVFlN?=
 =?utf-8?B?emQzWmVLNElsY2E0bkJhNXhlcFJKcG9OcmJWdkkxdlkrTUYvVXEwMUlyci9S?=
 =?utf-8?B?cmo0QWVtTmhmNzZQQmRiQVhRT0FRY1NOREtvSXg4WmFJN2IvaFJrcFM5UzBl?=
 =?utf-8?B?eVY0V3d1NDFNTlVoMjZKTmJFM2Z2bDNQYXpqODJRZFNvSWhnQ2U0UjA3RmQx?=
 =?utf-8?B?T1VLR2FrUDkxdWdoVFdUaXZNYS9sb0hSK1I1WVVmbUNBWEJTT2FDdUlkazY1?=
 =?utf-8?B?Mk8wWUgvN3V1RFhsNys3UjdRUXFKaks3a3FoKzN2OFp3MUJwV3MrWGVTcG0x?=
 =?utf-8?B?RVl2Qk1PR3IzL0UyVE90U3hnOEUzbHQwWVRnQ1EyeFFZMk91aWM0aWFGeEVi?=
 =?utf-8?B?Y1RrVmxzZmxEZVFsNGVvQ0dxaURwV3JCVUFQZzhaU3BjRFV4N1dCeTZmOXNq?=
 =?utf-8?B?cjFycEdpa1E1K2IxWVphVWFMV3JtNm83L0pEYWEyRW9TMkJmUDZwTWpuMlIr?=
 =?utf-8?B?N0t6dUlwTUIrTS9NQXBubnZNUmdMTVNPV2lTdDBGOFN4ODNsRkFBVkJtM0E4?=
 =?utf-8?B?Q01GSzdpOVRrbFUvWWVpZ2pIZHdleDByaFZOQkw3eTV5eklnTDB6dGpQOGR3?=
 =?utf-8?B?OUdOWjVIVGtKcG9YQnJmbmpDaUU2bWpVZmQwM0FLZmRuSmJHUTNkdWxabXcv?=
 =?utf-8?B?VHF2b0FXREtEY2orTEFBRmgwa3M4REQrOFh5SjE4b1pkOUk0aG9WenNzSFR3?=
 =?utf-8?B?b1JzdHRTNlBGaTBrQVpnNERiZXVtaHNCd09KNnoxeDZwVk1vSDVNb0tBZWVn?=
 =?utf-8?B?dWNPWEZES2RqUURZOGxhZ3V4eGxpVmpZUVJ3V1RZTFFadUU3eTlubnl1L0pE?=
 =?utf-8?B?SWR1RzgyWERsdWJSYm1BZXFUUWRadXd4bXZxZGFKUnBPZTBibVlqVkZ0ZVBp?=
 =?utf-8?B?bWZIbUd3b3E5ZUtVYWljM3kzQWJvM1FYZktKMjFwVldUd01vRDdKcnRxMk84?=
 =?utf-8?B?Z2laUy91M0VTQVladkxHWnM3azJGWUIwRHhkSmRHK201RGMzQzJoTGZNcFhZ?=
 =?utf-8?B?WFdMNThrRWoyTGFUeFlCcG56ZVdOd3IrNkdiQkg5RFp6a0NhL3BFR1JjVEZQ?=
 =?utf-8?B?UlFBRWQ3S29ndlpHZi9XMVl6YnNuaXdrOWxmUHVhcFdib3JmeURKNFFKWWpl?=
 =?utf-8?B?WE4xN1hIb3hSdzNvYmtrNkd4a3dsU1RPYWhlWWF0a1FVVkdZUDY0bERZVG81?=
 =?utf-8?B?eVBydExXbmhRPT0=?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL3PR10MB6140.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?M05tS29JM05aY2lyV3N2MGRuaC9RbFU0YnpXZmVGZkdYa2tFRExRd3NpUGpw?=
 =?utf-8?B?TTd5dnJNeno1TVlab0JWL011ZHhVKy9FbXRnbDVjNE03cUpXa0JtZmNvRjBl?=
 =?utf-8?B?WjkvNXNDbzBaWktLTURMZm5vVW9YZTFkNEZwNjZPcjNkVVFCMjNyaWpkL3hT?=
 =?utf-8?B?eWczbWZGWXBIZmF0cmRWNEpzdTZscm5HT0pQQmpqdjJqQ2lhYlNVekpGVDNP?=
 =?utf-8?B?VEZvZnduSWo4dEVrMU9ldDQ1ZEI3b3hHMjZYMjBuU1drSEZXRzhCUE5jWjlt?=
 =?utf-8?B?dzJxTGl2SG9FS0o4dGdlbk1YOW9pRndsNHNUWVl4eW1FY1JmTnBzM0Y1enBJ?=
 =?utf-8?B?S3RhMWhEa2ZMZ1R2TjBwVlZBT0dqWGkrdmZGanNpZzIyT242N3ZGN3BOUUw5?=
 =?utf-8?B?UmJVMmdtbStwM3dDR0Y4WGR0RmJhNHNGaUtXd1NGVVZBNkQ0TU1lZUNyTzZR?=
 =?utf-8?B?VkNZbFBVeXRJcjV4L0xFRzlMS1RibW1LUnpLNTV2RllERzMzakgxeXN6Q21K?=
 =?utf-8?B?WkxONk8wTWJyN1pKWm53d3haTHl6dmlmTU1uTk4zQlRoOHhEdzY5a2VGUVRq?=
 =?utf-8?B?ZVd4SEttSEczSll6b2pYSXlmWlpiQ1hjUkVaTHlXTUtxV3M1RFpLL2ZERGF1?=
 =?utf-8?B?a2NIUWdCTTVMbVJ2R2ErM0Uyd2NNb1A4U0Q4Q0pKL0VLOWdSNkhxaGtDMk90?=
 =?utf-8?B?dWN2eFlmaXhQaFU4TDIrWVk4ZHNqbEMyaUM1dHE4a09ndG1UWVloM3JVTnNW?=
 =?utf-8?B?TWVZNGE2MUV1ZHVmT3A3SFo4R1ZCcC9pYUNCZTNKNnJ0NnVCMXZvcWo0d0xq?=
 =?utf-8?B?MFpHRjJ2T2d3VmE2aXRCZmY3TlBmMWxJQ3U0dHkzRXU5aEJvdzRyYzdVWitz?=
 =?utf-8?B?Ung1TXRkeFp3Slh2N0FKeTNSRTcyOFpEUFJHYjF3NUlNYU96QUZUWDRIU2Rz?=
 =?utf-8?B?d0JIa1RpRnBNVEh0Zmd0U1FrTnpvNk1NUmRBSDhwU1hWMmZva1pBZ1pnNzRy?=
 =?utf-8?B?SWtEeWMvOHNqWWRGQXF0dTJsQkliTXp2SkdiRXFzcURYMG1Ia0xlMWhOVmJy?=
 =?utf-8?B?MGJmSGloQmVhYThiWjRSTG1LR0NnaTJUb3UzQWVteHl4ZkxnYk9JSkNKazVx?=
 =?utf-8?B?bkZuQ1JsR3ZwSDNmQXBIZlB6cGtrKzFkSGJIdk01YWJYb0hUZlhZWklEQXJQ?=
 =?utf-8?B?bjRvMi91YWM1aFFyc2NuV2JLSm5rSlY4UDFteG84aW96Zms3MFNkRnpTK3ZV?=
 =?utf-8?B?dnZzQjNJUkQ0ZThCTVhJQUhHZStnOGZ0dWc1alFLNzk5VHFkT1U2Z3Zid01a?=
 =?utf-8?B?bDk1M0ptUEg1NXkxOVNrVUVGMElzVEczNHNEVTMrbFVlTE5ZYldicjhMRUtN?=
 =?utf-8?B?SWEyc29IOWdLYjM0TitscUFXSTlxeG05TU94RHNNZWlDTDNvUTAxVlRpV0xu?=
 =?utf-8?B?Vk0vSC8rMHhoczJ5R0MwZjdrczVzaFJ6endSTXl3UEtuSmphSDE2TG9UTFZa?=
 =?utf-8?B?ODM5ck16LytHMXJFV3BaN0FLVE9RaUhWSlhtclpTdzl0Qnk3VjNPOXk0TGY4?=
 =?utf-8?B?bmtCZDBMZDFUQnM5S2xiOThHV281eEhlY2JXZERJK3FYRU1kVnhzeExDSlFO?=
 =?utf-8?B?cUh4NWhPekFTWC9DK2p4K0hhbzEyK05NbDcraEk4UzlHbVpxZEQrTlFZbkk1?=
 =?utf-8?B?aEdGZnoxUXVoSWg0UlE4d3dFRjUzNEd1ZGxiR2VHTnBYaC9XOU9aR002b2FP?=
 =?utf-8?B?aElwNStUMS9VTzBqdmZ1NTFjWjI2Y3d0WDNzcFdrNi9nTzZEQ2Z6eTE4WlA0?=
 =?utf-8?B?L2c0bG5jUDVoQ3JkcFl0UzJYZncvMVdkZ0J6SisxTlFWVWlyT2orcHVOeGJt?=
 =?utf-8?B?ZGFpLy9EaGlwcjVkaVRXUURwSmk2MWRtL3YxdUFiZGdOTmRzRkVZUk9pOUVZ?=
 =?utf-8?B?ekZGOU9WVWN2d0pUbEpyT3c4NU1ZcFdKWTFmVjBTU0k2aml2cUNDNERxdUdz?=
 =?utf-8?B?dTIxUG5UckpOb0RkRDdOUG4xWDhrRWpndGFuNE5JRlhjeEFMUmxJNUo2Mmtj?=
 =?utf-8?B?L1lTUEJ4U05WL1pSUzUvWW9MY0V0eDFHRHVJS3RNME5SMlVPMzgxU0x2bXJG?=
 =?utf-8?B?bk9ZeXhrcnpEeWE4ZFJ3dE1QWnUyWk5KL1FFbFBmVkxhUVVjYjBudXF5RE9m?=
 =?utf-8?B?aHc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	LXAcsmgjZNVzcyqb7faBG5azbkvgNfFs+AKEO3uRJvV8CBY7+pLzZoVJqEZiL+nF39eKsWRSQ0HX3aKxmV4cpuHL8G1ol1flh/YVC4wxBgc5h2twVGLXMXqML1+uuU7gaOPUtMwQPo/kMTUyA02ly4tpt38Floku1jEcgx7yYcoOWUojLscjGtI49b8Vs3hBZQ4l0Cx2T1iyL9Re/LPhGKmbefxjedRd6VPKtp3eHArJCr7YKUWiVLE0tyBebxCMypFTcIzN3PyA8a6I3WtO+r2pxnGeH20MvGkca9AE9tUH/PNEPJlcVx055/maiMr11TK7rklmrvyGiOMl81lpf1oc+MnSUwEHz+DfSEInDZDsKg7Sk5kNAhdYgbpCwQewTy+Xgf8IneTGhbbpHkMUyeZWmjY9BZGGGkuY4xclsUT6K49lJ9Dt4wzpeIoZ4xjzGtTAyU2QZ/Uqr3voa1IPgXWSoIh1yEoG9TR8MihFMZRc2+IHRMPuykvQ8zmYg6mCaNObvNKrskGORS+BgATJL8ImEsBOh9LvF0NsgTU50mnRuF2rLiDoECBSYJ4AcJJidpI2DCRyhP5DxYd1ByDi+o78fr3bUyevOodEX0EQ3CY=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fc452581-4745-4782-0a51-08de239f651f
X-MS-Exchange-CrossTenant-AuthSource: BL3PR10MB6140.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Nov 2025 17:01:03.7898
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /ohDKn/h7lgkmzWA8Wk744Sys13sleKOg7717aPEMjkYI0cCxWy9jqcVhpnq3GyOeAkWEXMXciVG7Sm+wvhBONELMLgX2vyaKplXW/vGvcc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR10MB5698
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-14_05,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 mlxscore=0 phishscore=0
 mlxlogscore=999 spamscore=0 suspectscore=0 bulkscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2510240000
 definitions=main-2511140137
X-Proofpoint-GUID: 2x3rIMFKYOS41CV1ov2IcC8IGof3Vcpx
X-Authority-Analysis: v=2.4 cv=EPoLElZC c=1 sm=1 tr=0 ts=69176055 b=1 cx=c_pps
 a=WeWmnZmh0fydH62SvGsd2A==:117 a=WeWmnZmh0fydH62SvGsd2A==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=6UeiqGixMTsA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=yPCof4ZbAAAA:8 a=G79l6xz9ehf3Row9aBAA:9 a=QEXdDO2ut3YA:10 a=ZXulRonScM0A:10
X-Proofpoint-ORIG-GUID: 2x3rIMFKYOS41CV1ov2IcC8IGof3Vcpx
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEzMDE3OCBTYWx0ZWRfX7u9aI8mkJcdq
 oxGV+HztNSCKFM6yLBIU58BW7TSIAm+S0Ij3Z5ksd3G6HnGFKKjisosmpdnUIOZ/2C5D24j2EGK
 kTrsKNc8aNnz1NH+snFAC3RWlPRBFn0FTjUYcpogsnjoHgXnZ6ZhyWgm5F/k5oTppFDMZCf7xfj
 SoQWwFKRb3vTYlLbOodXYxgT6kXL6yoirKyIV/LZFKS444kT+Yt814rWWe6tqnHJE3D7T5s/KvF
 SWEL//sKj2FMHFcGXzUWyuxukEw2OWrCQmRN/N4m5wd4Hb1aD5O34JPZav5sD1XK8sW5meBwvmo
 T/HkhwJSoRPP2gWRA5rpUdeGdSfOuhsRHeGRVzstipkAQS9ykrPHytfeZ3rjS42YTnfCoHICxZb
 lnHiZcUeX2TBP09s2Ti6/JHbh2D6Qw==
Subject: Re: [oss-security] CVE-2025-40300 / VMScape

On 11/13/25 23:48, Bjoern Franke wrote:
> Hi,
> 
> I stumbled at work upon CVE-2025-40300 (as it caused Ubuntus USN-7860-1) and was 
> wondering that it wasn't mentioned on this list. Usually CVEs are posted here 
> before some distro specific fixes appear.

The CPU vendors have their own methods for alerting OS & Hypervisor makers of
CPU-level security issues in advance of publication, that don't flow through
the distros lists or this list, so fixes for those often happen without any
notice here.

For other CVEs, it really depends on whether the project includes this list
in their notification process, or some volunteer notices them and forwards
the information to the list.  Many still slip through the cracks.

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
