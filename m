Received: (qmail 19691 invoked by uid 550); 26 Jul 2024 20:05:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19652 invoked from network); 26 Jul 2024 20:05:31 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	message-id:date:subject:to:cc:references:from:in-reply-to
	:content-type:content-transfer-encoding:mime-version; s=
	corp-2023-11-20; bh=eXtC2FiuTCML1zfZ+nHHBDNjO6cvhUdHEAeoXNwjJ/E=; b=
	brkK46x4G88rTxabZpf00imegt608GIXM0HNvlXykCWojFH+Tj9+wVF0HK2otqqj
	3wajt3fePI3Z2J05HdmbmtParC3kfrG5Bm8qtPgghBuO7GVhzwHzW/IQiGZmAKq1
	gBo7qtza9OkFEtI69vcrnhDG7pPhkUmh/2RFWq4ENfPP2YS0sdYDpkK5AOzQG3JS
	xf+pkFdPDI3RAVnE3UWKiPcLjOLzpLrlTNOJBKpS1ySsHH4nmnfns+0FsAp+AiCG
	UowBdt66r5gxquzPLoqiis61vG9QnoAIMErHByzDgMJig5Wp/BlMqZwD5nYqVRZY
	ho21zXPAB+NbLVEW7yrs9Q==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=S/obnIVx9NauKWfmT5d6fDLJ0y0Yz+hiV7xRB1tQJoIiUbIxYYc0oHj2J0wRT/4MI8J1zNXVMbQIgWKqG4fcfH+xglpHrCqBaFFSFyCA1RVbkbPk8o4kneXyA4lxuycAinF7Jps9igoKSumrpz/iJ/ahJN7FtPIs1x+mADCM0WNYvvDtQW4ivIErHZI7v9uYcLzrpxPx7HafXNEbixHqhPurm97caxXFIaOT3mhXMB+05y/mv9dHlcRi5ZGbPgYztB4fOM/5KyWe0Mn/Xm45smbEYhZa6ifpajL8YShOjBXCsfp8PeE5hEa7M4uaPpbToeGPaTYRGeMsPDRZNExmgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eXtC2FiuTCML1zfZ+nHHBDNjO6cvhUdHEAeoXNwjJ/E=;
 b=rdSKhw9AeMid4ZNZFvxi4SpSkqdwud/+aNAh6WXz3TwOrvDYDfc6CEu/lUmLKIV8npsGm/UsHSn9v+5lvZEjR2nhfxefYo7QL+HdrXxTV7FtAuHvi2DnpQY5N3Yu4fihYjhLe4Rml25R2KDsFesa9G2/Y+J9gPdHOL5UDWGJ3cfN9biCjjAzjsd+w7Ns5WfrEnrIFLd9y7tOEGEDAv7Vz97HOkccKPMJb8lqtbsnfGhCug4VfDt4REGYPMkIcJYYYkkbEQRJdrTwZFHHZ3Q5yJSjy+2q5ybcrc7i8jMm8N993dQ03q4xwOHmey84i8pGYh6ELxDBcbSLqoeW+6gkOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eXtC2FiuTCML1zfZ+nHHBDNjO6cvhUdHEAeoXNwjJ/E=;
 b=jza1jKGObMaW+T4Pn+fbHQgukNGnssqHMf85Tj+4sLXUSj/uqtHMkllzDvHRvJh1e1rJCESwLWPRuc6Vy0RhgQnUmaB0Kq2bJ8vG/LIXO8LWhMoIgkNchBajviErZSDBZ+e8RnZ5IdaoFOcz297eGRDAon4atzCj3CQMfoLkxdk=
Message-ID: <886447e5-efb2-4701-83ef-2872bfd657e0@oracle.com>
Date: Fri, 26 Jul 2024 13:05:09 -0700
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com, Solar Designer <solar@openwall.com>
Cc: sebastian@centricular.com
References: <2309f1ae-1898-41f4-a369-c964498e9128@oracle.com>
 <20240726194606.GA12556@openwall.com>
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
In-Reply-To: <20240726194606.GA12556@openwall.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR03CA0073.namprd03.prod.outlook.com
 (2603:10b6:a03:331::18) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|PH8PR10MB6671:EE_
