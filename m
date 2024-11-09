Received: (qmail 18122 invoked by uid 550); 9 Nov 2024 18:45:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 18086 invoked from network); 9 Nov 2024 18:45:56 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2023-11-20; bh=gNUpCvJR6R3tyIGo
	h560/VDIXh/Yp2TxUBUoWVeL0iQ=; b=dB7C1DQbOpCRz2ZEzVRNPEOJU5iUu55Z
	5S7J6M9KLR9JGsYMEJXy8bRxs5SplPU7KeFXbZzodWTkOGAuvDGJY8QDjX9LWiF+
	26nSrD7vYwxdP8X8dtBwtpThoF2cSPmhwfaBgwgi2/BnJYVMqSIdREw8m1XBY5ge
	ZaS/Onb2v6eho4sGn2lS1RoXP3MhQBYi3G6IlErpOu4dbP95tuNrNeOaKS5r/dFi
	7O8QgW7GikCxsZrYe8GKazXeu7AIPPYUw4UjvvLforBj5vgGukqPhO4u6nSMv/Ox
	sPly+brrtVbEgwGE9WHbF3X6qPjuIM245cz3RDiDcCMopwuofPmLAg==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VkoD2/9YEsMWuDG7Y4wusaCvzCX6YIQcv/EP+w3eV1me/6R/UsLex+uRocuZ9WIxB5eGGPIJxwUDWNKyrfKayonP5YsVYf6bI6wZNPAWZwetDXvU2AFd96v/DrtkuxrYwpS3gMDKEZD6wGg1H1TypB2ZXbc8Ckzbe+MzIEfpXXAhQl6IUNLMstF0g/UlPR/VHSM0QByLC7tkL6oK5DI+bxcvzBhOQFxHCYrUlk3T7svTBTcGClDg42D74hewCgnp59LdP+UFnM59w97vliKBRimXz3CH2I/Dohk8pJPiTA25+h59m+GTqVneTEoi9HQdqaaxQ3IgjYE3r2pmXrwJrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gNUpCvJR6R3tyIGoh560/VDIXh/Yp2TxUBUoWVeL0iQ=;
 b=RB5eAoBsX9HLk8gEhHpNgsWmH+XwJkKB2eaBf7IZgvbwzeKHg/ekmR6T1+JI3AUEAJk2rYf5+gBE7UCadmNlu1k7vXrORfUM5T0jQG1a4kXvM32+w4VQvqvB5/ThZV2ogdd4cd0oehkD7qpABuHogfO18fIY5sAOcOWSA+/yJ6ag0zdAYaKj/2LPiaQtOHBbDbB830Y7VmqtMYv/2arvqT45yDTV+2AuxZ5N8eoge2Nad7srJ+gQ+6rsSsJ67Hzh3w3VFATQS6J3WMgmucCtOpG4XoJqeduW/kb1YyzELd3cyMf00xjOyXG2RqMOUB1/VcBjsrRV5ssD3XSxxnNDiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gNUpCvJR6R3tyIGoh560/VDIXh/Yp2TxUBUoWVeL0iQ=;
 b=eXS5ZjW8NejyiTwtiqP8HI87EUxj/9bvGwuAUlYwdy/AeTK4W9HtMuBXAoIIQ+d3K9DQTq7n6ldpW/p4b1P3gLVK6ehFz0j37h+X65X2R8YpVUGcaZ7MfJ0PrPOGUssdOzAI0p6GkUSQFxSjbvdx3+cYCgm4sOrE0Eiy8/ibyGk=
Message-ID: <ff474a61-af6d-4849-b87a-9a7ac482663d@oracle.com>
Date: Sat, 9 Nov 2024 10:45:39 -0800
User-Agent: Mozilla Thunderbird
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Content-Language: en-US
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
X-ClientProxiedBy: BN0PR04CA0079.namprd04.prod.outlook.com
 (2603:10b6:408:ea::24) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|SA2PR10MB4490:EE_
