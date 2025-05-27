Received: (qmail 23732 invoked by uid 550); 27 May 2025 21:44:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 23692 invoked from network); 27 May 2025 21:44:00 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2025-04-25; bh=zL1fVLpkKu9oW1CY
	cGkFqfpFQ+MX4xk3qzdRz5a1DM4=; b=M1Gm6NWfX2C81L/Ps21FE2Pd0/k5G+Lo
	+2KZRmbLWouOKXZTNFf7TKw6oixMUlY7Es5yFiSJZJ7DtcflAuNYnTTw53ua+hOe
	Z/X+lSjG9h22yEfTSubQWadhB/Sft+8ZJMOLlXvKBjcIkt0OtWjmmxSEYgulyqd2
	AhCrEEtVvExwQaBiij8XyM8G1K/UFvH4giaPwwvq9fKeMpR+C0VsZvRc/hJ9y/cH
	DXOdhRmS76dvSgBuivCFCb3zZwe8sRgvWv5rMVYrRyNvVn2727SLxXFx2DfVqI8o
	OjFYE+LTMdRoIa8ML0Sq1HG7i1XdOrzNMSwjwJQ2jw3MqZfVFsQF0g==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dVjOY9QqPay4bxNCtK1k3zGxeaOq5UqeGEQVejm0kjNzYn3ht7tpq0qxNA0uBJpFkmYxYKuyfvZNaxZ/8Cwjq5tZZPRw77xdkl7fxb0m8Cfoj46j8TkDTBJEH2LL9ALxF+eLtFjVYjuGyYkq+wdEkMSwlcdJopDEVbFjh4dQBZmTgZmgl8ZmKKulIZk7sOcu/9qoPkDG+43S6297ggwpJEV8WjVUxgtOTytcfsn5BoQHhSOEEpbl/AcQ3U3Okc6OTtzUJtS92Xlrz6/JbOf5xWckViz/BhKQJIm3fp8/JD4ix6G2fsMJlNAy2a0jcBc5Ez8e9DerA2E1z9gVa13FKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zL1fVLpkKu9oW1CYcGkFqfpFQ+MX4xk3qzdRz5a1DM4=;
 b=EDOslS4PBgcrnfMjGA2gIrqjjkDoLhAqgYpCdRZ8jlpSJPqujFad4Od0wqjR83KoW7I23hjcsx6VAOdh5qQotlEwxHC8/6lVQswgg9S0NCi6FXA3GVeOuYTRu0/d09vXZ7sYOjqP8x/73iguvn/yugzA7R9l2Vp6X/ApGkAMTALT7KpW8RFbzGCyYmjwjmFDv8Nkbj1t5whpFJU6WvNlspBXFFnOIo3pRgt+vCS847oz3pfcSFc5EOUTfr5jWgeDP9ZydDoNT11aYhKLe+Sw9pp8TvbCFgT6qpJgw3dE/JkNSuNoUtPtUm3WWlXITSFMUKBpNnn4iJrOC/c5TDTY7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zL1fVLpkKu9oW1CYcGkFqfpFQ+MX4xk3qzdRz5a1DM4=;
 b=T7A9fWLbeBc8QcaCJnhFEnp1POUxyyAWu8TRi8jdVNLA+pzTBIi4MwKbY4VuuhyQ5v7zNn+ee+pPmrw7VSKf64Kq2FWmZRh1Y4FN++GwTlHga+K4pHBpevzhWRRTx8vIJASm2Q/YyfO2K2MKK/ZcKF5jyHeUpNwRMCIjCWXpvtQ=
Message-ID: <faad8379-ad8d-48fe-8de4-9cfea8046125@oracle.com>
Date: Tue, 27 May 2025 14:43:44 -0700
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
X-ClientProxiedBy: CY5PR15CA0162.namprd15.prod.outlook.com
 (2603:10b6:930:67::24) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|SJ0PR10MB6349:EE_
