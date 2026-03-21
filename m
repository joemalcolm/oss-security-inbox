Received: (qmail 12070 invoked by uid 550); 21 Mar 2026 20:49:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 12032 invoked from network); 21 Mar 2026 20:49:39 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	corp-2025-04-25; bh=WYatne192Ts4YNyQDSY/f/qUgP0wwp+PQrggZ/fM7S4=; b=
	F1uM8mSWrERk9ewZLV8e1vNc4yn4fWBPlRIHB1FqkDB/oruo2FS7TX8XxLvYh1SR
	Wyqu1kkt0t97czuhHCoViIrQDRz1LUClVUdfVMtxsMHngrPtvBBqaRKdOpbW3Mhb
	aqQwUEgPZQW7q/xqvnPAdJGhzbj+gCJvB09JKtn/WZgeXENMIO7S8t89eZvuwNEA
	qxrlVwE/1KUp594bYVPOPzJvrGpzsSiA6PE2W1l1tPcH3EelmCTxVH08j84IVEwB
	lw4IZnDX7/RZRIcQkfXap70JYR/nHBGOPXmSGnQ8OCaw6J69SKYTHULQYpWo3UoH
	qCuek6PN+DX93HifVaqkDA==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tnMjO+ULWMwS+h8HVCXCWPdUS6q1bT+b0ycijSNOj1aWTFvj5/D6UlsnrO16X63tWsRdAvxLyYqzsFZmQ6ctrcKPAVng9BIGo0zLkw8w4IX+2zY0yaQxG0ObzgBvXolC5MvDSArZ75WEiWSOOGCq9Wzw5TDtT8qFzo4k3H+sckuk9G3T4XyhhPv1FoG60HuUTdkTrm1b11cjax59vYmfEYlt4x3VK6Jv+/jljL7C5IyemGUgkFfMWIaNGYWhfjxOsB3iLN7hNXW9TzMHodPzV5eIe6LXwSpl/w1BVZJZGxdVptyc1xvaKB3Ulj0nuz8l91F5jjop+gIy8n7niM8LbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WYatne192Ts4YNyQDSY/f/qUgP0wwp+PQrggZ/fM7S4=;
 b=ODGzYshtWk9P6UUeTihzYJHcDrWZoKBiGkVdkSE1SMhJziIYR9gbF7hSdsQ0wPEHynJYvi4Uxi25vGL2BVTKgetrWMsCdRuXKnvnUXXsxhTwvhbIXTop5BIlJjZlnKoSRf7+y9cabdBkVdVc4f9NoFh5ro4ghiQ6EkUJavhEs4X7beyHhSs1z9ALvC1CzmKdNRv3dCmCNBXOw8wFDsBYctqiocnNkW7bBj1pc3BaafPLVM8wm/VnJE+c4wTLCuCF6wpCjUz2CLwNvxSCdyudVdhLpn9Ud32RcqfkMgDhGUnGFM8XdTMfJHG/AUFldF4Y8igAgsDyDD37oRUmxOT37g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WYatne192Ts4YNyQDSY/f/qUgP0wwp+PQrggZ/fM7S4=;
 b=E2JLmVugrNdwkiyulplP/si6jNUyR6M/lylUCyMYTeVFQqW13V20UrsosTRfneAqV+Rbknz6EKbZbuFvdpsaqkawg382/0y0ylIjeyIi8P4pFCJW/DXjdy2Batpkw5bgiY9GtbgvjzIj/RhlHWU71d3fNhTc5RA525tRslgWleQ=
Message-ID: <e5b16547-bf38-4312-8b8b-c5c230d39110@oracle.com>
Date: Sat, 21 Mar 2026 13:49:22 -0700
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
References: <9164016d-f642-4ceb-bde8-03e09303e038@oracle.com>
 <37aacb54-8bcf-4b7e-a747-6ff3ec8143c5@oracle.com>
 <031BCE73-BDEB-4D18-9EFD-8F3180E8527D.1@smtp-inbound1.duck.com>
 <EEDF7B9C-89E2-4544-A33D-DBF2B0FED6E0.1@smtp-inbound1.duck.com>
 <20260321180013.GA20708@openwall.com>
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Content-Language: en-US
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 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
 5V9JclVH6u5Gug==
