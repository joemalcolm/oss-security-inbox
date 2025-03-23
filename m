Received: (qmail 1791 invoked by uid 550); 23 Mar 2025 19:14:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1764 invoked from network); 23 Mar 2025 19:14:34 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2023-11-20; bh=wwxDyPWdSVla+rxp
	EyuNdKnq2MAcmn0d9L+E63ho19g=; b=elfn4xorwmb/A6Udk91xg89XoIZWtz89
	d/7vX1UAuxl4A+bCEfCQHg75pyUPdXH4QqV7SX9Pnc8rK5U8OnN78qBilQBJ1tGv
	qW0RXTl2SfUCqmpLTOS/uBhVfzNt6RKYRc0eUiK0nIbAVyY6JCMVHatJXOWG8y+f
	/aL+rPXKnWE6l6rj3qb0A7KAPFrTmHeXwgNCrSSf6MaeJa/4Wy2+SeuD2JxaNedl
	DbgkPdLbaIvAi7R7EWKehgHPQHWibdgtg2yq41Tk2QXzXIcmx91cWThafwg7FOQy
	/v0inW4cYeES00rGOWmNaXW0urdAepq4AvGc0U71ywIp6BPeUm8vRA==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KTpzInp7RzDm5/3dweWZRF9dYI5YPmkHdhA77gedoCDF4y8KBKV1jMl+R57xQnL9DS2hq2bYvW50HaIWIJEyhq2GvLRQyvQ0veYWnTgZ0cnyXfhORz8hFJKNAFhGEDx3IeEy8Vv7j70c0mJJzAqy1lV+PD6CVQDKKB7Kpts7toC+8Ux71FIZbG1VH2RAkywFCIaH/aPoAFSmwZfcozE0fCcnV/CaI3hl8OrLN2cBcsRb/Iul3ZOQD0Nz5EI7pRFeCkvmU8P9iNz3yqztZYrkd6ATtcfK//IKZ1L0OzcfUYiIVBObuAlJZ7bDw1nEhRghSiq64MmjoLtK65NppdHxtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wwxDyPWdSVla+rxpEyuNdKnq2MAcmn0d9L+E63ho19g=;
 b=UCuE/fs+sWhF+bb7p2l0dt8RoF8wSehUdN1Sd3JifUmloi5QFNAGHnDrnp3BViKAGmtj5xIF/DPDY4AM5qatOzWCAsA5Ej1R+2jjUNf6GO5dBiHYGpIph4wTPxIVOitj7rspdhwnUNOQc3ImSMKi7XFaNNqIK/V/urUIqhctsU9dhWB3m9nuBpe7K1Pm4BwtAYRfE5VZbdtO6jWO65jvIdKQb8oI2aVoCBJL4mYc/sWhREvEjyiLcl+j1PMoe9GLu9TU5mFKloCTRhQH3qbMWnjlXWyhwdrsOtFTwZeTalWtQ0dAOcv4+31LuP9PR4c9KByuD1anLk5+Zs6y3a3rtg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wwxDyPWdSVla+rxpEyuNdKnq2MAcmn0d9L+E63ho19g=;
 b=Xtc/kG0TWRa7SlNRuhuR0C4P7bl2ajoYl7FcBHcbfs0lMRPV3wffQOoBTHMBwJ3Q6zx8FPL/g1VxvD8K/5eMxNJUecbk/cG1UQnPl5QWIRQumAuoQlnE1xRNgivdb5d7WUgqBvebKZA3ID2nTN53+LNKNJYhqQD6BYnfoL+g/ps=
Message-ID: <097b20b8-b6ee-40a5-9116-2cdd4189ae77@oracle.com>
Date: Sun, 23 Mar 2025 12:14:15 -0700
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
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BY5PR04CA0004.namprd04.prod.outlook.com
 (2603:10b6:a03:1d0::14) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|BY5PR10MB4115:EE_
