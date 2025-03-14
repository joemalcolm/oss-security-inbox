Received: (qmail 22450 invoked by uid 550); 14 Mar 2025 17:17:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 22429 invoked from network); 14 Mar 2025 17:17:42 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	corp-2023-11-20; bh=3HhnPqPIfo6n6fOZq7d/RwxMz8EliBf0nCo6u3xSBxc=; b=
	LQCUGo/XeabZ7lFtgO39TIsC0SkxXRYg2bBZ0aoWX9HXKDp3XF6SwkO8oUf4GZu1
	wuovo/gGXTpiRzYjB60JaJUw3VkgIaSIWHAVMYF+juJY7mPHYfXKTis2IujIXO8P
	92QZOJX5kl0Tn0bvrrA+lIHPcMdEIYqIrMe5fnt/a40Quckn5Z83S48/PUYZVOP5
	T3EqNXLuDVdfMF0uGYADz8fA/rG/LLrNpXdcC/yHpaWw6YJp4/6q5XLBsoG+0Ixr
	YPoh4leJMwrjdaU4S2Ltt7p//9ct6M0zm0T34dw6Mv+VCHkdAjxLlgS4u9eA0KdS
	D8mA8meWjVc9oyWCeilJIA==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=y/R3qoYwJaki5tdLomOByqsT5+6fTSEWE74RkoryREpWpdqUgN81y1HdRZtc/Sw3kvBjjWU58lqvZjXmXCfDjUr6eGzdLQ3f7dDZ7ZYTAyvST40Et3Fw+gKtTYv3tufSt4qSFqH6ZHsR6uARQ6hcIElpMep28LYXCdJkE7gaRaGBCDlOkFX+bFDof8H3jonAaBxX0Iiirxkq2WdDb6BE4IchRyeKiTRgYIvmdgwYruAfw0w9j4mnLK7ZvDB63CyHhJMIG5oAYXoFXUlYTFj8OHSlrA6S3EHKBx4XUxnD6bRypT+qQnlmEKe7BxS/O2hXjAJdeQb/0yU4Ru0ZGzGy+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3HhnPqPIfo6n6fOZq7d/RwxMz8EliBf0nCo6u3xSBxc=;
 b=wDCMkQiu/ceV+AIsCsCDm6IsvK8STI8w6ZTLxuIq8V4YceJIlduT6daMYegjbOBQetju8ptbnqD2cmhMvJVKU8JudS3zjM2G59F6jX006ZNiqyyFYcj3O6bPUt0vUo/JfBm1Tu0DZVyeLki3rrhr0M6hnrMLG99wu3d/sXevw+e5TSXzwudsko7BQRT4ylN97sRZeo3S808sK3gkSs5FURzHi6b18ybnI/gQabOkPH+lcw663leOt6sDEBIKUhoofy5UM4hyBztfWYyjbWQTmblwCrOoBUw2hJBe1A0hVy5fjgO4NC1e9lKyu5obhr8Ft2lh9crVXsFciNfOZPlrIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3HhnPqPIfo6n6fOZq7d/RwxMz8EliBf0nCo6u3xSBxc=;
 b=AD02rof1jnmGrcZPo3tdx0/fXH0OfFgZCkktsrCXsyz4FCmqglkdeX9HihRGT73TUkrd3VqnHitJX6nRtj2zGJL5tfD1LutRA36DjI3QNXUipIv2OL7MoZdvXLKYPHTKrQ1r8A6bMcklQaoOI7hUJ8esBybgamujEtBQBw0RtWk=
Message-ID: <61a02a32-e18b-4a64-b581-6987558c2fd6@oracle.com>
Date: Fri, 14 Mar 2025 10:17:27 -0700
User-Agent: Mozilla Thunderbird
From: Alan Coopersmith <alan.coopersmith@oracle.com>
To: oss-security@lists.openwall.com
References: <397f9357-0f60-45d2-b150-573028178755@oracle.com>
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
In-Reply-To: <397f9357-0f60-45d2-b150-573028178755@oracle.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BY5PR03CA0005.namprd03.prod.outlook.com
 (2603:10b6:a03:1e0::15) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|IA4PR10MB8376:EE_
