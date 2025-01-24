Received: (qmail 30676 invoked by uid 550); 24 Jan 2025 18:55:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30598 invoked from network); 24 Jan 2025 18:55:54 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	corp-2023-11-20; bh=Qt/35EkQLy/DqTPg79pi9YlT7gj7KtWEx6ApHxo/pEU=; b=
	nC2j8/bOQHWgNFcJONnrSScomVfGNtk+jKA5PJz4fnE89DFWc2W6pluUL/1ssKG9
	6NXlBox3MVCxM4CFtyyv9DJFFVLvfq+Kba8bcGi7ji591fo8vhoNd5p6wGmgRk39
	ta1FQIeTzJupwLw9hYUkrZgNKM+p80HhwDRXoYBL24qT7r/Cbpb+Hi0YahObjuGn
	i3iZpz8wusm0szEWnlCziL7fWsoBf/Sd69m0CdrXoU6NjqvTwoyBrCX4Km8mjIl8
	eTWfg/l2zFzNn7+aHtQtHa4fsChlUxGoBibMg5LfXA0Ul7hfg/yo11TpCc8zh8Jn
	hCVkI0cduUJ5LCbgX6dFTQ==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uG3NOEvL+oLJg/7zVDOFod6LwM+obKgfM/4pfGSxG7SV4nmoz50bR5iqH3KNMBm6fUKCVuqrAAJX8sP04SnwZLmCjkDvuvCwY137xyUYnxA8WKdtx9M+06mLBAOV2SJx69s1YluVDvpkpzyCF4SN7GHAE+1U4Pbivqn16WdeHRd346mUWNzwkoegyawQrxwQEn2gxK027IOcRWm+WSuSTJ6KjgCrktej0znyBclIkG1tHFqTqCSrXYJYS4QQbN/rEedaifpLD6kgmUp6EXOzOGPwkGkl/AdPTjyN6GrGLQyg6tDwCA0IomOL6a+cT7Z+H8r68nTdqZ/ZnSKg0uRMUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Qt/35EkQLy/DqTPg79pi9YlT7gj7KtWEx6ApHxo/pEU=;
 b=i5wzI+YnFMrhuS1z8zj1FdAJiy2m23lrMXCNP/I/SMfFy6uzuefpGhhhYVFAuBbQXToXATK/zIKH+1Lq+qa3Xk4RxOoE9dw5ds77MKYaVta60EgrIWYyZB2FtL6/IIqQ53t3g1qwhBSsJLzpvhLdvLAcAWDKEn6V8ncCTxFaqEGmfglo1tQUIWrYWcFv642EGNKv21ILLQ9WRbD/bt/Zs7IZbQxqPucrazLfDkpTe9/5B1bK1m6O18ufCshJy2Yhn0k8FfdLdu/gWjJaELrAdolToRGaQlXpLGBk+pW4WGpCwt/VT4UeMWUWMY4LnltuhgdX14jatiRKArclswk6IQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Qt/35EkQLy/DqTPg79pi9YlT7gj7KtWEx6ApHxo/pEU=;
 b=GyaBApa4JV63doOtBvpAtjjBHKx2e8MuOzGPUIlHtD/Pg6HEdmYjcG7YgzILkLh16Zgd4u56++hmKTZy6RO5u0CGn2OVEVPxqYOil4jy2/hPrJb6UIx/gR4manzNu1+vzkB5x3Ul2aq00F5Ol1b5naQtrOClwuHME6vJkGspCgA=