X-MS-Office365-Filtering-Correlation-Id: 30b7a203-e3e2-4c24-44e3-08dd9d678f71
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?NTBQR0l1ZTR3SGFyZXh1eUJhd1QySEdsbHNkNVZTNlFxQW9PSnpEblVlVWJZ?=
 =?utf-8?B?US9NM08rVHlneXJIOGFPZ1hDZW9ob1RHM0dJRi9pUGZMZFhWZTBFbGp3RTBJ?=
 =?utf-8?B?WWQ4MG1pKzMzOGhkYnhkTGFnNVhqbDRYVlNoQWI1T2RZRVFoSlVneDduZFJp?=
 =?utf-8?B?VWdnL0h2bkUzYjRFcGxaN21kNlR4bUhMWmFRd0tsVFU3SmR0cXZ6dGpWejU3?=
 =?utf-8?B?ZDN0LzkxdGo3b25rSTZ1LzBDMW1EZ1JHVmM1c2hRVkJLcFN6T0tGZUZyMjVV?=
 =?utf-8?B?Z0FqblAzN1JLb0pQaFhhWjRNOUx3RUhmZ0kwQVlreDltd1FsRXk2MVh6TGcw?=
 =?utf-8?B?enhIelE5Zk5tNU02YjN3WWZldEphNnZOOXV1d2xkT3U5a3NCSWRhank5TUdE?=
 =?utf-8?B?Ulpzclp5em9nUGlnK0NpYXpOTkhMZkl3VjRQcVFQOXRHQ0F3NXhUUm5wMTAw?=
 =?utf-8?B?cGZESDM0b0ZCQlVtS3M3YnZIcWZRUnFiYjhDK1ljVU9nTXZKT2V2ZU1MdVVY?=
 =?utf-8?B?NHR1Y3kvSHJyT0c4dnh3Z3BoeTNrdkdnaWxSOXFLelBXcHA3OXl4cXlRQmx6?=
 =?utf-8?B?M2RUWUIvVWE2NXlsWjNSOTBadndSMUNkcmpvcjU4WExZQjkvY1BweXdzc2xI?=
 =?utf-8?B?OEg1Q1FDNGZBNWZrdWx0M3AzUXV5K05XZjFkN1lvU3VDYjhvcXpmNitUZDd0?=
 =?utf-8?B?cEVuaTZxR3pBYkp1cmgyWS9EV1BJUEJ2V3hwMmh6MlR5VWQ5Zy9QMjFGZWZa?=
 =?utf-8?B?K083ZTI3Vk1tZHFheUw5aTdBMnhwM3Z6NlNmeGplY0FOY0ZVWTJnOXUrMHps?=
 =?utf-8?B?dXk1OUpmaEZtS2ZJWmVsMjR5OXVjWTZ1d3NlcENZNWw5bWNFRGMxQVFrelFL?=
 =?utf-8?B?OHk1ek92N205Q1RqSDlIc3NjTjF6aWlEZlNoTEFXanRKNmNKenpRN3pISXYz?=
 =?utf-8?B?YldDcWV3dTVhSUU5dFY2WVJncUR3bE0yd2Q4bFF1dmdZb1N4ZDhxdzhCaW9i?=
 =?utf-8?B?V3ZXc0sxNUZGNEx2K1dMcGorY2pDc3hla1UwdG5iZjJzVWxubXlXREJPd3or?=
 =?utf-8?B?VCtOMzg5NndoMUtoM2pQc0p0VXJGTEtQVTJlZ2pVTktZelBYVEZ6Wk0rT09v?=
 =?utf-8?B?WEYxWjhYeXRsWGtjd1dSODd0a2FESHpLNkhqUC9hSmd0ZS9iWmU2cDlJR3Mw?=
 =?utf-8?B?bUtQbjhrdzAvdUd5eE8zSWdXTkg3WVBSWW55cnF6Yko0UFJ0UUhHVnZuL0Vu?=
 =?utf-8?B?TDlobWZZaTRxdmNBWGNMU0dveEtUdmRQdXNIVWc0YVE4aDArS1dyQzZvaWdO?=
 =?utf-8?B?VjE1VTRhd282bFhqZFFabFp6OEhpbit5Z0w1Q1Erc2ZYYXFmYzBFL0gxNGNn?=
 =?utf-8?B?RHlZeHhXN01CYWMyOHRsSk1XUkd1dDlyQndnano0OEZ3SnMrNUVUNHp2UUhs?=
 =?utf-8?B?Umw2dGxoaHNHTHpuR21FQUdjczZKWGxLWThoM2Z6dFdPRmx4UHhiUFgvQ0Q1?=
 =?utf-8?B?UGxISUZxMTlBV0lxcnRVUU5vNVhUYUVwMXNBUkJ2QWFpcHg2QitPTVVDSU1W?=
 =?utf-8?B?M0oyVG4rRU5qcTNIQVlDcHA3UjdoM3huNGdUaUd5QXRwVVlFVHFud3h3aGRS?=
 =?utf-8?B?SjB0Z3BZY0hjOE0ydU51QlFvVHdEVVhNQTVRdzlncDcybEJGRi8zSFpKdUtS?=
 =?utf-8?B?TWJ6ZlFPZ3c5SDFQYTB5UVpPa1FkaFJWdTVGT29RYkhic2R5dmV5V3lOTmN5?=
 =?utf-8?B?dHh5OFN6bHVYSkVuNDNYTFlxd0lxT0ZjOVpOS0F5emhjRHB4VE4wbWNjOUVK?=
 =?utf-8?B?OEliVUNxME5mYjBqRURxdm9lUWI5NTErOEEvbWpyTXVMblBVUk1EcGlQUGdQ?=
 =?utf-8?B?eWxibUVUQWhubGJmRUU4Y1ZveCs5Ri9ONU5qaWpINVdrck9oRjJ0UU84YWMy?=
 =?utf-8?Q?ntaSUG5f/EE=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?dkY4Z04zUlNxNk14Rlc2MXpZK0RwK01QL3ZRZit3NTYwdjFVeEVPWkJmZmx6?=
 =?utf-8?B?WDFCakZ0WGw5TGNBaTF4OEdZQ2JTUWdZY3RoYUgzMmNjQkY1bFpJUEttYUNC?=
 =?utf-8?B?YyswRXZGK2xJc3pPeVY2UDdqYWZLT21Dai85R0RtS3BaaCtLdGZ3VUFkeDRm?=
 =?utf-8?B?K21qRjdxTFRYaDJJT21QNTRvMDJZNGUzZXRWNXhzTVB2VHp2b3l1OUNwQmVM?=
 =?utf-8?B?a2JVc3dzalB6ZEhhTFdZWGl2aHY3cUU4aGc2Y1hlZ2Jtd3BjbmRxRTRxZEg5?=
 =?utf-8?B?eWxLb3Bna2xZc2Vtb24wMzIvNHFGV0lVWUtGcnRDdVNML1RGdHJwOTVSNFZV?=
 =?utf-8?B?akJOUnhtTjBWd1BkK2xUSlRoUHUrUkl0V3ZYak9XNHdRV0RZY2NrTVVsd2dy?=
 =?utf-8?B?TzNEZHkxOVlmeFFBYjRpNE14MlM3Z2drb3FIUFFPdlVvcmNQWDkvblkvcGVu?=
 =?utf-8?B?ZS9BN1k4dElqc012U2I3b2lCUUJyNWwvdkpaVjYrM3VzelFnSjFQTUlwc2Zu?=
 =?utf-8?B?ZVJ3eXRxV1BFVGJ0Ny8zaGNURGwvUEN5dHVWUzFwVXY3YWRPTDFKc3lvN1ZC?=
 =?utf-8?B?QlZKMHlMQWxGM05QeW9yaEViQU9zZVhydWM3dm1xN2tMUDNxdXhCSGJOUEQv?=
 =?utf-8?B?QnNmVHh2b2ZBYVI3Wmo5SFFwRVdVZ1FSWFBiNzI4NndUSHRmZTdhNU1abVk1?=
 =?utf-8?B?M2JWZHpwSjNuSTVPT0hXYWd4R3ExelZUbHhxb3ZCSE11bHBXeEh2VXpDWWk1?=
 =?utf-8?B?Uk9hcGFLcUNMRmFjalFFcUMzWHp3LzNvMEVMaEp5WklhanNpOGRYeCtuOHBy?=
 =?utf-8?B?SDFwUlhNNEpzMFgzM0N2ZUxZVEl1UHNpSmNYa25WUmtKaUlRNTVReFFtM1pH?=
 =?utf-8?B?NmJ3bzRHbDB1LytCL21QamN0bkNQS1FYaGZ1cGg1YTNTZHd3RndIOENzZTNK?=
 =?utf-8?B?YVJkV2hkbzRXYkxJck9ORkcwNlNnQVF4MkNmb3NCTm90VTYvVGFscEtscnkz?=
 =?utf-8?B?Zld1eTNPODZNaXVabU1YRGptZ21lRk1zY1lXUG81NmNQSitHd0ttQ3pFZmRO?=
 =?utf-8?B?SGFqUkhzODZSWmpEQ0N1NTBhVnBzRHh2VEFHc3pZR1NESW5MSnBDRTUrbSsx?=
 =?utf-8?B?S2pyb0NuVkpHTFVFNkNWbVA2NUpjRlZWUUkycURXNWh6U1lNL0liZ2lWS2gr?=
 =?utf-8?B?N3lGbTNVOXZVRlpmU1U4U2dLMnhYUTh1YXB6U3AyQy9UUUhONUNTNWFIZ2ZN?=
 =?utf-8?B?b0ZOd3oxSlZaN1JvQThFdVRleGJMRHp4dXVHNkx5RnU1RVRUdW5RYXJ3d2Fs?=
 =?utf-8?B?ZElBb0hURHhXb3F1L2U4eXNUbGNvZUlQTERaL1ArUGhtU1dRcmZIWnFNNXhr?=
 =?utf-8?B?ekZuZFdmcXZXckJidnR4UFVQYk8xRUFsS0UvU0hpM2w1WjYzYWVEclk1a0F3?=
 =?utf-8?B?Nk05TWlVRW0zeXpkTDdUU2R2Y0VyNzFIY0x5aXFBR0p4aCszNEUzTUY5YnJV?=
 =?utf-8?B?d0lESk1kejhUbEViNFJabVpmOWpxS3JrRkQvQXF1TXQ2cG9ZZlpzcUdDUTd0?=
 =?utf-8?B?aG9uQi9PNmRnSmJwZ1JyNmVJdVN3MmUvN0xPRjJJdzNkRndXN1hYaUFReTZ4?=
 =?utf-8?B?MTIrOHU4ZzIxbVorZnR3WWd2OU1CV1NvWnM4N1I4TmxnM2UxaGM4QWxpU2R4?=
 =?utf-8?B?NlpaUFdZTS9BS1ZGUCthSkZ2aThuV01kdnk2M0MzbCsvRnRWcEJDcnhGWjZt?=
 =?utf-8?B?Wko5aWNHYlI0YVhjRjYxc1MvNkozLzdGMTFZZzNmZUZ6ZjQxNTlRVlJXOGdv?=
 =?utf-8?B?K1pVY1RnR0RlTFdtV01ET21IN0ZKRWdvMzZ5SjhiRGtiNTVIYmdjWHlVS1JO?=
 =?utf-8?B?d1ozc2Y2Wjh5RU82b3ZCZkRIdzZFazUzbDhic2RTWXUrTzAvTVA0Z1NCTFFB?=
 =?utf-8?B?dWpUazdxOGx4OVdneXdrRW5mMDV2ZkJLa05FbEkwZnN4TzV6NnFWbTErZVhz?=
 =?utf-8?B?a0wwTWhUczQrQklTblpsdVRyM05IT2V2VGlBMENqWW1FZlZQMHVSQWpodmll?=
 =?utf-8?B?QnlMVWo3VkpmNjBwSWI4ejFFWGxYcUlML0NEU0NZUFJXVUxNSnhvY3B1aEJq?=
 =?utf-8?B?SDUvdnpqc3dPZjd3bGZhaXlEcHRFQUZPVkkvNlZZUXp6V25lMmkzVFJsQVZN?=
 =?utf-8?B?Umc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	PvGCZ5KQkHBNVtCNe8/vkKbdAo76Y+nD/0w7YnLXWlSyWqea7ooBVekcFIr5NjI1w/PGWs16MvRmHaa7+Jy3bjTkHpx5Ih49Dz+YFw3tT9mW3QyNc7F9Awm3nf/+J5BV3E/ER367Hyp+XTkutp4uHB7zGB3ADbfn1tx3p/VCmpNymKCLmBhaB2bMddG5XpANz/6FkRFtsjhoHo2RwXk84NdAp9qHyV+EOQPNMV1exiF2DPh4AR0ntsXwJEYqnjhGkQ+Vb6zsGcWq9izO2HQZ281nScx9yiXKZfzoGGVK96BCKau38mMhcqI44gJtRMHL5ZeMwJTA3kjTVUV2r0DwNtw5Fv3OXVTnIDmvVyyxco73UFV2a7RCBePJ0zoLYAC1g0TT903GUB01h96lfP+6GfrHqo8ndH0V+OanQk0N0a7rBfGUEZSERMNFoEK9F2THtJBWUcL2/N7mEra4bSZM32LTU/WjY/wJH2t/aPDOVFkgKSDnqfKp0+0c/kTwbwEGvPbhuXotjeyCo4uX1DkEXy/ANsB8JwCbwKHGQwNlt0Bh0ngMi9kR7LQ+qv5rCAHrfMIiZrBWdwW6R/kuzDNPlVAoiB1MXnV834MJxJJRXc4=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 30b7a203-e3e2-4c24-44e3-08dd9d678f71
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 May 2025 21:43:47.1518
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uhidyDOEmBWFoTjW8VXVPMnVw51Xs09Trievpsnf05hxyDne5jwmIVpdo6uIbguTb/YGDm9NWAwuJhZCbuGRyDgUOiuxFolYSG8A+PNgs0c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR10MB6349
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-27_10,2025-05-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 phishscore=0 suspectscore=0
 adultscore=0 malwarescore=0 bulkscore=0 mlxscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2505160000
 definitions=main-2505270183