X-MS-Office365-Filtering-Correlation-Id: 19daea84-4137-4f30-9718-08dcadae4220
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?ekdIM2NNdURJT0wzVzdZZDVuZTVOQW56V1dPd1NqSWRZU0x1Wk5vcVdvNWlk?=
 =?utf-8?B?VXBQak1yMW1oelR3Nko0NzkzRmVzNWltSS9NQ0hxY3lUNjIrU2Y4TU5PNEpv?=
 =?utf-8?B?SC9ERjV6Qjk3c0xmZGI3YUZiUUxSdDZQTXNBc0lLZGcwVU5FRk5WQllpQitw?=
 =?utf-8?B?bHBkYStwbFhPMHkvTEdESzljVkNPMjVBS1FFWHd3UjFYN3NqOU9UNHRqM0VK?=
 =?utf-8?B?S2poa2JUOGoxNkZ4eGpnMlFZcG5HQWdUemtkM2xGZW9pUHhTZi9ESHR3MUpD?=
 =?utf-8?B?ZVlVb1JaVzgzak55MjRUQlV5bE5KVFZPSTJicmszVWlqcEhqQjVnS1p5THVN?=
 =?utf-8?B?aUpPeGVXZUVkeTVhckRTZ1lpNCszaDV1VXErQzJUMWdRS01LMlN5ZG5jUEow?=
 =?utf-8?B?aEJvQTExVXZUSnRnenorRDZUVjlxY2pQaE15MGNtaGNsK1JGRVVlZkF3Y09j?=
 =?utf-8?B?VU5GVm4zalhzcnAvUVhmcTNRRERFZHdDYm5pNld4bGQ5T0REOXk0TFdPVlZX?=
 =?utf-8?B?dVU0REtqeDdkeENyU1ZRWkFzOStxUXhtQ08zV00wcFpDWTBzWDZrOGFPNVdw?=
 =?utf-8?B?L1p1eit2cm9JOHpoOVpBRzVFd0JSUEVIbGNCbkFZY3BFWE82c0h6RGIxQmZR?=
 =?utf-8?B?M1d3bFlEYTRLZ1QyRmhaUVNka2I4ZFduMUpsejRiZU9TYkR0dCtkYlcrNmRr?=
 =?utf-8?B?MjJ6bk1jU0d6WXFWOGJwRW51alloaFRXaXU1YjVTbEVKWFUwYlJacit5dEI1?=
 =?utf-8?B?NmlKOG9SVGFaY0J1ZkR4VHphTGxFcDJ0OWdyYXpVeTdzblF6ci9JcDduWU1X?=
 =?utf-8?B?NVdtc3NGRm9FM3E5bnFDNjZOWHlZQWF4YjNESFBpY1RZeDZwNmJ5b2xsTXpt?=
 =?utf-8?B?cjN4OWI3N3NzUjJWOFNPN0h5S0s1VFFvNmRmV04vdGN6QUZpMkthbEJVMXdx?=
 =?utf-8?B?N003SWtaZ2hXVWh5MnZOSS9ySlhPRElrRVpzWU9ZVXpGYkF1dUN0OStFcTNo?=
 =?utf-8?B?MGx6d1h3MVNqckZ4MXdMcjcrYVJLY0I1amgvQTVHb08vcU8wcUplWE9sN2dr?=
 =?utf-8?B?clRnTURpeVlwZHg2eVhnZFBKcFRVVEdVSDU1L2I4TXpQL2hXeHNrb0ZhcFJq?=
 =?utf-8?B?bHlYc3ZGWTB4ZGRzWlBhYis5OXVMMlBMbnA5cXZoRENMbjNxaHUzWjNld29R?=
 =?utf-8?B?dG9MRDY5bldOVndVRjBiSFhUTWp5Y0pkZDJpSkM4L0NaelMvY2JDYU5DV3A2?=
 =?utf-8?B?ekhIN3hwaG9qZzdXQU1YY1kyaGdsbTdqU3dJRDJWYlV0WVRSMDEzUEY4OFYz?=
 =?utf-8?B?SVI0eTZtUkFPQUNnYXBnVXFGUUFoL1JhS1JiT2NkV2EvenpSY2hyK2JVU1RL?=
 =?utf-8?B?VW4xaW5TZkpBQUZneHY2OWZRMm5Vc1dob0s1UGc5NmxLaGZoSDhTL1VVbkp4?=
 =?utf-8?B?SFFkdmEyS2VLT3F4cXdrOVlnaUNTMGc4aERZVUlUVGNxL05PYmMvWEw2enI1?=
 =?utf-8?B?Z1JBY090WXBDVG5hZ05sSXVOeTc3Y3VUWERyZG8wVWhYZUswcnQ1aFhnT202?=
 =?utf-8?B?YnBFMUdYRlpRdkRBQzRHOENoRTJ5cWxXODVET3lweTFoQUhhcW1tWUFEUHU0?=
 =?utf-8?B?M251S3ViYTdlb2FTOFViSWRLZ3NMNEI4QWFtMFE4M2ZnYW1GcWhQWjFaL0xV?=
 =?utf-8?B?dnFoaENhVkEwM1FJdE5HY0tod1JBUFhtSE5IdzR5cjczMUsxUFlBWmFDZFJa?=
 =?utf-8?Q?x5BHQ09MF0mBwejt6Q=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?WnJRY2JPZWwvWjRYOC9Wc1NNTkdBcE1ZcWozOVBTcEcvVi9BRFZEK0dTRlQr?=
 =?utf-8?B?UXE3TnJ0ZXpoZXduUUlzVzN3UlAvNGlGZllvU3VoOXIvb3E5d0poZzZYQVBW?=
 =?utf-8?B?TlpNZS9hZDN2WGJITXN1clhtK2R5TmdaZmlOTW43UkFMcTM3eENGK0dJc08x?=
 =?utf-8?B?VnROSlRDeU9RcDJsdHhISm96V1QvSyt6SXhNdDlWUzVqd0p4KzFMTDdNMXdy?=
 =?utf-8?B?YUlrTFg3RTNXRDhRZS9lNmVwd1RRbGRXTzNhSnFvd0RYWjJwNjgxaVQyYjlO?=
 =?utf-8?B?ZWxSTUhMTDlDQStXNm1scnV1amd0QkphTnlSb0JxTUk5NWQ2ZFRMV3IwK043?=
 =?utf-8?B?VHptNW9KTmpyRmtMcHBHZWhIdnZjdzJZNGh4SkgrU2V3RGtNbkg4S2J2RVli?=
 =?utf-8?B?OE12VXlzTFFJbmROWHhBWXFDNmtDSmE0UXJQcVJFNVJBc1hsTFZScWxkbmJt?=
 =?utf-8?B?NE9JeHV4UXEyZ3JoaC9xY3pDYXFReE1uV2pGRTNwdHdBdDVLMitMQkpOdFdF?=
 =?utf-8?B?OU1zNENCOGhvNnozdTg1dmZ2VXJBd2JKYUZxZ0tuSk1FMUhmaHFXMGxiTTdk?=
 =?utf-8?B?NW9Ld3RBSnlBTWpZOHJ4YnAxK3pSb3RCSzlycTF1TGNNL3VBTHpFdmRIS1pI?=
 =?utf-8?B?dkZldThBV0F2VUlWNDZLZEFjMEIwV2ZDNFlnY05TcmcrWUpiSmprTTQyUEhB?=
 =?utf-8?B?SEJkRnpqd2xrZ2pQM3BFeFkzTkdBbmgyTlM1a2lwRkV6MEtYZjdROW1OM3dC?=
 =?utf-8?B?Zzk3REgrMnFPTDBGTTE4dGUyWUhxWmI1VmI5b0Q1QUJ2RVlWZE9HZnNWTGJB?=
 =?utf-8?B?eHQzeThMRnZzazNJUzN1bUJmUkg2djNXOHQ1bUxWRk5RWXJiMDAwVU8xR0I3?=
 =?utf-8?B?em1qQUdqM3EvRkMwMGY4ODZUZzlsdWlrS2tWbzM4NTdrY2orY1A0Mk8zWVow?=
 =?utf-8?B?NVNNUmt5enZMOXZJb1VtTTY0OWJoOHlGQlJmTUlwb0tLUnZKNnpUM05WUUts?=
 =?utf-8?B?YWhCanBrdkZmdjdOaGtpWUtpVXlxVWJlTE5CbWx6bExYbGRrMEljZlJTVkNS?=
 =?utf-8?B?Q2U4dGtXY1E0NFd4MTBMdCsxWi91bmZpdERTNTdmajE0ZGdSNHM2Wit6ZTc2?=
 =?utf-8?B?bVRoblVaVC9EdUV5QzNDSytveXp0cXA2YmNaU3pxUXh3eTQyTUVmY0JoL0Yw?=
 =?utf-8?B?aTE2L1JrdHYzbFNvdmt6QVUydHVScC94V1IxVlNvdVhkdEZ3akc3dndlSzV1?=
 =?utf-8?B?bzN6TDlvM0Q3aTgvRnIvK2NkbXB4MnhMeVhkeFl1eUMva01XclA1a3RNNGNt?=
 =?utf-8?B?cEprOGNYUU1KMXpnZk1Bd05VbUc2S3l3U3V6RzVlQU4xMU0wbjBRV1ZIU0Jn?=
 =?utf-8?B?bnY4YlBFSWVQeDhFMlhLbUZzWVNCTHlGVE1Qam1sRGhyQ1V5QndhZGV5MjVF?=
 =?utf-8?B?c2Z6ZHNIUmc3Mi9KL2VESU83aVhvV2dIMC9yeEQ3RU9FOFlHNlA1QnpEa09C?=
 =?utf-8?B?aERwQlUxc0Q2R0JQeHEzajJJZTNONTNHM1Y1cmFRVzU5Kzd5WEFUQlpGWFhE?=
 =?utf-8?B?ODRGWGZqSFNQRDBpTzRhNkliTG1SaEIwMXg3bnlmT2FpdmNmRm1mQ2h2SDZ2?=
 =?utf-8?B?Q1VmenB4cDd6OThGSHE5ZDlWdS9ZeXltU3JXV2R3cUw1T2Z0UXcrREJSVEE3?=
 =?utf-8?B?bi9VM25IMWF3MERIQUNGZUJ4MUpnWlJ3bXNZcWNHQ1EzWmVqbUs5S3FNWWRx?=
 =?utf-8?B?b1ozVFR2K0xVRUJZYmhwb3pLM3FhUGVOV0s5dFRQL1FLUDRVTHMwLzN0bnVt?=
 =?utf-8?B?OG5HRHRsVFNwenNnN1V5alBqcG5pNmNMdEVNZ2dnampOQ1lYTmFkZjBuYmhJ?=
 =?utf-8?B?a3V4eWlVNDZGaG4yc2M5OVBxaGdTaldid0JZU2tGdmgzZitHaDN1cUhCYW1I?=
 =?utf-8?B?KzB3VUQ5aFpFSmpRemFYeDQyK1pjMitkbWp2Q0hJbVJ4ajdNemhFMTkxWkpY?=
 =?utf-8?B?bjNKVFZBQXBYWm9qTzF1Y2lFQUR2RlIvQnJDZU5BeGtHM05aTFdwRlFtQ3dB?=
 =?utf-8?B?dmJJMjQxdE9SS2V4c0tXREozUC9wTVZ0dmZjYWxlTU9UYWxOaDZDdEwwYWdh?=
 =?utf-8?B?ekxrWkdCMGJ4VWRoRForRHovRW41QlpVRlMvR1FoOVQ5c293L3FWOFA2d0Yr?=
 =?utf-8?B?TkE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	C+eegglrWxlQOCCJkPPKo3lP8pYTUnGXEiq1tA8ZAJbpHgUms61/EAEQwV3eARjZUX87gm/gOv4fVzUFAR3EM5tXnDfLgH+dEnC/wdyQETXrI78StA+d2IQq8OQkE1XXpsOGUSRXABrs5mY7niovyiMbQ/Hxfx9ZAdXZHcKV9woDotKCUHUvJPe50ppEo1GANPEFYhzcEFLBxqDmwNSl0NF3b2G7OsJqRYKptBWtHKvxWtVCFCeao2E/oy/AHLwhUViYFMDLRZxAekpeVUPTWs2TkeeWvo/JNBSjzHJHcTyK8U5DH6A3Pvt6kD6DW+prn0RuOo+5FT//qLgWiTzHHEmY/hu5ABvByCF4cYqrkOPuN8/C+Cqqa6rb0KZb+rSLFXFgSzyN0X1PB9j4HBDNGbCgPCw2/E30DzXyGsLNuPOIVXzqLFx7I0wC8fEuw2gdqJnBSQnc8hlRAyinKYNIroSHlBccEU6M7FAWX3zefvpJM++TONDVlJ+5KGSedH4f+gpy1v4mdgLBnGvLgNxrTb/hcs5xLJ+d/3juAgWGv/ud6Nm385y1sYNZAO+uu5N0Sf7DmUl2N8pf/I0VI7JbTasJ5+tw3YFbBMUEYelxLY8=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 19daea84-4137-4f30-9718-08dcadae4220
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jul 2024 20:05:12.6483
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JGXOrdYbGdDiGCLTzlTDC0DEEssKrCHQtODc6JPc7pAbgKeycHgThSoO72MeIi/J8kE0hJ+f2WhgY9ZKxgQmLqbTTPBbbjDFhiJlUH6sDsk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR10MB6671
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-07-26_12,2024-07-26_01,2024-05-17_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 bulkscore=0 spamscore=0
 malwarescore=0 suspectscore=0 mlxscore=0 mlxlogscore=999 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2407110000
 definitions=main-2407260137