Message-ID: <0a34f769-2a8d-4726-b9d7-6238ec3846e7@oracle.com>
Date: Fri, 24 Jan 2025 10:55:39 -0800
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
References: <Z4__rJ3_SmmtEIsG@netmeister.org>
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
In-Reply-To: <Z4__rJ3_SmmtEIsG@netmeister.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR03CA0383.namprd03.prod.outlook.com
 (2603:10b6:a03:3a1::28) To BN0PR10MB4997.namprd10.prod.outlook.com
 (2603:10b6:408:12b::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN0PR10MB4997:EE_|CH0PR10MB5148:EE_
X-MS-Office365-Filtering-Correlation-Id: 0daa6769-b465-4479-4c58-08dd3ca8b31e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?NG02allFeTlXWFYwalZVSnZnMEVveUQweHhzeDFRU2JZTndKbklnYkxkVzJQ?=
 =?utf-8?B?RkxvWWdLMjA0RGJZYURrbXNmaXJsQ00rTGRYMGVlcVZuaG9JVmgyYlExd1A2?=
 =?utf-8?B?ZXRDS3FLMkNxcHRTYXVFQjRoOGhZaXNKTnRsTlpIeldjNUNJaGVDUUtoMDBh?=
 =?utf-8?B?K0o0SzZocTlYM0psRXJjOE8zQ25yRmhicm9UbE1kZnUxZ2Y0RFc3YVJCY0h6?=
 =?utf-8?B?ZHR6aHU4TEw3cnQrUnBOTmZ4TlVKNHRtejVhOEpoV2lOcUp5WWd1czZvcDdU?=
 =?utf-8?B?WFVNcGFYOHI1RkpBaGZGK2lPN1pHZDNZY0xKNlNzd2dRL0VSaWtGcFk4NVJp?=
 =?utf-8?B?bE1LenFFcWF0bTlwL1NDVmNCc3gwZVVCUG03THZFcFR2a2R2R3lUOUwwVktC?=
 =?utf-8?B?TitGMnRJQWNzRHFleXY0OGplcU80cmFoMTd4aUFocW1yQ1BFY0ZWQ1c1YlZE?=
 =?utf-8?B?WTdyV0tIcG9Sa2FTeEpYME5Mc25vR09CZXZ2UTZDRDZMbEViQUNNbmY5TkVx?=
 =?utf-8?B?RXBUMVU1citiMEdzYUQzaE1uWXd5UGNuL01KV1VvRVlVM214UnpYeXlXbXlp?=
 =?utf-8?B?aDU5MnZFSUsrR2d6ZVJCTHZIcUQ3YUFNK0VSMFJzMmJuZllEZk5YQ3F4Szdh?=
 =?utf-8?B?bHByWGo2aEpLN0dMMGJSQjlVV3Jpam1RcEM2azNkUXRYZ3VNQlc2dTJmc1NE?=
 =?utf-8?B?SzVySzRIajkvWFdFeXBnS0JZRFZOMHZ0WE1JMTFGdTlYbEkxK3pUei9ES3I2?=
 =?utf-8?B?MXBjY2hCTG1TRHRGamdZd2R0cVRQZHBDNkNPVmpzdnZydGRkYUJsbllVcEtz?=
 =?utf-8?B?azVuVlZjdG16S25sb2F1THoza0I5T2l0V3YvOWhsdStmc0xLdU9kem54SzBL?=
 =?utf-8?B?QnRBSVhLeDJsb1F6d1lrOXdnRnAwVDFtdllELzIzdzJsQ1R3bWt4RHFwcWl2?=
 =?utf-8?B?cnJjcFViL3J3WTNFd3NVTmsyczdGMndyc1IwQ01TS1FkMTFyNjNRMmFpbmRm?=
 =?utf-8?B?ZnNKb2pzZ1NIUGp5UHY2cUNvNjg5WmlMNFNVajRhQ0FoSXlmbUkwUE8vMlJP?=
 =?utf-8?B?T2ZacUtENlh0Qm5KK0NNOE1ZdGpaRmlJZ3hzSWFUZzdONitwNCt3enBFdTNE?=
 =?utf-8?B?eWFiRjEzQ0drdHFvOU1RUk8zYkVWa09XNFZZdVBlNDhva2FVYW1ITWlBRGVT?=
 =?utf-8?B?dzhhTHB2OUNtazZ1WnUvQzJuRGVwQk5hOHcyMFlkWTJaM2Y3ZG11WEg3dE5z?=
 =?utf-8?B?U3krVkdqTjBKRGcvUWsrb0IvQkNGUFlDYWt2NDJ6M3F3MkNoVW9Kc05PYkN0?=
 =?utf-8?B?MlZydTZ5cGpDSWxRaW5SUHIza1BFZWNSYkRxRm9IT2oveDRyMVhtSWxmRFFi?=
 =?utf-8?B?V2RxcTFhTGc5a204SFhFZC9STmJZYUpWYm5KdTErN1k0R0owNUwzZXNSMmFI?=
 =?utf-8?B?bzlYK0lIM2R0ZERGV3J5NjF2bzJpZVRiaVdjNzUvRmZWM2JON2trM2ovc0oz?=
 =?utf-8?B?WjRYdkhPamVsM29tTDdSZ0VHRTJSbkVwd1NueTJLUDkzS2VPMzliQjB4M0tL?=
 =?utf-8?B?ejM2ejFjTXBwNDFqNmV4bUprNlNGbHFGd2o4dTRqeWl6bGlRdDJGRldtNGJR?=
 =?utf-8?B?ZE5IeDhjUGNXR0NiT0VmaHREK3FhWHp4UlgxMkkwTlNhWG5ienBhc0ZTZXVC?=
 =?utf-8?B?S29tSTl4cFhTcFM0bWl6SlJ5ajhCZFFhR29WRE9mVHIzSS9PalZCam5DbVR5?=
 =?utf-8?B?OTNHNjl0am43cm9sSmlGamoyckY0RjVmanZYMzdING9LcUhOWUIvQ2hyM24w?=
 =?utf-8?B?bC93VERyVDNReXlWOEZkUT09?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN0PR10MB4997.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?L3p2ajNBNEEzTGdOZStyd3R2bkFrejBZTGFzU3ltZjdwSGJQL01WcE45QTQ3?=
 =?utf-8?B?Q2lDbUVtMEhRUGNnViszaVN2NkFJZmpkNlZDdjVXbFVYU0h4bUF2NHU4aFFH?=
 =?utf-8?B?SllJdEcxMFBtLzQxNTlYTHI1dTdyYzZidDJZNUo3T2hVcVMweGRURnBDRVd2?=
 =?utf-8?B?bFNZdkp5c1lIRk05VEYzNGgzd3RGY1VDWHAyakZXSjFaR0NaUi9ocXIwY2FJ?=
 =?utf-8?B?UlhVaXhXcGhlRGE4TGtUQU9oNjRPVTRjRmlNYTJQQ1Y3S29wVWZrbkZ6a2I2?=
 =?utf-8?B?UHJxZWpWKzEwVjVDZTZXL3g0WGErYmRaZ2RsL3BFL1I0djI5SVhnQTloRGRt?=
 =?utf-8?B?cTN6M0JZN2V6d2JGcDRGL3p6SUREMmk2bEsxRzk3QU0xY2R1akY3WkdsQVd4?=
 =?utf-8?B?U2JTdXVZemd6a2c0d3U1RlpIU1hqbWRDcklQejNoSkgxRytlVU9XTjR2RXV0?=
 =?utf-8?B?VkhkOC8vWmJaVmZuc1lCK2RKL0pEZzVFM2wxSHlCRkZjL0RETkhzaExrOXBh?=
 =?utf-8?B?cmJMM2hXTEtHbmVMVTFmNTduNUkzbzZxSmdkV1VoSzBFMUhsbXpEOCs4UkpR?=
 =?utf-8?B?UHROSWpwWVJ1M1ppQ0NxRVNLZ0MwQUdTQVYzYnN2VURmL0cyNlFLTGFuSVl4?=
 =?utf-8?B?M1g0bkZVbTNxN2c0YWdoSnl1NWZIVllqZFJ0b1pHNVFMdHZqUGFuUElvWWh5?=
 =?utf-8?B?VkF6L0w4RFVTVzRwclovWjRvanpkRDhNOTRkNllJRFhXRytUTkNobnRmZU1F?=
 =?utf-8?B?N1U3MG92SCtnQTA3eXptRmZITWFHbVFWSVhRamVmMDJJcWl1WHBuMnA0cExr?=
 =?utf-8?B?REppZ2JUTk5URlZIRHRsQ1VuaFZhR1dkbzhpSFM0aE5KRUZvbENLYTNyb1Fa?=
 =?utf-8?B?ZG1WMW85TXZqeW9vZnR2L0F1MTZjSUpJMjJ1dVNzMUJHWHZqa2FxN0VRMmVY?=
 =?utf-8?B?QzdiVHkyYkRrTnh3YTMzZG5jeDdSdUhIRWgvVjlXYWlWZk8zSUVzdy9OeUVE?=
 =?utf-8?B?M2VsNjQ2M2hBTEpWVDA3NS9tNU1yNDhzZVl1cDY0MTFGVkc5TGpuYXRIeWc1?=
 =?utf-8?B?RGlnSjYvK2tIQ0x3bEJHSlVPQmdOc2Vwemdqb3hMcjNSdC9mK1BZLzJxTTU2?=
 =?utf-8?B?UHREZm85VmJKWmRiVi9YYjFrQzQyNzUzM3pwcHkxSGxHS0wzSXNoQ0FKV2Ur?=
 =?utf-8?B?T0R2V1kxY2lIUEhLeGo5bGNRRlFOTkRqMXN1bU5rRGh3dm12THBMMitFN3kz?=
 =?utf-8?B?eklPNTJSZlE0NVUwYldNU3hXUjJWMVM3VnRUaUd2S2RVNmg5TTFlb3dKa3Yv?=
 =?utf-8?B?MHExSHJ4SVpPaFR3SXZPSjBaSDRDYjcrSjRDMzIxcVVoaHl2R0o3dVVjYkpW?=
 =?utf-8?B?MWRsVlNoOG8yc0hzQys1cDIzdXZNVHVWMlh2YkR2UDcraUNNYVVjclMyZ3Ir?=
 =?utf-8?B?V0taK1d2aUlsd0M2Z0lVYzRoSnhiK3lWVTJwaFUxRkErNWNwc1Jqb1JVQk94?=
 =?utf-8?B?emN1SnlLeEVLUS9BL0JiUVpTQWR5aHpzTkl5UGFDeFpYWldEYVoyNTFHSnlp?=
 =?utf-8?B?QlJydm16Y21WL2kreTFlM0V6czQzeW9oak9TRWF1c2JseVNNWEhLL2tQYVA5?=
 =?utf-8?B?NTdHc29lbkJmMHhCaGl2cFVTamtrd3JUVzhzZFE5UDYybW5udVpRYlNZeXk3?=
 =?utf-8?B?YlgrMStrb0piZ093UmREQndIa2ladVhsc01GRkU0bTJKbXVZTFFrUmdFMEVv?=
 =?utf-8?B?ejlxSVhMYmdPM2w0di9POXpkdUlNbkRIdkNhNUFWSHFWZGM2UzRQSlMwSVNx?=
 =?utf-8?B?b0NSc2ZmYnd4UndqTW5PZTlmamxQTEMwRFJBODNyNkJBRnVYWFhZc0FTZkVs?=
 =?utf-8?B?OXJZRlhUa256UEJDTTNuVXhEeWdQUlRGeUxyMzEvUnZHZlpLTHFkNTgxYlFk?=
 =?utf-8?B?UnFteFZaV1EzZFBLSlVaSzh6VXhTYkI0SnBLR1JFSk1BelVzMTZZeHAyalBQ?=
 =?utf-8?B?TlRROVVSZ2xIMmxUNllWS0VzNnd1ZnVGSENBSkIyQzF4ZDBnckg5YllPSTRa?=
 =?utf-8?B?RmxGWXk1aUlyTEYrUnRxS0grckVwUm0vSVM0b3hHZU5sa0lNVFZaVVRhaU4z?=
 =?utf-8?B?K2F0ZFFIL1F1b2Q2alQvcWVrbFR3TlF0dzZNSXB3ejFJTVdBL3NRY2pCdm5F?=
 =?utf-8?B?YVE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	0wYSgC3+qVT53JknGvjRAt+dhNNaMTArBYjHb5xCnrj7HodX+j5rkz4eVTwcREngMfnR1/rvqZJphZ8fg4+fmggQjJctvlW2AchlTY0gvTdJl5YgVNyQ6wuReGQQLm1pqrY7qinciM8Qvfc2cQgf8u4Ais4Ny8rv3m8QRM9KsueBHHVr+8y49B0iLAo1sv8m6Sj514xAAwTUeR6DkbHmqNxGGztjIjdqFLwHmx7hExAXikVCDjVAYqVFMPQKX6W8cMT9b2UY6rEMWyxvG5qU7BsyqlzOyzVlPDN/gz/DkOM/J0fg80UFmWdEjADsjl/XZrtCzqzxvlwh/P6VBjIKIk2Oo7EPiRefgHGGjusL/akTQeDo96Kx3V7jscJWMtdWwVitgayWy442sF3c0iWzkeRELsPNUU37PHyfF5RTEIqSjDa+1BxrvVlU8KBE0yD+sfDF3qPgFh1Y1xdqC1W7opD7ruf892B/WinQReMVKrWXanGGK2/gwLnteDo24olQI1ttoXFsj4wxPBJZk9/wvsdBZCDwPY1BcWyeldHxwXr/k9D3n+53BNZrK/QSvckqACEtKc5Qem68K/cIgvRKY6CYhKzzVliIsWxeysE/YNc=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0daa6769-b465-4479-4c58-08dd3ca8b31e
X-MS-Exchange-CrossTenant-AuthSource: BN0PR10MB4997.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jan 2025 18:55:41.5658
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AVc/vyI4m2eUQVYaZz4Q9+HfTVd+tp+dDiZMzJfPvvS/CUTNbz3T4xDE2THLTrlB7dGK0Ah1+YTZOs9hhuXH+Nih9JurZEgODv0xxtdM54E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR10MB5148
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-24_08,2025-01-23_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999 malwarescore=0
 adultscore=0 suspectscore=0 mlxscore=0 spamscore=0 phishscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2411120000 definitions=main-2501240130
X-Proofpoint-ORIG-GUID: MlZZ6GB_dEKUcfgyurGEyYMp_3IgtEVQ
X-Proofpoint-GUID: MlZZ6GB_dEKUcfgyurGEyYMp_3IgtEVQ
Subject: [oss-security] Node.js EOL CVEs: CVE-2025-23087, CVE-2025-23088, CVE-2025-23089

On 1/21/25 12:12, Jan Schaumann wrote:
> [Forwarding here because I seem to recall that the
> NodeJS team doesn't usually post their announcements
> to this list; I have no other affiliation with
> NodeJS.]
> 
> https://nodejs.org/en/blog/vulnerability/january-2025-security-releases
> 
> Tuesday, January 21, 2025 Security Releases
> 
> Security releases available
> 
> Updates are now available for the 23.x, 22.x, 20.x,
> 18.x Node.js release lines for the following issues.

They've also listed on this page some unusual CVE's:

Along with the security fixes, the Node.js team has also issued CVEs for 
End-of-Life (EOL) versions of Node.js.

    - Node.js v17.x or prior CVE-2025-23087
    - Node.js v19.x CVE-2025-23088
    - Node.js v21.x CVE-2025-23089

where the CVE description is just:

   This CVE has been issued to inform users that they are using End-of-Life (EOL)
   versions of Node.js. These versions are no longer supported and do not receive
   updates, including security patches. The continued use of EOL versions may
   expose systems to potential security risks due to unaddressed software
   vulnerabilities or dependencies (CWE-1104: Use of Unmaintained Third-Party
   Components). Users are advised to upgrade to actively supported versions of
   Node.js to ensure continued security updates and support.

Their reasons for this are detailed on the blog post at:
https://nodejs.org/en/blog/vulnerability/upcoming-cve-for-eol-versions
including getting CVE scanners to report EOL versions as vulnerable even
if no existing CVE specifically says that they are.

While I can understand their reasoning, I can just imagine the noise if
every project started issuing CVE's for every version that reaches EOL.

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
