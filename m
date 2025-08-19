Received: (qmail 20241 invoked by uid 550); 19 Aug 2025 01:54:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 20206 invoked from network); 19 Aug 2025 01:54:09 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	corp-2025-04-25; bh=WJaWbOncYWsQ44+sOhczDkhklEeZLyIxktcXEhvSACU=; b=
	Z1+AkK+XOs2GYsvIruuT9srIfQPEuDbZbAYTnJ3gmHsdYRe40o8TMlLWVJtSp55e
	vMb0mHjKWLPo0j30wjhKD5Yc5kwmyV0RnIrS6b/JUkFKHxVxuHb0HrGAdg2YiIzn
	9visNGAVRYGYt4lyEZ6IiPdmuJesgxB2s2J0IbL1RZUpu8teJMI4jgLDSxUyJ9N+
	QXmaRl79u0366y4eXZ3e0F5bQyySCTprxFf5GQIYZUS/eJEt+OAbDZ4IDIB6Bc3E
	xIb/OI9jK5fKSUOH7GP74TlXDXxqVK74zMSeVAEzwZQ+vIn1lokEDN70ekVg1Ae1
	Jw8qZdMHl1/ufYk0XoToEw==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Pnk99r7k3INF8maxfxNnpHGX6lq7oASUqdgyTdUPWjDYg5fczy/r+JXSC/7KgdxUaRGJ5CHouSTTEGdAyf8eVxs/0U/pdLG0tR+GzorMsgxozCa5TNKjn1oaPy1agLIFLwNrOK+PG3a/v1WaG1l4XScKPNqkeZhP1SNUlMiViYg6vZRrbM2LAI4pvCJ/4/7dzbKKFUIw/9MtNSC2H9313XNftCvlfN32PbakA+fPbjKF1KFafBIIL5P58o3UaC7dSKByommjr1taXW8OAmptsuNQmkECQx+zXyLa9sB+hiny3rF7uwLun7oIZlVVU1g+PGUgkRG6tcoXR5ZAM7mdHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WJaWbOncYWsQ44+sOhczDkhklEeZLyIxktcXEhvSACU=;
 b=WcJgtiq5IBUEwtXU39SllPrnoGU0VuyCfQJRI9Ta7wsOekICPcbuHS8ppFZsp+g0bHw4LhdrroN1wX4ti/KZe91FBgxJxhrfHdRCNF+xOZsJqAoCHVdzjDEMABanRIsAPOjG0hBYs911/5ZyXEUATOzUxl468l11z0yTy9jvwIRLZSXDdVVy5it+Qus9qqIBlZUSsO1+pifkRKivikL8fmQMmve6drMQHdyNiKWqtWIZFWXi0Fqn/r7tfr8GyYVsz1dCY9hD2Fc1jdbsAPXSlui95x2uEaCK+sPA45obZphWiaqciDLXmPgMcNQNnS1jabq5mQWevA+yg3hWzDiqhg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WJaWbOncYWsQ44+sOhczDkhklEeZLyIxktcXEhvSACU=;
 b=yNRTf8JvqCS8CTwpmDsI8t7gWRUZMjMAVJ5q43q7NAbI5OSSWpoN0s9RKRwCnlJtK32YRoeKVIE3hus6DFynJChsFg7jaUP9yr/g798cTMwjXrxPmME8sTBunkb4PQQIJPcUrsAm/YUFSZ12IJt19emLteeiNONEmdzoLKRtzgE=