X-Proofpoint-GUID: n3mSaH_npMTHqPDN852r0UvNoR-Z68z7
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI3MDE4MyBTYWx0ZWRfXyqLG84V8VG8u vgnsNw2ItN9WI9R+Qea3kqmnjAacMlTy2jjWZt/jiOsH82wDgmSluNkmFQTaMDlxSzEQ4F5ySzh n2l09iePcJ7Q4gzKbgu41EjP3CGGxV4XujxIM8C+ZtJ5l784q9+QOLKYhhQ1wSKfNFn5YgvPUt7
 XZLF5wyjsEzzDxaufyKuJFSwSAWZPDJt91K/6uNsV6DSaLjAv5PMXDNbADp2n7lvPwB0oAsQEgy kk/ZWSMjfLwCGXEiFgrWY6KfYhOFocjqE0qCio+7h5Wl1FY3xSOpbUm6LkrNEPtdSkrNGMOjtS2 RSEOgvniek9wiDDFbOcL8lG5V3BvcWXdHuH5eWSV8P83PhFV//zDAuLbHuErlWJlVl9nJ7tM9E7
 Krk51/FDSTqtCy7UgmGxHj3dxDyNurirw4CgRc836HxlhH6R9HiVZQqefFWw5uLC2hV7eccx
X-Proofpoint-ORIG-GUID: n3mSaH_npMTHqPDN852r0UvNoR-Z68z7
X-Authority-Analysis: v=2.4 cv=N7MpF39B c=1 sm=1 tr=0 ts=68363216 cx=c_pps a=XiAAW1AwiKB2Y8Wsi+sD2Q==:117 a=XiAAW1AwiKB2Y8Wsi+sD2Q==:17 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19
 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=GoEa3M9JfhUA:10 a=mDV3o1hIAAAA:8 a=yPCof4ZbAAAA:8 a=9_BWUy4-AXFEK9Y5XMsA:9 a=QEXdDO2ut3YA:10 a=ZlQE2zuUOiwA:10