X-MS-Office365-Filtering-Correlation-Id: 25f72a96-c3d9-4b63-d610-08dd6a3ee7a0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?VTJQdjNOTk5kUGIzWi9OSFpYdWhySWF1dGJqem9EQlFzbzhVc2N2Z1ZsMW5h?=
 =?utf-8?B?U2dYU00wWU9nRzNjbEpiRVN5cmhQSlMxM2JITzlxRHkzbzVacG4yOUhJVUIw?=
 =?utf-8?B?cmFDVk9GM2Z3N3RWQ2NoT2dHMncyb05oSnEvcVFla2oxcExscVpqSk5peVhn?=
 =?utf-8?B?RUdRMi80SXAyVmM0dWRaL1IzRUtjNzZsaWVKVy9odm5qOCtqazZRdW4zY0xS?=
 =?utf-8?B?Nk0yT1dmU3gwZDcrRENhU0pOQmlkMC9DWUp6RHFObGlTTS9jOGZhamVHN0kw?=
 =?utf-8?B?MDhuaDY1UGRkQWVlRXRrT1hyZ2ZWNkdwWlc2dVJnYUpKMUVCZTZWanlTSGI2?=
 =?utf-8?B?eHZJZ2pxcUFNRHN3ZFBHcjVqb1liek54QkdmOXJYalBIa0wxMHBkV1ZIQXJZ?=
 =?utf-8?B?cUNiTmlZNVF2cjFDQTF5Qkwwa1V3RnlTM0VBbUVjVHgrTklmQ1VwZEp1RVBl?=
 =?utf-8?B?TkNycFFmYjVUaThva2RrYjVqY2FtcXBqWXlPMnIrdm80OTJQRkJqN0pTdUh0?=
 =?utf-8?B?cXpGM0RselljRjZYKy9TdGZ5b1EyUDExeVlQRHNHVTNlczZMc1FpTHFEQ0E3?=
 =?utf-8?B?MlBsbUFnOEJwS3A0cUFYNzZmZmkrelY1S3BwYW9IN3MvVjh4WEVGVVRUYXZz?=
 =?utf-8?B?UGRpbElhV1FmS2xxd3FKMHMwNjJqV3lVYTU2SHZVZm43enArWmREQzJOVU5Y?=
 =?utf-8?B?MDRaYjVkQXRHeXRSVlBZK3lnWVBkaTl4Y2UyMWhPM0FxUkNHaE9yeWpROWpS?=
 =?utf-8?B?MWhFS1RDRjRMbURQSDVickJBU2pzSWpNL0Vha3dJeGZBZkcxVzZzazlxckdr?=
 =?utf-8?B?dnBhS2NTcmV3TmhXcUdWZGFEU3Z4QUtHWFY0Z2x3YU0zcEIxWjBzMCtXSmlB?=
 =?utf-8?B?OVd1OUZoU2J5azZwVXNwSjNES3Y4elUrREhUUUloOW1aMjUxZCt5U0ZwOXQ3?=
 =?utf-8?B?Wm01dWNzRlBlMEd3dWdLRE5MeVRVK1E0bU5udFpGaUNYQno5ck9xR3FQYUQ3?=
 =?utf-8?B?UDZEdzJmSmlDWmJsRVUxdFpsR2pCWkJ6RDZtYmtSbWp6WjFYYVVqZm5HZ1Zp?=
 =?utf-8?B?ZEFXdGthZzBCTE51emF5aWthZml0OUVXRWd3cmxzYnh2RU5CTmcrZzVxenZJ?=
 =?utf-8?B?dGswanN5T0swdFNjeE1wSU5TMkp1MG05UGUzWGlJQS9mQ2luUHJJWWR6M285?=
 =?utf-8?B?eCt5Ylh1a0d3UFNCdHlNR0daMGl0VS8raE9aanVzZGd2L1pUbG1yZWprU3p4?=
 =?utf-8?B?dDB3ZVlqdVRRbG9WRHlVRCtsa0ttR3pmRENYdW1RTEZHeFZ3SzdIYlMvY25v?=
 =?utf-8?B?TGxFSUdPU3dYdCtKd3lZQmRxZnFhTm9XWkdJTUdLeHA1VEtqdEJjeXQzNXEw?=
 =?utf-8?B?VVRHUTlxOWVGUzVxMUNsdkZ1Ui9EYVdmeVpVUVVqeVdVU2dKK20vWHRJV2dz?=
 =?utf-8?B?ZmJQRG10VkJpbWNnRXdHM2JGRkk1Q3pGNGh5T2xmMm9kSHcvUGl2bnNkcVBa?=
 =?utf-8?B?TjBDbXhrMGNLQzJZRitwY0t2VzBxNi8vNWtBU3REdDhUU1l0TEVrVFIrTS9v?=
 =?utf-8?B?MjFaRlZmVDByZzJBQWl6WXZRK0FBbjd1R2ZDYVFBU29rdUt5VkVFdnhyTHBv?=
 =?utf-8?B?clVVREZ6aVdHZERmTDduL25XbmE3Z3FJZWxkU0RCaGJPWUZZblhKV3lZdmhz?=
 =?utf-8?B?cyttbURQQkJ6VVhMaHdIZ3AzTEFQeVIyK1BXaTQ0MHZsaEZaYi9ZcTBqN1kx?=
 =?utf-8?B?S3YyaFpMM1hrMFZZbjhlSG13K1RQQkJVck1wM2tUczZpeG8zSjJFUWppNVk0?=
 =?utf-8?B?eU9RYkZ1bzIvQ3FVVzZZQkU1ZUxQMW5QdXBla2N1Zmp6TThiUUM0dWJQTk1i?=
 =?utf-8?B?cFN0YkhtcmdMd2grMHQ5Q3ZlUGROUERiM3plN3c0TjBMMmc9PQ==?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?dGpPaTREeVhJRXpCUzU5bGFDKzQvcTBxcmg0K25ucFVWdENOa2tFWXlSMGZX?=
 =?utf-8?B?bGRDdEdmVHlEbi94VlhCTDZMcjJYSFJ5MTU0VVZOVVZ6UkozY20ydURKSDYy?=
 =?utf-8?B?L0tYOVVPZ1JocU5CdzlkVHhqZjBRVUtUeFY0MTU4Q0RFak5kd0VVVlZiK3Ew?=
 =?utf-8?B?NjBKMG0xYndhODlEMDcxYVBHZTJJbk9nR05BOTk3MStwRUR3ZjlycUptVWdy?=
 =?utf-8?B?eEIxNW5WNFF1R3pEcEpDaXRvRmRjR0d5ZDBsYVI1dEdENmpsOERkTDVqbmI0?=
 =?utf-8?B?YjdncENheGE5UXVncUZWeElmMDNmMzZwMzNGdWZ2NkJDdC9NWEtBdWhlK05K?=
 =?utf-8?B?eFRjZk94OUZoTFVkYXczSlJPZGd6REZaY0RIYkU5QThPTnNRZEFTR2MvTUhy?=
 =?utf-8?B?SE5kaW54bWs4aUNhK0MvY0Z3Z1doN2NhYW9jUUxUTmN0VThRVFF4djJYTHFy?=
 =?utf-8?B?a2Z2VWhFRnRIY2VwT252b2JZTExwbTJWV3VzaWJpNERRV2VhVXdTS2cwY3Vh?=
 =?utf-8?B?NnRLRmFtWnVCUVRmUktWdUJRY1FMRXI4MDhIMW56ZkUrTkNLbXdFeG41aXpt?=
 =?utf-8?B?UFJoZVcrcGVDN045bWRFR2VJeldjRTF4bHFQMVMvcTRkbWhZZmJuenBZbUJk?=
 =?utf-8?B?VEF3aDNlenFIa2xhR2xFSkhyWHNZd0lPU3BEQUoyUjRnQ0Zkb0x3K3pvdUVt?=
 =?utf-8?B?OW1qZmlLdS9uSENodGRWemU1YnZ2Qi9HdW1pR1hESDh3aW1WZmltaUJUWDlK?=
 =?utf-8?B?QjRZd3AxTkRJMEFsR2hCcmFEL21vVFVjMy9LaTlQT1BwSTl1ZWZ1L0dvKzFR?=
 =?utf-8?B?UGhhSC8zRmdISjVSWEd2a2hPOC92VlQzYXFuK01kN0RsRkw5MVlsVXYzTmZD?=
 =?utf-8?B?UVpyTDNQYTNtd21lWXJnNm96TkJJbjVFdUR3QjZMTlpaVjg5RW5DVDk5OUVW?=
 =?utf-8?B?cHpVWWFDcm95Wlc5V01oYW1CR2ZKR011MUtKK0c3dWc2T0Z4eWlGWjQrTitq?=
 =?utf-8?B?U1NORzUrdWRRR3dzZ2lBTUtwTDBBODlOOUNwRVFCcEdyT2tFZnkyNGs5R3NI?=
 =?utf-8?B?dDhXTWZWbnRtNThUdVJPdmh5Vit6WERUeDdHdHNEWGJEVmdkcVNIbDY2Wjlh?=
 =?utf-8?B?dHFJUlFRT2plb1lUbDV1dktDeDcvUUNFRUtCNXhxV3Q3bU1QQ3hCSTlXNnZm?=
 =?utf-8?B?cXhzbDRSWG1QaWZuc2ZJNURWQkJvbTZ6Zm9OMk5lQ1V0WDZRUE9LSmluQXlo?=
 =?utf-8?B?L2xvYmF1TEx2TmN6KzBwcGFDdWNXdEJKbk16SGdiUmlUUEh2Z2UyaFJKNmY0?=
 =?utf-8?B?emFYT1c2Y21zMm5qU2RvMFRUd01hK3NLRDhucTR6b2k3ZGcyNmp3V0Rpb055?=
 =?utf-8?B?eEdSNFpPb0FKVkxGTzA1WUNTQzVKam4vbThEZmRrS25lL1VXTkd3NUNab09a?=
 =?utf-8?B?QjQ0WjNaYm9BcjZLUlVYK2JQeGZiZys1MEtCR05wSURoTXNPbUtsSnlNaEZz?=
 =?utf-8?B?bU9LV2Z4YVR0dXhmTWtvRXZLOGNmY1N6bVc0WHh6dDZkYlR1ZVkvSyt4Y1gy?=
 =?utf-8?B?OGhPYVFWNVMvOXcyNjFDV210WXZvbVEyTjgwbVN3UDhzR2NLOGd3dXJkK1Zi?=
 =?utf-8?B?bnA1aHJ1NE9VV1VPTW9TMExGdW1ER1BBQzUvYXdjNWhTbU01QUNuMmVsa3d3?=
 =?utf-8?B?Zy9nbXlDL2kxOFpFemhaK1VWOWwxT1Q2NmQ2YmNueWNZaklNbkNCSUtzejRm?=
 =?utf-8?B?ZDZqRjBsSmVPUTdvTGduVEdMc3UzN3h1L3h0OUUyVFZBTTE4Ym4xR25PQUlY?=
 =?utf-8?B?NXZWK0prV29rR2JRSk4zMHJTTmU2WVErUCt5KzRiL0NVZGlxYlBGNFhlQndF?=
 =?utf-8?B?U1I4bjlqMWF2Mm1sb2JiMVNxZytESmg4OFdEQzZhckhXNHp3STFRb0x1UzY4?=
 =?utf-8?B?OFpmSW1SRW9pM1RpWXBsQ1JScFM1MWlFU1JqR2UzY3FuSXF5WStjbnpMZTla?=
 =?utf-8?B?TXJDQ0NYRFJPSUtIYVBIb05udUNsamsrWnZicjd2ZWpyVlR2bkY0dGNCaTNm?=
 =?utf-8?B?MlVFdDcxd0RQWmRNWVEvTm0yaGxsWVdwbTNhTERoVHh5ZjdGL2NMMVFndSs0?=
 =?utf-8?B?WXhFNTlMTHg5clVQdTF1RlA2QmZPODcxVUZSSEg3MDdvZElMNXMzeml5TGZh?=
 =?utf-8?B?b0E9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	Rlw7qCD7jKdk9XOLjNmKk/iXZQNmbsYx4SM6jEwph2cCfpP6ZU7axHhUE6lIIB4a6iU5VmkF5Ssl5tm8AL6oOmM+4FeRxRYvIXckwhEqcYc47R2F6X7n90p4sF9TV/bDp5hgeoxUI9IAnGVxH1XMInhMk5MRvvm+QnWay7LcEcaOo9ez4q5WLXlycwA9gO2wIsL1mPp+aelmw1EPgIevRu3MQpunpI18PDsRjKP3zUMWjOiuTZWswv9E11nb4YppVKr+f+tqTuSX8utD0CVcj8PwmR0/OU81VtAshOvm4bH8EN0elUUdVjtZPh1XiJr0Hy6JcbHgvD59sywbTUieLc0LUE4Abwvctk5HoQlXB7t0y8/sr3l76BnDEPg3ekTcJl8iCFMVPpTELZPJC5BiZq99sAK6awYxssVemZ7JVOssfMbI8c9pbNyt94QkHoJ9NPsAw12nh5kjHshfB2aTLj7Twr20AX50wEMm/o+Yn0wyueEsZfpLMwv5dKlwc0hFd7JMG+qsunmnSwjUZYixIefmmlGB7x67IrqCk8utxvhcBkf1sxXV3UTq24+4meLF3QcnMMIeKEs+Oag4TlGMUkbjL8MYRYadefScchhDgP0=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 25f72a96-c3d9-4b63-d610-08dd6a3ee7a0
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Mar 2025 19:14:16.4642
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZZzw8x7ev9xdO+Tzk7vkk+mad02rFAhRqZ1W5J/uCBWkYDDkXVKG5nEDBjsEtPQ+YSjTJZHTUkYGhX0x/1EQJ0Ypln2iPk2EzyU93U7dNso=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR10MB4115
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-23_09,2025-03-21_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 bulkscore=0 suspectscore=0
 adultscore=0 malwarescore=0 spamscore=0 mlxlogscore=999 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2502280000
 definitions=main-2503230137