Message-ID: <5eaf834a-f27c-4f17-a184-c9b0c98aedf7@oracle.com>
Date: Mon, 18 Aug 2025 18:53:52 -0700
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
References: <CALDM2HfAOzs+zr3XLCDAKH8oOosigdaNooUANDf=Ez5mLSvQcQ@mail.gmail.com>
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
In-Reply-To: <CALDM2HfAOzs+zr3XLCDAKH8oOosigdaNooUANDf=Ez5mLSvQcQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR03CA0018.namprd03.prod.outlook.com
 (2603:10b6:a03:33a::23) To BL3PR10MB6140.namprd10.prod.outlook.com
 (2603:10b6:208:3bb::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR10MB6140:EE_|SA1PR10MB5781:EE_
X-MS-Office365-Filtering-Correlation-Id: 8a50b85b-df56-41f1-a726-08dddec3412f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?dHhRT2gzVWN4T0VjVUVzb1Y1VmF0L3J4NVBsMzJSY1o1SHdUZjRFZFYyZGc0?=
 =?utf-8?B?V1l4dnlram9zdDVkb1gvcHR0aHZhRTVFNkhoYzY1Z25sazdtd2huOERyd0Vr?=
 =?utf-8?B?QStQa0VhUHRsWEV1ZU5USEdhNGRBMlBFZkZ3TVpTWElwVnhUa2xhWXN1UWY3?=
 =?utf-8?B?MkJBeXgwazE2cUxFazdqenpMTlRvRnE4bjI5WVN0ZWxnR09UUXVjNVN6T2xh?=
 =?utf-8?B?dDdENkFYWlRlR3liS1drVzFoN1dZR2M5NWMxUWZuN1hYZWJwZUtTc1Z4a2c4?=
 =?utf-8?B?Z2hYYmwrVVZTRGR6eUxpMHBmZVNXZ0NyQzIxSk9FaDRIVXFRVHN0bVZOS21Y?=
 =?utf-8?B?cTBJRkIvNndodFhwbE9IdUplV3kxWjgvNTcxcEViOHpwTEJTMFloYmR6RFV1?=
 =?utf-8?B?MWlLRUdVY3BYK05vUFFHaW5sZXFzMkJLRGFKdVhuNTNyR0t2OS9xQmhEY21y?=
 =?utf-8?B?WTR3VGFyaDRNUk84cCticzJIb1NFNTJ5dTVFeDg5bDVxWVpVUjdJVW96Tldt?=
 =?utf-8?B?WFdrVlVhN0NTTTdid25PYmpabnhoWDRVZVpZSVZVb0hVSXpDNUdYNm5zZWFx?=
 =?utf-8?B?T3M2Mmx2VjBpTUVkNXQ4N09FaGZWdm5EVkttUW4wVXFlYVBKY0s2Vk9KMnhl?=
 =?utf-8?B?VE14YmVuZGdHdnEzdmxvM2QyUDZHYldvbXRZdUdBRXY0dkhveXN1Vnp0Z0Y3?=
 =?utf-8?B?eWw3aU92eGxIQ29OSWlOWUNGZFhBbDdxSG5rek8yenVyNzM2KzNZU1dBeVAz?=
 =?utf-8?B?UXpPMzEzWnJNVW8xNDE0U3RVTUlFc1lRU2JDRVZIMENhamV6WksxVXJYOGM0?=
 =?utf-8?B?R2dTbjBiRzJXMVdkV1U0bWY3ZzF3VnRybnhpMmNEOUdPNXVSUEZweStMM1lq?=
 =?utf-8?B?WGZ0YUpuNVhXbVhLTEoxaStza1JqSXRpTDg5Z2hjdjRxQ3B2K2JMWUVFMm9q?=
 =?utf-8?B?bHhhd1haa3VGcXZKL1dkd0R0QnFGMmJXK3ppS1NDQjJWbWgvU3J3bG14Y1dx?=
 =?utf-8?B?RmRSVy9OR2VTT0EveEFNbkxyWHFQbVptVHRXT3FuU3M0eWtDYjk2ck9zS1lR?=
 =?utf-8?B?dzZjRGtJWlBEbHREdlF0eUlnSmh4bzlhd0JjZThCWXpJSzNPaVpXUXJ3N29p?=
 =?utf-8?B?K3BoU2V6OEhJMHhIczBENEp1ejJ2dThKbWdGakNpcTROTXFvTlAweWFDOE5V?=
 =?utf-8?B?RDhlbVEwWERCSEYwYnJOZXkybVBwejNpanVHeFZzMEhpeExFaDFTT3NmUW5k?=
 =?utf-8?B?d2FxVEpGbjFBdHdhOGdwQ1o3N3ZmK1VWRjBvbnZva1dKVTcyNEhSTUQ1OGxP?=
 =?utf-8?B?UVdTN1BMWlBLUSs1bVh5YmRqOGhmOExvNUU0c29pL2tLSllCS05mTFlnSGJs?=
 =?utf-8?B?UXZhbTh3eXFUVXpDdDkzaEliZ01VTGQ4OWtCbkF4OXZpVmpKdW82V3ZJMkpj?=
 =?utf-8?B?bzNDNkVNRXNpVTc0anQ3QTRlWjRZMnhzbEI4ZTdPQkV6c3lpeE1Cc3pYTDh5?=
 =?utf-8?B?b0FuMm9EWXFkOHUxTE1IdTRHeis3ODc4WGdGV1B1aVhSd0ZrQmtCc3dVd3Vh?=
 =?utf-8?B?TzRjTVQxdUp4NWF0Vzc3eFQ5WnVyOVRVY2NrL0RVVjRyOTNWSUhxakhyWUZo?=
 =?utf-8?B?UTVjMGw4enlkYlB2UDRkeHN4YmhyWGhVYUpQSGpQckdoN1BTNnd1RDhmRFR6?=
 =?utf-8?B?N2M2SWRuMVA4UFI2eGZCZjFKcnFXNklGTGNOQ1JReDQxRFFkN05jcXhrRXA2?=
 =?utf-8?B?QmxoQWg2Y2hyY2ZyUi9NVnQvYkV3U1B3STlqNm1oaFcySnI0QzUrMHJyQmgw?=
 =?utf-8?Q?rQABMOTt2D0TDzG8+MvurOCWxVC/xYBRTk1L0=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL3PR10MB6140.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?TU45M3ZGb0NaOUpST0xJRE5PUlAzUTNVb2JSRFZKbk5WK2FnWHl5K2JxcXZN?=
 =?utf-8?B?a1lQdlhlM214VjF3aHRPWTdBYmNmTkZpazVKZmlIaldpeS9DUTNyLzE3VzBN?=
 =?utf-8?B?T3hFQmdOT1JmY05yc3hrTjA2SWdzT0RCTzc4NWlqZFV6QTVxT1IrdUdyNFZR?=
 =?utf-8?B?b21FMVV3KzJOUytPOVNtTHJzTkNoNGZmSWQyWFBZUXBlQ2taaWdDem5ZYXZU?=
 =?utf-8?B?Yjk1K0t5WGZwYUdxRVg1bkRRTTBXdFJKNGNzckppY1NpYXVQcUZtL0wzMmVV?=
 =?utf-8?B?Q1Z5amJtU3ZYajU4Y1RpVEh2YkNrMjliVTJMdUk4M1VOYVdITWdpMGY3Tmxu?=
 =?utf-8?B?alpmVVBqZWdnSlBrQTNQYXFubWs2cVpKcysxNThDOHRDaTI0MHc5SDYxMVJP?=
 =?utf-8?B?Q0ZsRHpsODNvekt5VVJKMUNXektlZzdNTXM0QkhudUtmZ0RkRThveXNXMUZs?=
 =?utf-8?B?MjJ4YWU1WVJGY2hScERqVmNSUW1ZY1d0NzcxdHN2bXNueW44T3ZYMjhJTVZz?=
 =?utf-8?B?UDZJTWVkeTBycTBUMVFIQ0J1TFlXN2g2OUN5V3RrbXlOWmVqMEdPLzJkQ2ta?=
 =?utf-8?B?RE1MS1o1YXRxVWtxamNUeDVTME4xNlpRMVZOeWx2S2V2ZGlsR3kwMGg0OTRZ?=
 =?utf-8?B?TzBKcXExeGpvbUx5d2R1YVF2T2syNjZheWZ5UTh5VWYzNFhpbzdQNW9oQWVu?=
 =?utf-8?B?c2p4Q1V5QThsN3c5ZUFRSnZ6U2dOSUl0RGVTd3NNVVgzY2hyYThPcGcrYTRu?=
 =?utf-8?B?bjhIL3JvUERlQXdjTldEM0hRTy90V25pWVczMllRVGhYenNRc1U0aUlUdDFU?=
 =?utf-8?B?d25rWW1RSG9IL2Jnc2FINkdqVGJ2NGQzVmpwMERvbW01M1ZFVHZsN2EvbXoy?=
 =?utf-8?B?SkVwdTFJVFo3eXRTNkJHMnZIdGc0amFxY0Q4M25VQ2k2a2R0Y1NmdHlIbkps?=
 =?utf-8?B?VzVXTFp2RWpyZUVYK2todXdhV2h5aU5Tb3Z5VU5sQW5oMmZBVmEwVnlOeU05?=
 =?utf-8?B?WVR6U0tPV01WcnBRcFBFQWE3MUpNbm5KaXRUK0w2OUo2T1AwenUxbjk0TXhn?=
 =?utf-8?B?NE5pSEgvZlJCc05Gc20rdUhXRFBSU3pFc3FtenpyMjdKd0F0L3ZYWVdVeEND?=
 =?utf-8?B?MDBacjhtTXdJUEJQcHd1YjhWdm1CZ0M0QVhSWGFHS3RZZWc0b0E2RzRXNWUx?=
 =?utf-8?B?V1doYVJDbWFZZFpkOTV0UEM4QW01WVRjREJXUVdJM1k2MmtBRllyK0paenF2?=
 =?utf-8?B?ZGtNd1BqTUgxMmU3MVZwUnJCWFlRNXBMaGUxaUNTcVZFM1d2Z05jRFlRL21p?=
 =?utf-8?B?b2NUeVIwVXFJSS9BTnd3bk9CY2xXTDFRZHpJc1hSWWt4MjdZS20vU3ZZdVZ0?=
 =?utf-8?B?ZVNUSGwwdUMxTnA1YW5VQUY2ay9JMHAzM05pdXlweHRhZ216MnE1UDQyYXYz?=
 =?utf-8?B?amdKbUFuVmRXSmFNVUd2TUNjQlREdGsxL0taM29rUXhJZFkvZXJHWUQ4OS83?=
 =?utf-8?B?RW5ZSkxZYmEzWGFMWG50RGFGb0VMUG9TbFpQT2hqTFh2cnhzU0FYMlJHVFRu?=
 =?utf-8?B?ZDRteEYvbExxVHAwWHJUWjZBbWJOOWRmSVpkc1MvQWUyNWFwMzF3bDNRUGRu?=
 =?utf-8?B?a2RiTU4yczNhWkJ4bnBWbkdzMWNiZFU4cjRtbzVkNE5QTXcrb1J6Z3FxeDRt?=
 =?utf-8?B?T3RITjNWeFoxMFRUM01qWk9aNGF2UkEvZHI2MWNxeEcrblpyVlZZTDBFZWVK?=
 =?utf-8?B?TTNmODlWU2FDR1B4ak5zZTFWdW1wNWZnejFxSlJBaHFXWkFtU0FCdjJseitt?=
 =?utf-8?B?V0ppdlc3TDU3aTV0Q0xwK0RYa2c2VE8wWFRGb2k4eVZLcjNneWNGVGhKL2VH?=
 =?utf-8?B?cGZLM3JRdWlqNVdRbE9YYTNmQU9ZM1V5c1BINzcxRFdXN2pWdHdhRTNTWndv?=
 =?utf-8?B?d1lITUVYTXRZeHZ6c3EyNC8zVHpwTVJncHZqQ25HWGRFelVnbGRYelR5TjQ0?=
 =?utf-8?B?NGNOdEg0YU96RFh3L0NUR1Ftdk9uLzdRMWdNcURKK29obzdGYzRiZEhpeVoz?=
 =?utf-8?B?T1k0ZGN0RGJETDNYL2xBU2lEUTY1Z0I3R01vSTAxL1gxUHNCT0xBeUpmMVRY?=
 =?utf-8?B?MitUd09VOHVQaHlNc1ptcW8rckcySkQ4RGwrS1hPQ3ZhOWpOZzlybVdUZ0l0?=
 =?utf-8?B?TGc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	ZxxLM1CQaBSsX2MpukuWiI47/nK0CDh8ZPwn/uAsIuCphldj4MIAE/3FwpA4dXgxKxyfmAMLYt3Zx14nqcxVFx4VCCWO2cdxsUKckWai0H9KV9JXwqsxREPTVaNDNIliOlztICD76ldDvJKKcGv1QvdwuXD64Bnx3k+RvP1hyQgI12/K0gEcEg9LA4cbeNE3mZ3SSHpYl6/BpwdVbLHQevAWz7z81d3paOhakU3JhHfXk6JJYhh+n6f583wxaIWP98cmpXEBnpDoOK+/bj+S7sZtjjv0b6xhHexyPKvRzkrK33vMIV7FmItbsXPOSw0bM0itLVG4Ezsg56DntVfntUCF/KL3eV9qxn5La0+pKMVgnYvcnq4cjGfKeiXXLt+aAacCkISjIvS8pFUQkdGdtgbEUpS93zCVp+W0bCZYpKdWfXbhaPaR2PQau0ok2wj6vYrBPbVCV877pdPdBzLpOJS5i/c0RzH0zqub95aXVCf9qNJf3zX0DIaZ3AJbNFDwoT2LdN99OhMA1pvD3gI0dUgxAkhkB8Fv1g2ZVrHFg+BgAAIdETASzIDXaSRsTNKfFY326VT/qR6lggVkj1DDkpLnkuRsQpnBHtas6Qf9XzE=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8a50b85b-df56-41f1-a726-08dddec3412f
X-MS-Exchange-CrossTenant-AuthSource: BL3PR10MB6140.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Aug 2025 01:53:55.3315
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /8U6qAtDAoMLQxm9N4DQI06irOo5bfqwhpGn0IODry263a3eO/ant/26tgltyGxXw9fCfsn4hI0wX4BuQXFXtBa4wOSl/+xgWPSuw8O42UU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR10MB5781
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-19_01,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 mlxlogscore=999 adultscore=0 phishscore=0 bulkscore=0 mlxscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2507300000 definitions=main-2508190016
X-Authority-Analysis: v=2.4 cv=fcOty1QF c=1 sm=1 tr=0 ts=68a3d937 b=1 cx=c_pps
 a=qoll8+KPOyaMroiJ2sR5sw==:117 a=qoll8+KPOyaMroiJ2sR5sw==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19
 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=2OwXVqhp2XgA:10 a=GoEa3M9JfhUA:10 a=75i-Qe8zAAAA:8 a=yPCof4ZbAAAA:8
 a=B-PFmUvApIqhHXUUwygA:9 a=QEXdDO2ut3YA:10 a=ZXulRonScM0A:10
 a=zZCYzV9kfG8A:10 a=JhvuNk6Odt_uCNg6hV1m:22 cc=ntf awl=host:12070
X-Proofpoint-GUID: 9jpPYdaxcJhXmMkv23wjb0BFaCiYkBiH
X-Proofpoint-ORIG-GUID: 9jpPYdaxcJhXmMkv23wjb0BFaCiYkBiH
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODE5MDAxNiBTYWx0ZWRfX/IJAJqxZgx2l
 i6/9BLSN6SJ4uXGhaerCTCPDCiCBnVPf89NErI4YKueZCJwbz0FsuhmstJOOPPqyUy5VkLwHn6K
 OLCumkS/zKJIvxYLc8tbVLt5Nu07hOlBokkYeaye/IOXXaQ/KbRGD6UyGRLHfHVoXWpwImWsfzW
 6PdmADucooBypjU7z+0acAoVexwtTLzqsJEr+A09WAY0lsXiwK2eZBOS8o+fijf+CP4D6XZVJj/
 MG/lfoodbk1+YnlsBeTK0QoP/+VqitIeVai2a9oksovMJcez9++eL0m3NyLg9AKs3mfm2cYiIWD
 eCC9/0lQWzalHXio5e6d3/Hcty+l1loYmPmthy8iR/d16MdNC09giQQbLMPo2IRrPtW73yI3ZuI
 /KGFGVd3iKDMm3nuCPmn/MHMU9ld5P9W96Awgfe+5RbnfC1B+8zMPVmoOuaop9HmdrtHHkio
Subject: Re: [oss-security] RSYNC: 6 vulnerabilities

On 1/14/25 08:53, Nick Tait wrote:
> Hello OSS-security,
> 
> Two independent groups of researchers have identified a total of 6
> vulnerabilities in rsync. In the most severe CVE, an attacker only requires
> anonymous read access to a rsync server, such as a public mirror, to
> execute arbitrary code on the machine the server is running on.

The researchers responsible for #1-#5 on that list have now published their
writeup in https://phrack.org/issues/72/11_md#article .

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