X-MS-Office365-Filtering-Correlation-Id: 5fe46319-2dbe-4bec-9bd6-08dd00eeb646
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?Z3BaWktuZlBZY1ArVjZ4TUFwTkVaMldZZzdkUnpSMk94KytMa0VXZE5hNkdM?=
 =?utf-8?B?TGtYbXRZYkRwS3IzbFg2YUwrdjdldU9rZEtKRnI4QUdXdjlXT0JEMDc1QVd5?=
 =?utf-8?B?YnhNV3VZcGRwY2xhT0tGTDJUdE1NTGVUOUZjTENUNkhIVmtkcEJJN0xxSHJv?=
 =?utf-8?B?S2I4Y1pKNGw5RUJrODhUSWRnWkhkUlUveUEzZEl4WkhVRTY3eEZ6TGdjUElN?=
 =?utf-8?B?S0pBU1dJc0svMUdDZmQ0OEVmRjFkam1pYXFQZTBOdzBXSHhldWFteGs2RXJj?=
 =?utf-8?B?SGFObzBvNHhGcmVGN3g3dmtZT0NIWC9aSmQ1YzJZSEsweEVCRFkrUGlpWUd6?=
 =?utf-8?B?RytUVDZXR0tzcXJlY2VDMVpiazhHUDlqRHdwZ2tkY0diY0g2eWxzU3JNa05p?=
 =?utf-8?B?L3kzY2NiNUd4T04wQWRnMmFBbjdkVlI0RUZnb0lIWXJSbEdibWluMkdBRjM4?=
 =?utf-8?B?WGRKNy9QVjR0dE5od1dsUU10ZExzUVF5NHRQSHJka1lGYzUyQXdkUUJVUUU1?=
 =?utf-8?B?SGl3L1kyWFhQR2ZDSTNCRTZlcnJCMEQ0L3gxZ1dvUVhQQzFsNTRnV0UwNnZu?=
 =?utf-8?B?c0dqVXh6RzZMUjBLWFltdEtzb0JoNGVGN3hDRm1sYzRnYzJCaHdjeFVYb0dM?=
 =?utf-8?B?NGY0d0J0SE9HRHNyVnJhdWpMQTNzaG1ra1M1WXg1WVEyNXVLdlhFeGRJMXcv?=
 =?utf-8?B?dVQzOU1KMHpBSFQrZUJlTnRWTW5FS29GdGQyTkRVT2NMUmdVVStpU3lwMjZN?=
 =?utf-8?B?Ny9mek9LQkEvUUVhZHBheEhUYzdRSHlKVEErSHgwSGNRNzVlZC90TzdsUU96?=
 =?utf-8?B?eFYrMkNSVzVnUzZGOUZWbkJFcGhCeSsrSjZuenZlL1g2a2w0QzZLaFVqVlI1?=
 =?utf-8?B?R2UzQU5rMWJ1MDBuekFtMVl0YWIvdENvR0RZMSs0ZytIejlsMnJTb2t2a1ZE?=
 =?utf-8?B?ZXJYVld0K1djc2hqelpOMFp0YS9UK0Zkdy8zcGpOQmU2OHV4WFhjTXhrY283?=
 =?utf-8?B?WS9FOTNZUlNzbFM1NlVjazBSaWoxYWlubER0b0YvQlpOcUk0WmJzNmtvV0Jm?=
 =?utf-8?B?ZnRUMU5uUEhRdmozdlZLQ3NDSEZXUlBZeHRtRE5KQU54U2ZzUjlocEx4UVBK?=
 =?utf-8?B?WWZEcHFSZkdBOHczMVEwZ0dYZ2Z5ZzhFckc3Zi9ZSnZFdVpINEN3ZGUxc0Fq?=
 =?utf-8?B?TFNndmJTS0I1eHhGNTRyYkc3OTM3cmVKRHMwaFFDOHpnaTE4Szl1M24rODc5?=
 =?utf-8?B?c0p5UVduSy9RZ1hQQVBWUnR5MzdzSkZnQmlJVXU4Y3hDeVZHTTR0TVl3ZEZa?=
 =?utf-8?B?bEdRTHkyOEEzN1NtNzJKTlduTll1QzlOSEJRcnF4SmI0cjQrREFrS3hTU0pB?=
 =?utf-8?B?WmIvQW1GQWpERmtqaWd5QlJsYW9JRjdmcEg0czZTZmNJdUdTWGV0eXJMVFhz?=
 =?utf-8?B?bFE1MTBXbkRKSnRzQ2ZKWmpyRmRBUUVvK3NTR09oc0lhUjR6ckdERnNLVEdE?=
 =?utf-8?B?QkwyQ1dRVjdoZkp3YXQ2RUJGQVpodkVBZlREQXordzYwdzY5dWRYMFBZOEhC?=
 =?utf-8?B?ZjdNMEVpTDRKcWZrTEVWM2ZyNWdVbUUrK0F6OXlpKzRSaXNnQStxcVJDQ2s2?=
 =?utf-8?B?VUhZRERCeFU3Nm40VTRaL05wZVVIbzVRNVd5MVZ2MndsbFRuTHNGb2xqUVpi?=
 =?utf-8?B?V0JkNWFDZEJGbEtLK1VXYkkxMEVJNTBMTnZHdStucHlyR1Fac3ZGUzdPemtG?=
 =?utf-8?Q?mvwtc8RGeiai+6FTkQBoZXVJpMo4bsRGdXGSkeo?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?NERudTgzdzN3N3dvb2g0RWd2dzFQVUU1RmNKT0p0MDNXMGtnOVNEVjNvcG84?=
 =?utf-8?B?dXB2YVlHNzVydkd4K0trVm9pTjJXdmZqM3RtRG9mTTVzSjh6K1ovZFVCUUY4?=
 =?utf-8?B?aUpPcnYvZFNVRXJ4cjF4UklEWjNDS2QxUzN1cGt4MWg4RjdOS0c0UXJxc3B4?=
 =?utf-8?B?Y3JPZGExbHN2WDFrU0dxVmhPWXYxWXlYS3lNTDF3d054NDFJcUxtOFltd0h2?=
 =?utf-8?B?THBIOGJYWlcxS1dyNE51Vml3Z2ZDREZuMmRXOUQxWE5pa3AxazkwMXBzR2lU?=
 =?utf-8?B?TEUyUnNHWmI1bDNCdlR6WFh6OHRLYTVFVnkraXB3NTFscVdGdGE3eVdsU3E1?=
 =?utf-8?B?alk4REdoS3U3RHRxSTcyLzA5TUExTHoxK1V5VVlqZHlQbVFsT2lzUG8yaHNk?=
 =?utf-8?B?Ly81OTdDbzA3VGN5YmxFdmxHb2lEQi9tZTBvaHNUT0JiQ1QrUEoxZ3FnYzJC?=
 =?utf-8?B?VFhHVWROa3I4ZjdrVjc1U0pqNGJTTFI4WUtTVUdsMmVEcHE2YTZEYVRpLzhX?=
 =?utf-8?B?Z3V1ZGQrbjJkOU1QRzVuQlcxbXJrdlBJeDIzQkhSVFp1UkVtOERlTWlzeEM4?=
 =?utf-8?B?aytOY1RQNWp6QjVUL28rdDh1VlArZ0tXRm4xVUczNEVrc0N1S1EyTDBHNkNZ?=
 =?utf-8?B?R2hheFMrcGdqSXJyNkF3MmpPcUFxM09yV3lIWGRpNkRKUExQNThiMGVuRno2?=
 =?utf-8?B?VDVHRzFXUlo1TURkUENXbjUvL3lVZTUwRjZwakJDM25rVjEwQXR5WVRpWkNW?=
 =?utf-8?B?aU1DTmNOaVhsK2JiK21uT1RtZVpKQ2ZyQzBkUFRmUzd2MUlaeEdudlovUlJD?=
 =?utf-8?B?VENTcjJBNVJUYnJsMEZrUjdIWUhZRmFNek5ycm5HTEVHa1VtcDlaSHVQMXd4?=
 =?utf-8?B?Unh0VzZaZjc1SVZXYTZDOEhyMGFHUEVYbHFpMm9kck44cU5ObmhmYlBHZE5N?=
 =?utf-8?B?em1nRnI2Vlg2ZG1zNWRlQnp6d3lkYUN4VGY1TXpIcmk5bWNYTWIyNTB2UTZl?=
 =?utf-8?B?blZRai9DanA0U0FTSzZYU0F3WVM2S3lzeWRTVmRlVmhraDJFWVZpWkZwczd6?=
 =?utf-8?B?OHU5RzVWNXQrQ1plUXNqdHhCSzE4UjN5cWVmZFRoMHRZWERuZDBHWnhQYVYz?=
 =?utf-8?B?THJZd09wbTdNQ1B3TXhxRWZiSXR4V09lQjJYaURsa2pTQk5zdCt5VjFla2pF?=
 =?utf-8?B?L1NFT1gwMGdhRGhuWWFCbGRtZG5IK01KUDRoWnhWZnVlVGtmd054d0ZLbjVM?=
 =?utf-8?B?U3Rhb0ZtQTRMYXR0MzMxSHdROHdqREdIWGx6RnFTeWd4UEQveUhOU2Fxakhr?=
 =?utf-8?B?VEdqdGsxN0Z1elB5bVExWGJCcEs4WDJnaG45L1BhcXAvT2N1WTIwM3I0TTZK?=
 =?utf-8?B?MHppZkExcW5oUVFGTWg1alFta0JaeUFwWERDblNkZ3kzc1Q4eHFlbHpTd3BW?=
 =?utf-8?B?cThTZDRxRHVvTW1LL21SbXdqaWlJaHhFRktVMDlJb1ZLV1N6aDZXQlgzbHFV?=
 =?utf-8?B?UURLamRaOVZDaGZIZm5XZi9vL01KVjdaYzZzeEo3ZC9NRDBFM0xadEtZRjJ0?=
 =?utf-8?B?UkZKVUxLdm93OFlCQ1VMOW5uRjc1OG9DK3JVT0FxTUcyV0pQNE5wdGppQmdv?=
 =?utf-8?B?YmZIMUJKS3k2dzB6SVNobTNpS3liZHZLTEhyN1NZQVorTlFucFFQQ1dOeXRV?=
 =?utf-8?B?eU0vK3pHMS82ZC9pcXIybmJWR2Rnbk5QakZldTR5ODdteDhTQVRoSUE0TVNL?=
 =?utf-8?B?cmNiMHlCS09oOS93a2NtaHU4MTdYN0pjY3JHSUoyMmRPQ0gya0x0emdsaEpB?=
 =?utf-8?B?UGVESmF5NDRkTUpHTzIwUDlvTzBTZzNielRaeTNTK0lmSVFKNGY0ajI3UjVL?=
 =?utf-8?B?NWYrWktaMHpIQ1hXcDVVV1ZFWmVlbEpKVTFQZ2VlcnhrSlVJNjlUcjFQa0lC?=
 =?utf-8?B?YWQ0c1ZKSnYrTUU3VDRrYTI2NHA4TE1tZS9FNVcxNENjbGZQY0FPbWxoc3ZV?=
 =?utf-8?B?aDVXYjloeUg0YUNwZFRsaVdWWWZpSWdjakpXdFBxbFpuNHFJbmY1cGlmRS9u?=
 =?utf-8?B?VVBPV3N0QTNOb0o5M0Z2YkNxTWovK1ZZRC9iWTE5UnJSeHV4ai9YcnlOaXZt?=
 =?utf-8?B?d1NoWEFoUnY0Q3BOZTFFYjJrWmJCUEZjOXdHcE83VDdSMUJMeUJzQXBCbG1k?=
 =?utf-8?B?VUE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	YbPg51O/tixOXiNhlLiL5j2U0PfB72ZhY8oImhZKdcpYQM6Dpsp8/DSLMiK2fRS9EB0gNc7A4uI5pHjVYSqK6rGJA+oWTyW7HiXCy2yv94mX9l1YEuY4XtxxWNobolG72Qpnbqn3pQxpqZs6yhtFv5shfoO+34qX9+dCpCgLw0WWSnccPc7agrGF91u2BtDu/Bm+DhL+7xYP3WTSrZ1I9IZHkDrxbGb23agkP5+ngv+TrninAZlM8yvlXuQwsCkOhkv3bJKG1qwrahG6bWFB7dSkOBwcjdAJMP6l334a+6lRZLffc33BbYSHyr08uflg5VKJRfcgTEXs2SCgtN2Lj0TNDukKtSflXgJ4KWYzWMCt5ptjqAqTJNvYXwD77ecfzZa7F2jk1pGuDekV3fZc4wMokWUjb8WzdTGRu9umVthqd4DMJGW4/X4yd0YCYwg3oRgXePV+heE+BB9btCZXI6jJ662WTpA6P5P/+mca7t9us4Zru2h/pPq60QwC6ZAdES846AXjruYWozwAN46NJ1uCHY5FhNwoRUn8KFKEzuuIrDuVucBy4L6Wzkt09zo7v8b0szof1gtuF3OeIPViDeG/OsSvqc16ChBhIGhblSQ=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5fe46319-2dbe-4bec-9bd6-08dd00eeb646
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Nov 2024 18:45:41.8371
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MKYYPQIwAKfKJda6wuxAzLckr6RuefOPMyLIBE87rzf9I4l6yxMWodYwjTgHnYVZdKirl9HAfLALYjIkEOPlFq3liGV3BBdG6uibhCzBD9A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR10MB4490
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.62.30
 definitions=2024-11-09_18,2024-11-08_01,2024-09-30_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=914 spamscore=0
 phishscore=0 bulkscore=0 malwarescore=0 suspectscore=0 mlxscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2409260000 definitions=main-2411090161