X-Proofpoint-ORIG-GUID: OW1-Gh1nHOozYGV7nOhH9AnXSN4iz3yl
X-Proofpoint-GUID: OW1-Gh1nHOozYGV7nOhH9AnXSN4iz3yl
Subject: [oss-security] CVE-2025-29927: Authorization Bypass in Next.js
 Middleware

https://nextjs.org/blog/cve-2025-29927 announces:

> Next.js version 15.2.3 has been released to address a security vulnerability
> (CVE-2025-29927). Additionally, backported patches are available.
> 
> We recommend that all self-hosted Next.js deployments using "next start" and
> "output: 'standalone'" should update immediately.
> 
> Continue reading for more details on the CVE.
> 
> Timeline
> 
>     2025-02-27T06:03Z: Disclosure to Next.js team via GitHub private
>     		       vulnerability reporting
>     2025-03-14T17:13Z: Next.js team started triaging the report
>     2025-03-14T19:08Z: Patch pushed for Next.js 15.x
>     2025-03-14T19:26Z: Patch pushed for Next.js 14.x
>     2025-03-17T22:44Z: Next.js 14.2.25 released
>     2025-03-18T00:23Z: Next.js 15.2.3 released
>     2025-03-18T18:03Z: CVE-2025-29927 issued by GitHub
>     2025-03-21T10:17Z: Security Advisory published
>     2025-03-22T21:21Z: Next.js 13.5.9 released
>     2025-03-23T06:44Z: Next.js 12.3.5 released
> 
> Vulnerability details
> 
> Next.js uses an internal header "x-middleware-subrequest" to prevent recursive
> requests from triggering infinite loops. The security report showed it was
> possible to skip running Middleware, which could allow requests to skip
> critical checks—such as authorization cookie validation—before reaching routes.
> 
> Impact scope
> 
>   Affected
> 
>     Self-hosted Next.js applications using Middleware ("next start" with
>      "output: 'standalone'")
>     This affects you if you rely on Middleware for auth or security checks,
>      which are not then validated later in your application.
>     Applications using Cloudflare can turn on a Managed WAF rule
> 
>   Not affected
> 
>     Applications hosted on Vercel
>     Applications hosted on Netlify
>     Applications deployed as static exports (Middleware not executed)
> 
> Patched versions
> 
>     For Next.js 15.x, this issue is fixed in 15.2.3
>     For Next.js 14.x, this issue is fixed in 14.2.25
>     For Next.js 13.x, this issue is fixed in 13.5.9
>     For Next.js 12.x, this issue is fixed in 12.3.5
> 
> If patching to a safe version is infeasible, it is recommended that you prevent
> external user requests which contain the "x-middleware-subrequest" header from
> reaching your Next.js application.
> 
> Our security responsibility
> 
> Next.js has published 16 security advisories since 2016. Over time, we've
> continued to improve how we gather, patch, and disclose vulnerabilities.
> 
> GitHub Security Advisories and CVEs are industry-standard approaches to
> notifying users, vendors, and companies of vulnerabilities in software.
> While we have published a CVE, we missed the mark on partner communications.
> 
> To help us more proactively work with partners depending on Next.js, and other
> infrastructure providers, we are opening a partner mailing list. Please reach
> out to partners@nextjs.org to be included.


https://github.com/vercel/next.js/security/advisories/GHSA-f82v-jwr5-mffw adds:

> Credits
> 
>     Allam Rachid (zhero;)
>     Allam Yasser (inzo_)



-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