X-MS-Office365-Filtering-Correlation-Id: 00455a26-34f2-453a-a85e-08dd631c191b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|13003099007;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?WWlScjU1RFZleEZtT3RqR2w1cjhQODh2dXRSNC9iaFRleUZ0WHhJNnJqKzhk?=
 =?utf-8?B?RHRReldwa0daZk5KcnZGaWt2cHdia1BaSk9YTnk3aEZuOENzS0g0M0ZUUVZr?=
 =?utf-8?B?ZGpkOHRTQmdxazFSM2p5UkI2YXdGVTlGU1FiQWV2c3lqd1hOa0JOdkFxVVRJ?=
 =?utf-8?B?UVEwcWdDdDRsQVdjT1R3SCtrUEZaZHVSM0tXekZlUi9sNWZDZld4akVQdzQ0?=
 =?utf-8?B?ejBSa05lbVhWOGpYdzMvRk1RUHh3SDg2d1BEOVpXcE1XUm1Vci9RaG9FSFZi?=
 =?utf-8?B?aDlOaWlzdWprOXUrWHZLOFRvamRiY0k5eUxhUktoMHl4UlErdEcyOC9XRlNm?=
 =?utf-8?B?N1BibktEMVR5YVhoWXNmb05hRU9wbml0MTZ0U21qOWR2NkFJUmhGZGNROXFs?=
 =?utf-8?B?SW5pRjFxWXY2VVRmb3VGbFpCMjltK0JXNFJFTGxTalNLYktZelMrOXRxdEht?=
 =?utf-8?B?YmJIeXExRCt0QkdaVzdGa0FjeXB6M2tUM3B4VHVsMUUyN2ROUDNUSmNWQ1o5?=
 =?utf-8?B?MDNHd1JQTlpoRmVyaEx6a0d6d28xMzVrN05qUFBlK3R5RG9NeUpSZlRzcDdC?=
 =?utf-8?B?S0pSclF6Vnp6aXNuKzdmUHhDRjNNSUhCN2ZnNlJrNVpMZ2Z0TmwrVktUT0hI?=
 =?utf-8?B?YzMrRmQ0cXNWRU1iUXo5WmNJUkI5RTlTRE9YWlJHOFZNeitCaDlGUHdZVVhU?=
 =?utf-8?B?ZTB1L1JJMVdBem9LeW0xQUY0VC9EaGg0eVRDQzk3dzBub0tIT1hRY1RIRy9r?=
 =?utf-8?B?eVU3ZktEUHVWcGYvMUtyRUFUMmZpTWg0RGI0VmIrUDF3R3U4TTlxNmdXMnN3?=
 =?utf-8?B?aUFiV0dKQlNqbURMRDlxS25tUUlsR1dRSEJMWU11SnlyYUFmZmo4aDRXVUp0?=
 =?utf-8?B?ZmdORDF4NUpnUStsU3Rwako4UFhheWNoZVE5ZzlGckZVY3NQMlUwK3BkaW1R?=
 =?utf-8?B?dUMxbFJlLys4czRML1NqMGx1OUNIazFpN2hKTGN4MndJK1hmdDBMTFlBL2Nv?=
 =?utf-8?B?OGpsTzZtOWZFdVF1V083ZkU3Vzd6YWpIMTVGcWhOZFpjTzZyb3ltOHhMTTho?=
 =?utf-8?B?ZzBxOTdRUklVL01uNHNDMk5kRTNzeXZnNllXaWZlcm1jTzJOb2VDaHNKdXVa?=
 =?utf-8?B?VS92eVovZXVPUjRyNkJJeFhRYXl4YWkvRXl0YUNLaG5jaUw1aVprZzdnNVNz?=
 =?utf-8?B?cjIwMEs5aWhrdXJ4cTBGWHJ1VTZBZ0JLN3NyWjRLMnB2alVhbTFGMU9mOVcv?=
 =?utf-8?B?NXJmTWgvZzFjYnZJOHhVOW9IN3BoWkhlRk1vQXhjZ3YyMElmTGRWQVpkSnkx?=
 =?utf-8?B?ZURKc2xOMjdnWlFvVTVSN3EzM0FLRGw1N3M3ZFNQVW1RaFBaUmUremhTNDNL?=
 =?utf-8?B?aUxRMDM5UVJvSWFvTGxDSWFxdVpKQUlpZGt2b3dpcDZvMFRTUUFQaEFGWDhF?=
 =?utf-8?B?RnMyU3FicXQ4TXFUY2V5QVM0dFlnenh5YWp5aDNmWUEzcFdtR29sQWRtYVgv?=
 =?utf-8?B?Mm9RWEVIZnRGMEt0QUhubkVFY1VnUGxvQXN0QVBYY3g5dU4ybXZjUGlHcFJ4?=
 =?utf-8?B?U0ZsNVBsNXRtWUpKM0pBMVJLVU50cGdSVS85YndlZVJCSGhpU2U3UDBzUXhV?=
 =?utf-8?B?aGxuZWo3RERmdG9lUlBGNGI5akZObWhrOFF5SmFuME1MeWU3Ri8wa09EU2E0?=
 =?utf-8?B?OE82SWtuRWxjSjRkekZodjdpMmxWWFc1VHRtSnJyai9DNFdiaTRmQjBjZmdP?=
 =?utf-8?B?bHRxRElJNmQ4MHdDSXdYdWMyd2IzaVd0Z1U2NWxYcFN0eWRBYnExUkxPMlJy?=
 =?utf-8?B?M1hvd0FlMmp6eDBXSUxSUT09?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(13003099007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?V01FY2ZUODIwR2drajljem9NR3gySklZalZ4MkNud0ZVY1c3OXEzWHFXTjBO?=
 =?utf-8?B?TUY4cmVPZE1QN0owRWdTTGVVWE82TzRWYThtbG9ZUFdUY3d5MHpkMXhHSXBK?=
 =?utf-8?B?a1pKNFBZbS9zbVdQUlNrbmdBcTNESUQ4OEVVQ0FSclNMZ3NGaWwza25Ec3dz?=
 =?utf-8?B?Qms5U1FkUmZ1c1RoY29CcTd2TDRyUWxsWVVlS2dKMWFZT0dDaGticjV5ckhj?=
 =?utf-8?B?U2F3VmVVYmd6dWttYzcvbmF3R0lFT2JndnFnbSt5cFMrcUxkNlVmN0JLbzhT?=
 =?utf-8?B?N3dpQjBocnNLYXEyS1pYdmc0ajZoN2JPbVFORkxqVjEvSkZLaDh3ZFFBbk5q?=
 =?utf-8?B?NVZyWTI4NkRHWVlYbW5tT1N4UFpYSkdQZys4b3lsZW5qeEZpU214UEpFWWh0?=
 =?utf-8?B?RUJpYVRrejB4QmxxL1ZlM3ArQ082SFBYaHMzeFpYcUN1M0swdCtFMFNhbW5L?=
 =?utf-8?B?UUNmMXQ2d0w3dDF0TWlrYWZITnlDSW1Id3VNVENDKyszeGJmWjdseEtkYjV2?=
 =?utf-8?B?NW16cmJqc0F4M1VNUmMveGNybDV0UjF4b2ZoWkhXRDRURml0NFh5c0lLNnBU?=
 =?utf-8?B?d25Nb3AvRVZsK09UZ0V6NXFtMloxdkVKeGUrR2swUm1QRy9WbTk1MHpsN2dk?=
 =?utf-8?B?Qk93QWdBVnBPK3RBUnVWWitQOExjcWpHSEppaWNnUFFmWGsvcElJNzh6ZWNN?=
 =?utf-8?B?cW1xUnZrSFN4QWlnVzR2SWoraTFoRmd4S0VreXFtKzNZdVczRlJqeW1IS1lC?=
 =?utf-8?B?dzJQUm9SbGpZV1d6MVZpVEovVDZDTzh0VHhsOU44WWxaZUpmTTMyd2gvODJx?=
 =?utf-8?B?VFNxNTlMdWxTTUZmeVJlUDNsRHVLYTM5Q2xpSXBzQ0lSNHloazFEaFJaT0o1?=
 =?utf-8?B?amV0Znd5d09IenovZEcrWSs2WTBxOTNZT21nN2gvMGt4YjhSOURTZ25HSTJy?=
 =?utf-8?B?SEJXeFF1d3BCaStMRTQwSnMwV3lLTzc2b1VxWkFoVk5CM1dobHMwN0tZTEtT?=
 =?utf-8?B?NWRtcUhYWkJuSFRaQWRSYWVZbm15OW5lK2JvMm9idVJra2w4YUo1UHpxcHNi?=
 =?utf-8?B?RXVWSXh3WkxBMkt4SUVDaWxlemkxdFR2dFhxNGNnOHV4QlFPdVh5NS9OVkdD?=
 =?utf-8?B?SkpHbFd0YTFSUk1mVHRzSlI5Mk5qb3RMSEZMdU9lKzNLWS9VeGtoQk9pejJQ?=
 =?utf-8?B?ZjlBeEw1a3lOYUhHVWdiTzd6Y3J4N2Facmdzbm5SWWRlK0RmMzMwRFQvM2JF?=
 =?utf-8?B?eEdROTJhTHJheEU2MzZ6OFNYWnVCTUtqMndVeGZ4cnlIckh3U0s0LzIyTGZw?=
 =?utf-8?B?RlFyY25LWFgzWUJOVlBWMnVHRHRwdDNkc0tObWY1YXA3V3JXNTFLQkMrVGkz?=
 =?utf-8?B?aUU0U05Mb0crVEJtSHVBMzNVQTFKdW1ieGJLMUNmaVRidXlwWGdWdHBwaFRL?=
 =?utf-8?B?dDFVREk5N01zcFRieWwvUnpsWGN0OFhoeTF5V0tLSGptck4zbEYyeWs5YnB4?=
 =?utf-8?B?dlAzTE1MRVlDdXdwSGNnRWF1Sm9zSDJwbCtTUXRMZjhSalA2K2hyT0dTWFlG?=
 =?utf-8?B?QzFPNS9kVjBmNUR2STczeFVwb0NOSlBJcVhlRGRlMkF3T2JkSnFHZitjNXRm?=
 =?utf-8?B?blkyNmEzRFk4ajBLdGVzSUtoQSsvNzdvVjgrdkU3N3lBbjdnalZ0ZUNNdmpT?=
 =?utf-8?B?ZlFIMjJBZFZFN0R1MnIvVENjZDV0VWVQVW92RmNraHpvanFYTUV6TTBNVjV5?=
 =?utf-8?B?SUdXUTg1NkQrMEVmNTVIZmVoOXhkaTN5ZlNMU25XeUduVEw4OEVTMGZCMWlw?=
 =?utf-8?B?NkFwdXRvVVAwbC9LTzdQWGhmSG9VakVEVXNGaURpRmxFUDZYTVBwY0QwVVBs?=
 =?utf-8?B?eXFWT2l2NDMrN2tmaGVTRzBhMEY1azVTdDhQeGdtU2phVEdsUjJ6aW9SOElB?=
 =?utf-8?B?TG1Xa01xWFhWdTRoU243UHRiRWNBLy9ISGs2QUtadjJadWh5c3lCWUdSQVdu?=
 =?utf-8?B?RC9JWFQ0QTErb3JjdW9Jd0V4OW94d3paVXBMVGNUcXlXdTBwbkh1VFp2djE4?=
 =?utf-8?B?ZEVObzJEbDNyNWhzSU9yeDYwSldlQ0pkc3lYN09xeU1tNzhzc05iaXpWR0wr?=
 =?utf-8?B?R3FYaG9IRTJhRHVCUHd6YjNlN2NsTFhpRGluZU9vTWNqckNMeUViR0hnMVUx?=
 =?utf-8?B?MlE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	6AkUJTz4NKmSDingEgxIZE6ZgryY9+BP7PsxGF0SSAVN2UuBqz2r59ezu+yopsVAsmVPp/xtOoBEJ68Jls4Iq2hxGSBAuC3DN9aE0MWVitIJEOq9aVy3QOR4o8FGP900HqIemecfqptbDbWzKAB0m/C1iQWQ641+AKKBipEZPTB8iwT+j/gDcZjX+dbz5zjUegsSa/WMuAmUyxWuBJMePJif28WixhXFnfx9WTyxfc+4+3Wm9o3uvkvYibH3pN7hlQT5iO1AQRITy0/YyOFy19iNyj1aYjyhGfw5xFhXy7NAabm1srSffhaSGnM6538CBMJtSoawHPMJ/URfAy9uLYgclN0hO0n2l3Lyq8zfDFJj0p1mxGyfSw30P4itxg0LOYCQASHlR058HcVKbGW8iHh2Sa1EjappsozQTDW4eF0r9XOC6/ScS4HnRj/5qwIxgJbTpckOkEtE0wVrAQgwm/zsCH40/o8eBfki2q9wwgNxKgvbC2r2OVvOr8a8s7gUp6/hHIjb26J1ok3c52USMzulY0pUdCaTcv94LYDFI0GNQ4LN4H+D2t0tMf+uPsAZmvcgmDSINeakXWiSEYhPCQnJFMqxL9/dxT/cc67lGGg=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 00455a26-34f2-453a-a85e-08dd631c191b
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Mar 2025 17:17:28.9831
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: B8LEqcUP10UwEp+U28Qc031QdZ4HQ3Q2tbb13eLSrilTNmVUr8vLyfOQsEVH8j/SbpBKD+grVD+twMtIwgGd9DtAlcptHE3FzBMRzBgipTA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA4PR10MB8376
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-14_06,2025-03-14_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 spamscore=0
 mlxlogscore=999 bulkscore=0 malwarescore=0 adultscore=0 phishscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2502280000 definitions=main-2503140135
X-Proofpoint-ORIG-GUID: l4_Z28Nsi871UESOxiYBg5xNww_2huUO
X-Proofpoint-GUID: l4_Z28Nsi871UESOxiYBg5xNww_2huUO
Subject: [oss-security] [CVE-2024-8176] Long linear chains of entities crash Expat with stack
 overflow due to use of unlimited recursion

On 3/15/24 09:57, Alan Coopersmith wrote:
> https://blog.hartwork.org/posts/expat-2-6-2-released/ (published 2024-03-13)
> announces the release of Expat 2.6.2, with security fixes:
[...]
> 
> The blog also points to the call for help maintaining libexpat in the Changelog
> at https://github.com/libexpat/libexpat/blob/R_2_6_2/expat/Changes which notes
> that items that need someone to work on include:
> 
> !! - <blink>fixing a complex non-public security issue</blink>,              !!

Expat 2.7.0 has now been released with a fix for that issue, and the issue has
been disclosed in:
    https://blog.hartwork.org/posts/expat-2-7-0-released/
    https://github.com/libexpat/libexpat/issues/893
    https://github.com/libexpat/libexpat/pull/973

Jann Horn of Google Project Zero is credited with reporting the issue, while
Siemens is credited with making the fix, and Red Hat, Linutronix, and a company
that would not like to be named, are credited for helping test the fix.

The short summary from the bug report:

    A long linear chain of entity references: long enough to force the recursion
    in Expat into stack overflow.

    How long the chain needs to be depends on the stack size of the target
    machine. To illustrate the structure:

    # python3 payload1.py 2
    <!DOCTYPE doc [
      <!ENTITY e0 ''>
      <!ENTITY e1 '&e0;'>
      <!ENTITY e2 '&e1;'>
    ]>
    <doc>&e2;</doc>

    # python3 payload2.py 2
    <!DOCTYPE a [
      <!ENTITY e0 ''>
      <!ENTITY e1 '&e0;'>
      <!ENTITY e2 '&e1;'>
    ]>
    <a key='&e2;'/>

    # python3 payload3.py 2
    <!DOCTYPE doc [
      <!ENTITY % p0 ''>
      <!ENTITY % p1 '&#37;p0;'>
      <!ENTITY % p2 '&#37;p1;'>
      <!ENTITY % define_g0 "<!ENTITY g0 '&#37;p2;'>">
      %define_g0;
    ]>
    <doc/>

(The payload*.py scripts are linked from
  https://github.com/libexpat/libexpat/issues/893)

The blog requests that "you please tell your friends:

     Please leave recursion to math and keep it out of (in particular C)
     software: it kills and will kill again.
     Kind regards from libexpat, see CVE-2022-25313 and CVE-2024-8176 for proof."

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