X-Proofpoint-ORIG-GUID: wrWUGpDSQFIjsEoev3v6XY5JdswgMbKr
X-Proofpoint-GUID: wrWUGpDSQFIjsEoev3v6XY5JdswgMbKr
Subject: [oss-security] 4 recent security bugs in GNOME's libsoup

https://gitlab.gnome.org/Teams/Releng/security/-/wikis/home lists four security
vulnerabilities reported against libsoup since June 2024, none of which have
CVE id's listed as being assigned.  (For those not familiar with it, libsoup is
an HTTP client/server library for the GNOME desktop.)

1) Request smuggling via stripping of null bytes from the ends of header names
    https://gitlab.gnome.org/GNOME/libsoup/-/issues/377

   "When Libsoup parses HTTP headers, it ignores null bytes at the ends of header
    names. Thus, 'Transfer-Encoding: chunked' is equivalent to
    'Transfer-Encoding\x00: chunked'. This allows for request smuggling when
    Libsoup is used in a service that's behind a reverse proxy that forwards
    null bytes without stripping them."

    This is marked as fixed in libsoup 3.6.0 (released August 25) by
    https://gitlab.gnome.org/GNOME/libsoup/-/merge_requests/402 .

2) headers: Be more robust against invalid input when parsing params
    https://gitlab.gnome.org/GNOME/libsoup/-/merge_requests/407

   "If you pass invalid input to a function such as
    soup_header_parse_param_list_strict() it can cause an overflow if it decodes
    the input to UTF-8.

    This should never happen with valid UTF-8 input which the API requires
    currently.

    This is not possible to happen with network data as all headers are decoded
    before this point."

    This is marked as fixed in the not-yet-released libsoup 3.6.1 by
    https://gitlab.gnome.org/GNOME/libsoup/-/merge_requests/407

3) Infinite loop while reading websocket data
    https://gitlab.gnome.org/GNOME/libsoup/-/issues/391

    "Start a websocket server with libsoup and then run the following test case:
     stall.c" [attached to bug report at above URL]

    "libsoup will enter into a busy loop and use all the memory of the system
    until it crashes."

    This is marked as fixed in the not-yet-released libsoup 3.6.1 by
    https://gitlab.gnome.org/GNOME/libsoup/-/merge_requests/410

4) https://gitlab.gnome.org/GNOME/libsoup/-/issues/390 is listed,
    but is not publicly visible yet, it has a disclosure date listed of
    November 19, 2024, and is marked as not yet fixed.

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