Subject: [oss-security] CVE-2025-5278: Heap Buffer Overflow in GNU Coreutils sort

https://lists.gnu.org/archive/html/bug-coreutils/2025-05/msg00036.html and
https://debbugs.gnu.org/cgi/bugreport.cgi?bug=78507 report:

> I am reporting a heap buffer overflow vulnerability (CWE-122) I've
> discovered in the GNU Coreutils sort utility. This issue affects the
> traditional key specification syntax processing and leads to an
> out-of-bounds read.
> 
> Vulnerability Details
> 
> The vulnerability occurs when the traditional key specification syntax (
> +POS1[.C1][OPTS]) is used with UINTMAX_MAX as the character position value.
> The begfield() function in src/sort.c performs unsafe pointer arithmetic
> that leads to integer wraparound, resulting in a pointer that points one
> byte before the start of an allocated heap buffer.

> The vulnerability is exploitable when:
> 
>    1. A user passes the key specification in traditional format (
>    +0.18446744073709551615R)
>    2. During command-line parsing in main(), this sets key->schar to
>    UINTMAX_MAX
>    3. In fillbuf(), the begfield() function is called to precompute key
>    positions
>    4. The underflow occurs during the line key pointer calculation
>    5. The function returns a pointer before the buffer start
>    6. This invalid pointer is later passed through the call chain:
>       - keycompare() function assigns the pointer to texta
>       - When using -R (random sort), it calls compare_random()
>       - compare_random() calls xstrxfrm() with the invalid pointer
>       - xstrxfrm() calls strxfrm() on the out-of-bounds address
>       - strxfrm() attempts to read the byte before the buffer, triggering
>       the overflow

See the bug report at the above URL's for far more detail.

A maintainer responded with:

> Indeed. I introduced this in coreutils 7.2 (2009).
> One can repro on Fedora for e.g. with:
> 
> _POSIX2_VERSION=200809 LC_ALL=C valgrind sort +0.18446744073709551615R poc_input.txt
> ==984625== Memcheck, a memory error detector
> ==984625== Using Valgrind-3.24.0 and LibVEX; rerun with -h for copyright info
> ==984625== Command: sort +0.18446744073709551615R poc_input.txt
> ==984625==
> ==984625== Invalid read of size 1
> 
> Going back to the more verbose code from coreutils 7.1 avoids the issue.

and appears to have pushed a fix & test case in:

https://cgit.git.savannah.gnu.org/cgit/coreutils.git/commit/?id=8c9602e3a145e9596dc1a63c6ed67865814b6633

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