In-Reply-To: <20260321180013.GA20708@openwall.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PH8P221CA0050.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:510:346::11) To CH3PR10MB6739.namprd10.prod.outlook.com
 (2603:10b6:610:147::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR10MB6739:EE_|MN2PR10MB4127:EE_
X-MS-Office365-Filtering-Correlation-Id: 32f74b78-1aad-4470-6a9e-08de878b558d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|366016|1800799024|376014|22082099003|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info:
	VUNvREtIz7Ml+/LtDmuGxzcHd1mIx8+hL/hGEKkr2jWlxGmZp5n8yLd2J9UH/KSUCPGuLQ7am6Yqp07zsKyxy1Lj5gsa3ST9poQ/pHOzigYsZT1zgY6/GtBrfQXvORIZjxN2kyOMhWejeyHBAGrN3UqFDWy7rJSrxmzZ3GJQW2I5hGv368Fbpz7Zx+gYlbkk27J686Hw3Q13oZfQ92tLPYTXBmkvf6OuBi5JYmbGR++WNwDdOC/TuWAh7Hax6CNLQ46XtdsQ+YcdV/b/VXfMdCe0VWrjwpJqZiZ5Q2CBdur8nPn/F4CawZ5NL5DN8EoAFzPtzS5fnkXPyL2k23qfWPQf/RDVdppeHwoEvnMM7mzsWD4DXWG8DrubwOwyLVdgIY4gLLz7OcZQ1YCAppOhj77A59RTDmXbHM8rYTmqD0aYOis6L1A7SGt+71t0bhrH0rjbQwld67E4KbhwODzMUYoKC7ovJW86A48SXYYQW9EgRQNd0Zp7ZL7DpIRVF1loGNTziVIREzZmGnmxZWMaVFf886wW/KUg14+9FmSoDX+fv5FzSyCbqf6z0UCjUZi+vXQ0wxxXtLb07uJ3J3hSZc6ot8YHtBjmubwmjuSfVSdnRY70hnzWrlIuZyhCSQ8HTrTz8EPZH5hRBjepqzugGVYcopkZCPxu7mOk55F8HN12aGLB3KHS+JlSy97XbE7ZSsMNZQCAhziSRwNU7n+THDQmOuJVD7sZ5L0alq5ajWg=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR10MB6739.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(22082099003)(18002099003)(56012099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?ak5jdnBpMHZDUXZwYTNGTE1IT3hzVFI0QnBocEN4Rkt6ai9FWkxQU1liMFV3?=
 =?utf-8?B?czcxMWJqRlYxQlkxTXg4R2lQdzQvdlEveGlEdWRuam5ESkkwUjBLQlAwSGow?=
 =?utf-8?B?elNjQjRYeGRaQzI0dWQ2YysxZmxoc3EyME9Ua1RmZmRHY1NGMnRPS3ZuNnp0?=
 =?utf-8?B?eDhZUFhCOU16L1lFa21EMUg1VkdYR2hzUUkrRWU5NVhYSnl0ZHlrMTdtVm04?=
 =?utf-8?B?RlVLR0ZhMXNRMk1MWG9nUTlZZ2Nyck5MU1RMSktPVFpGeHFEZFFPaUhLdG9z?=
 =?utf-8?B?QzNXampKSGpKUU5ZM3BIQ2kvcHhvdXk1aXY5clBURE1YWmxsSktsWjUvRnIr?=
 =?utf-8?B?T2Jsc1owVSs4NGNjZFpqMEVnQzhxbS9GQ1RRYzNXU1N3V1FIa1RJd0JPZ3Jo?=
 =?utf-8?B?YVlRREJqT29KeFhDRWlrWnpISEQ1b21lZFdXOE9HWW8xRm5HRC80bWFSR3Vj?=
 =?utf-8?B?aVYxRzN0UkdwT0JiQkZwUUMrenlvZ2pYQkJVVGtJTnRoMk1CUnhPN3JGMzdU?=
 =?utf-8?B?YU9Gc0F3MjdHc1BkL2VTajB2RlRqencrTW9kWTNQWFJ1UWdIdVkreU13cDNW?=
 =?utf-8?B?VEgwcTJhaUp3eFloaVdQdkloZ0VZMG5YVm94YW9MeWJlZFNFd3V6Y005SnQx?=
 =?utf-8?B?R0c3ZGJESFJRbFZkUG1ldVhzNVVKeG9NUWZNR2dEdFdDek1UeEVQMEZ4WHd5?=
 =?utf-8?B?UmlObXJyc3c5Y0dtQk91UTZKaHB4MDNzWFFueUYyZHB6Y2h3eU9vV2hiZWxJ?=
 =?utf-8?B?emExdXFiQW9JWUNQUEhaQ1JuZFVuUXRkY1Z2OUNLU1JZR3l5MlhBZE83SkdH?=
 =?utf-8?B?TFV3blN0OHV3SkxTSER2VExhRHV0Tk9tcXlSMzRTNGY1bDREanp0MzJITnJr?=
 =?utf-8?B?KzJFaGt3anFFVGM4dkFnQlVseGhUTkxjS0JaYUtrSmwwVHo3Z3p3MFAvOU5T?=
 =?utf-8?B?dTlzTlRsTUw1MVdaYUtlczROTDBWalI4b3hwYnBwRUpqUTJWQUdDN1hUL2cz?=
 =?utf-8?B?WHhDY1R1Y1Njb2wxYmtoeE93Y2taNWpBMjZVeXQxdFBhQXhUVlJic3R3SFJm?=
 =?utf-8?B?NGVoY280R013TGdSMDQwUHA2UTcwNEFzQWJQRGR4eStCVzkvT0FVS0crZXBZ?=
 =?utf-8?B?TTJ6aTEwZDZicFppMndYaVErazBud1JINTFwVHlSQ3hQRnlLZ0FQQWlaZWN4?=
 =?utf-8?B?V2VpVkxDYXM3dENnLytudk1FV2NDSFAwcGhUdFgzQVRFN3F5QjdkKzBab0k0?=
 =?utf-8?B?VTJSNy8wOG5yT2lacmlUVEF5dFA5aVJOYThYU01aNFVxdlZiZ3VuZmMxS09S?=
 =?utf-8?B?RXAyaFp3QzJRdk51cy9kRVRUUzJEcmVSakNteXdlalFBTWprRDMxZm52MUZi?=
 =?utf-8?B?VllZbnpmWE1YYzJ1WVRaWVVra01sdEd6V0RjNUZwYkZMSVg4UGZxRGJQeHVk?=
 =?utf-8?B?ZnN4WWIrTVowVmVRMklOM1RDRmJ5dkdGc2MwTTAxZTlSYVVWY1FDVGhhYmhm?=
 =?utf-8?B?c09Cb2dhM1V0VDRJT0gwZjBxWk1SQWxRVENUZWhXUjFnVjVWTzN3QkY4d1lU?=
 =?utf-8?B?c3Y5RTJ4dU1pRGZNRytDOUszSVBId0JqcC9iS0pKL1NnOFAzOGs0RkxKOTVX?=
 =?utf-8?B?MWF3NUdSWE1Wb1NPQnMrNmU4TGEwL0xJUElaaCtJZE9ScENIbUJWWHlwRVgw?=
 =?utf-8?B?K3o1SHpXZVZJdTVzTnNCa2RnVW5IRWdOYlkyeWQxdFRyWk1MZzRkVU5vYk4v?=
 =?utf-8?B?UDhOc2UwQnNqSDZpUGpzOWE2OGNWYnNWSEQ0cE14T2ZSNFkvNlJUYlg1OE05?=
 =?utf-8?B?ckdMNGRJaGRFeEUxM3JvVDJTTk52bkdmT0dDdWtmOFBZV0VBVkFJZGFLQzRO?=
 =?utf-8?B?Q0JwZ2FiYXlCekFLc1FQZkxva2ZVYmY3Kzc2RjV4Q3gwS2IzU0NvZ2svNzVz?=
 =?utf-8?B?OGtkVHZ2VHVqSmRBY2hFbWVndi93dTJqUCtaVmRIR1pYakJodGZsMFpFOUhp?=
 =?utf-8?B?V1NLSDgzUVdQS2VtR1pGWVZPR21Jay83ZkppcGNXTDNQcXRuV05mV3QvZ0hw?=
 =?utf-8?B?WjNhemVVNmdiQmtIem1GY1phN1B5NVRPczVKSlF2c0VkOFkzUmJGRm11VWZM?=
 =?utf-8?B?NTVBYU9Qd1BnczRETitGbTMvWlFSYldMZWJpTWxnVjVHRVp5TkZJWFNuU1dT?=
 =?utf-8?B?RXhVUjlHU2RobUNFMXhteWJnYThDMm1YMG90U3Q1UDVsVExabGpSclI3UjJK?=
 =?utf-8?B?cy9nU0dXc1VZTFppTWdZMG10bXFJY09SempwWXRlUHpIVmU5aTRDd3hlYW5T?=
 =?utf-8?B?bVBIbCswMmpudkhRZ2RxTFFYVUtFTU1OaVpwZ3oxc0hQVUE5TGwzeUJzVzA0?=
 =?utf-8?Q?ZlOnsA7/K4bJsozs=3D?=
X-Exchange-RoutingPolicyChecked:
	FsEM2VOISgLKn7lrYq9sNG4kYl96MImOU69Dst0Fkp43zo/KgvDszt6dfAWDITQCL+qBdfmu+2cpZnfEyb7xJXT9+OEsH+1d0ywWmHwZYJzX4SSC1hIjyOYLOTZNee9ozTuqvgYX+mPxC1vNVgWLdNyRlmxHSjVEY8c7pdltTp3DBtekTEruo4Z+A/ah/+JgRsIWnqZnq6k1gHyOGxbrTe0OFPzkRTuluJ1mlDQ1TzOhXi/6jogXxzeyHpJPvUl3syxHEcSCjd6Hn+iGlpW4wLJgDm0Kl16j3zaSzxSqUgjtPaGlFjO92YUoYW/MGt21wSo9f5hftzteUwgxEoo4Eg==
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	HR8ZeF3CkZQL9QotEdw8BsPcprFXke5AZ1exQ+DePyTJKj74BN2Y9GcsGDq8zdGA6BCRA9y1gPYjnaVKQ31WpD4DYNvYsMm+Wj+Wfb2arkFm3ryrCA9ediiGRi/GstPKN4NH+busMJPd6TRgAm4U9V4H5428sNUazABxDtPz073ojn28K7lmTl4hmcY0B8VXo0QjmX9ckY0pECsGTikBr/H8OGAxIWjwY3cpP7flbqHVos3br/tCjDxzTwQIv3SAkgzhb4333QGzKrwf/XLJlLlprqcIo5sfXh0IpAaZVE4ftpJd49T+Pfn9WiI1XTyDDA79rEnzFm1vbMtAqqj5JEIdRozI81vCxbetXF37D7PzyUegx06/DwfCQN3Ili/FpF154Wjf2/lxydiBb1j676O/gZDWj6rH6aiculQYSGWyB9B3kemMjTFhUoryBYI1DG78IlW7Dqqr1GJMiVRKZBT7B6QJQ4y7Byth4CdAckxO0GQTnLZkRYGP092tCfG1CW01+Dme87QkID+0g6o8Atfrl/UApco7RljUNJEPcf1fgUDQ1SdLNGovexryt463TKz3tC/r5YPWCIweGzUs+X1+SaeMiDKA3/CdbM6Is+w=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 32f74b78-1aad-4470-6a9e-08de878b558d
X-MS-Exchange-CrossTenant-AuthSource: CH3PR10MB6739.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Mar 2026 20:49:24.0373
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TZVJSBNQ9BvDi5QTDWkHqbX24gLeCM/YoceC6EcXytLqPm0MeCwtEq/u0pmQX+kjkSp1hYtOD/MTQ+/IkUhE7v4ZZTM21SoH3jiXSSro+lE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR10MB4127
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-21_06,2026-03-20_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 adultscore=0 bulkscore=0
 malwarescore=0 mlxlogscore=999 mlxscore=0 spamscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2603050001
 definitions=main-2603210179
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzIxMDE3OSBTYWx0ZWRfX1s73vA9Qu7Gl
 pdePZuxTU4GlAgR5SV3Z7mHFAHMLTe6jxtrdsKoCocCPe6Huu7MN5Wj30wKPkF8GFdjRmae7HpV
 bqsfJ0NDpeIIx0ozFwz77JGoBZvYs/PnUg3iZPirBt2vmMLctjpVGMW268qPLzO57iJFb2NNuux
 WJLkizQ3gn/3CKCqfwyMA0qh3lNuzwMGf1aKD/cZr8VaCpq+HZOibTRsPjDNOKiPbISIh4COhnl
 O071c2GFPxUfb0wOQgzBZSA+ZcHOOAJrwf62bhJTOtWaj8WTx6OMILfwH6XPA+62XKlRKJc5AaG
 YrNTqwoxP3UpioRh7DBYLe27RHxPl1vGDkY/r1WbXFrwWy3810fArm5+Ty4ZptGYHCZBxuuRgzb
 ZAJE1IfRMWtqfgMfJiGyk9/5owHVhEAXtPIVhUcchJ3qB2KAbR6q8xq8hjhasOFXNVCu0ma6DIB
 /F39A2oVU7uSI0vSRKw==
X-Authority-Analysis: v=2.4 cv=aq+/yCZV c=1 sm=1 tr=0 ts=69bf0459 cx=c_pps
 a=XiAAW1AwiKB2Y8Wsi+sD2Q==:117 a=XiAAW1AwiKB2Y8Wsi+sD2Q==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Yq5XynenixoA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=jiCTI4zE5U7BLdzWsZGv:22 a=3I1J8UUJPc9JN9BFgKH3:22 a=yPCof4ZbAAAA:8
 a=oAJgE6QaAAAA:8 a=5BYnwV0rZ82nTQJkkVgA:9 a=QEXdDO2ut3YA:10
 a=x6WLLiyY5-E8SSaYOalI:22
X-Proofpoint-ORIG-GUID: wgSKZgKjkfSTGsBjDK1iNlfTIDTQfH-v
X-Proofpoint-GUID: wgSKZgKjkfSTGsBjDK1iNlfTIDTQfH-v
Subject: Re: [oss-security] Buffer overflow in /bin/su from UNIX v4

On 3/21/26 11:00, Solar Designer wrote:
> On Sat, Mar 21, 2026 at 01:13:47PM -0400, kf503bla@duck.com wrote:
>> why assign cve to something irrelvent?

I was just reporting that it had been assigned, and wasn't part of the
decision to issue it, but CVE's have never been limited to things that
are relevant, and there are many existing irrelevant CVE's already.
CVE's just require that the vulnerability be known - while many people
misuse CVE's as a "things that are important to fix" list, they were
always intended to just be a common name that can be used in discussion.

I'm actually a little surprised this one didn't get the "Unsupported when
assigned" tag that is often given to CVEs for out-of-date software.

> That said, I'm sure there are other cases of historical vulnerabilities
> that never got CVEs.  Some were known prior to the CVE program start, so
> would need CVEs from before 1999.  I think there's some value in that,
> but it would be a change.  CVEs were not assigned for pre-1999 findings
> so far.

If you look at the early CVE-1999 entries you will see some issued for
pre-1999 findings, such as CVE-1999-0129 for a sendmail vulnerability
that CERT published an advisory for in 1996, or CVE-1999-0113 for the
classic rlogin -froot bug that CERT published an advisory for in 1994.
(You'll also find some that would never be issued today, as they're not
bugs in software, but weaknesses in configurations, like having rlogin
enabled, or X11 set to accept unauthenticated connections via 'xhost +'.)

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