X-Proofpoint-GUID: TRMAY-RbxbOoioulieLZElhRF-BBlftp
X-Proofpoint-ORIG-GUID: TRMAY-RbxbOoioulieLZElhRF-BBlftp
Subject: Re: [oss-security] GStreamer Security Advisory 2024-0003: Orc
 compiler stack-based buffer overflow

On 7/26/24 12:46, Solar Designer wrote:
> Unfortunately, *asprintf() are not that easy to use safely:
> 
> "For asprintf(), if memory allocation was not possible, or if some other
> error occurs, the function shall return a negative value, and the
> contents of the location referenced by ptr are undefined, but shall not
> refer to allocated memory."
[...]
> As I recall, on *BSD's *asprintf() also reset the pointer to NULL.  On
> upstream glibc, it does not.  We failed to get this change past Ulrich
> back then:
> 
> https://sourceware.org/legacy-ml/libc-alpha/2001-12/msg00045.html

Yes, this came up in the discussion to add asprintf() to POSIX in
https://austingroupbugs.net/view.php?id=1496 :

> Of the above listed implementations, all but GNU libc document that they will
> set *ptr to NULL on error, while GNU libc explicitly states that you cannot
> rely on it to do so (and looking at its code, sometimes it does, sometimes
> it doesn't).

and so the standard was written to allow both ways to be conformant.

If GNU libc was willing to change that, perhaps the next version of the
standard could as well.

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

