Received: (qmail 7863 invoked by uid 550); 26 Feb 2025 23:46:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7830 invoked from network); 26 Feb 2025 23:46:00 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2023-11-20; bh=dNclpoGcsPb1BGZ8
	44N8ZS7N6jrrWdjx+ThDqo49VDk=; b=S526QqbZo4UzkhB02WmKcB19kxgau3J8
	/ufed8CdskYhrVKYXSG8foK2j+Az/askpAhljugBS6ULdGP86x0obNijhF59Mb9O
	k5omyE6ooB4B0yb3qmoWqpyGAya5x566t1Rmj71FhMni7kY4PhEO1yCPGcQCzwRE
	tuvBWjoy5vzgABhaiQ3Rdnm+VdDayFxIl/NlKHho9jSi6uMO8YgNkR4zY1ITKo2I
	jPzJhYRCpPO/bYEjI/cER6PdOJtCLsTX+hJTxj7eXfGcJhoFgHRSG+SkIU1BAbkl
	zz8VdpsDWcjIC4pS5uMiV5JloLUGXg0p8TVQTgukdD3xwwckWo0orw==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lrDuG5EkUkQFPOI0ZaAjeu/iwGfsj3P+p3HCd1TkXLbFVuBgCfh08FffKST/M2LElZuGjKskYYpRR69VqoUln35EsiUwiWPP0hvFovSMwqQkabGPGpbJnip+2EORE6RdjuZIgqZ8UBc5s/0vQMga2gDbxjvwmhGV7CR/shY50jx8Bjk5jkNeqefnwY8g4ZOXv6FsyeO1ILvZ8tdFUEQvv84HWLO79XXVsh8UUizc0JxqIN7WaDsOQCTu0dq+m9CwzXRAU1aRkHFeG57bONXd+mmGGxpPTnsLt18hEsflJ9zYPuMFG3YASASY4D9M63P3xtXPD+UCB+f6v9RCxhuyKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dNclpoGcsPb1BGZ844N8ZS7N6jrrWdjx+ThDqo49VDk=;
 b=shXjJs0T/T1I4b9fC37BmJc7cTctRgvAQv1VH0o8z7QLMgMchad1sf1CYR6yypO0pW6T16YJBJHkflj8c+Y6o4sexpr0a67fOvUCnApmwclX7z+poForxx6YyuEe2fiGS+vfe4+tcF2XY7XdwaGvKesjsJYLmr2Z2mLg2o96dtVhXr/jHy/HekaZL0/UJQR4/IzZtrkD6Mi/5XnNMqA7um3Nha3wYkRVQQkDxQeg2Bvggl6Pa6JAYTOtcJlliYY4sKFENYLGD22GufNJW2csMPB6G8oVdWX2hTQPAsQlsxdvIQ3FeC6KwTebmOCGd64YANdCnmo9ASrgWCriqUm4Yw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dNclpoGcsPb1BGZ844N8ZS7N6jrrWdjx+ThDqo49VDk=;
 b=yosAAO7Nvjlqw8k6zkggwpbkBggoShrsmkMDBu8hgg+rM9pefFX//JeLUzpcFP0FSOiEux+4VNExMC0I2Ggd2xztAaFEXFneOBqhDp7RJyqX2BZFhaU/XkO494hlhKdBaQ/uPziiLZiaex+G3DBuexbL8ATcmQCrRyGqOCdP71c=
Message-ID: <a80334d5-1e6d-4303-a3b2-4f5a92344e24@oracle.com>
Date: Wed, 26 Feb 2025 15:45:45 -0800
User-Agent: Mozilla Thunderbird
Content-Language: en-US
From: Alan Coopersmith <alan.coopersmith@oracle.com>
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
X-ClientProxiedBy: BYAPR02CA0066.namprd02.prod.outlook.com
 (2603:10b6:a03:54::43) To DS7PR10MB5005.namprd10.prod.outlook.com
 (2603:10b6:5:3ac::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR10MB5005:EE_|IA3PR10MB8163:EE_
X-MS-Office365-Filtering-Correlation-Id: 46a8b2e5-6e3f-49aa-0f7d-08dd56bfb1c2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?cUNtdjMrZEs0MzAwYWZKaXVXd3VoVXRMc09Mb0Q1cjYwM21rblU2VENmWFM2?=
 =?utf-8?B?V2FZcGR2ZmIxMExpM28zTWZ2RlZRL2J2cXNMSExCVUxrRnA2QXFRa0g0aGtJ?=
 =?utf-8?B?Mk5JbWI3NkVHM0JIZXhobVBBR0pORTFMaVZZL1Mvc2NsSXd3ZWdia3JYb2ZL?=
 =?utf-8?B?ZmhvZlhvcC8za21sVHJJWXNKVE45eDJyaGgxSm5hekd2SkdEZjNpT0ZrQnk5?=
 =?utf-8?B?bEZWRjlrbE9VdnVMZXVzOTF2K1BpNkRHTEJ2MHFaYjlVcXh3Z1BEZU5IQzBl?=
 =?utf-8?B?L2J5VmZodzUrTmRtOExKaU9MWitGRmtZR1creWFUS3RudDBzVk5UbjVvYkUz?=
 =?utf-8?B?ckY2QW9CVnNSc3RNbndtQzlWd1RpWm9LbnlCRnRING5YSkdEbFN4dVBxbjJz?=
 =?utf-8?B?VDB4a3BYVFhiOHZYRnRUbXYwYnd1ZHpWZ3lpaUxHU1gydWhiL29qYXl2dVpU?=
 =?utf-8?B?T3U3M0VHejhOdElPMFZCYU1hTXhSN3pHTWoyQW5MdXBnUmlCdVdEVThQdUFF?=
 =?utf-8?B?NjF5cENJU3pnbUx4dytLQ21PaDRlOFloUnZPQUxrbVNPT2ZXZ1EydkthTTNl?=
 =?utf-8?B?UDhHb3dlV3ZaK1ZqTW10K2djbVJ2Y1RCRjM5VjB1ZWVXZVE3Uy9ycms5S2Ev?=
 =?utf-8?B?ZFJRMjA2dmRTWTZ6ZFZoaDJDYitMcDU1SUJIdFlYb2dFSktqakNtbHFVKzd4?=
 =?utf-8?B?cTR3UjhRT1BHVnR2b2VYRlFwSmRacFdmdjl6dWxXVDMzNytwVklkRWRBV01y?=
 =?utf-8?B?VGwvaytaV1kzaEpXSVNoUjJLU1lOZUt2YW9ySDdKR1FwNWc3QzZNT0htcWxo?=
 =?utf-8?B?OEpLL044aDNtcCtaTlNIdDNqNlFpRjZ4ZFdUUEtuOGNtQWpTU1hkV3FIb3Aw?=
 =?utf-8?B?Q3dmOHF3MENtaFhtTUVpT1RHcHRQeDQ1cXErTExQOFYxZ2t1azNGQWMzNUtq?=
 =?utf-8?B?M2xlb01TU1lKTnJlUXZZRitLMkRqbER6b3E4eXNvcmxUWlBwRUxXLy9Gb1gr?=
 =?utf-8?B?MHV2aUtUbTVydnJMRG5EbFpvQ1ppRVZ4bGdYNGxZa1VtcDFYQ3lFTVQwVW00?=
 =?utf-8?B?Q0NwdFlEaCtwQUd4VnFWOUx4OEVhblBFbnFKT1RXY3Rpd1RKV1dodndTSTF1?=
 =?utf-8?B?T29TbFR5SThOcitpSEtCSXlXR1F1aG1jbkJPNTVZZjl6bzk4OGcwQUM0Q2Rs?=
 =?utf-8?B?SXZVeGpwY2VsOVhlem1iTjN6cTZXNktxY0U3cGswbGdqaTl0UCtBTHJla1pS?=
 =?utf-8?B?eEdpRmVtOUhrVTBkWm9YV3Z2Sk9lT3dOZmt0VFd4UzA5bjVVWmREbklwQUxu?=
 =?utf-8?B?eThKLzRBanZqRC9Qb3lvMzVTN1VQYmFoQ25MMWZ0aTV2dUx4ZWZoVE9pelJu?=
 =?utf-8?B?a2FEdkFoOCs4Mzc1SG9BUWE4Z2lId0Y3OUlCeW5qMXZ6MzJMR2k2VnlnSnlm?=
 =?utf-8?B?QnlHWktRdU03N2xzd0ZGazhwcFd6ZkpxcTJiakJpQVZPUEpJSFdETnozNVFS?=
 =?utf-8?B?T2tQM0hSWjJ0TEkrM3JER1dzVlRJNzdCMkIzbjNpZWpIc1p6dFpyd1dEQVAv?=
 =?utf-8?B?ZkJxb1cvWmp4S2doOHp3MjBERGQ5MmpCd3FxUzlheWk2Q09WMWd3M05ad2N4?=
 =?utf-8?B?THdiWnNhSjdWbWlYVzFCSFdZZTRLb3BRZ0tJVGRnTlMyeHlMQnZpT1crNUtE?=
 =?utf-8?B?T3dMeWhuUElzN0JyYVRCaXVFSnN0WW1JR1Q3bDVJeFRENGQ0WThvVjZPM1dU?=
 =?utf-8?B?QVpDbEkwTGRraUxHcURlTG9EOGM3RHV1TDNaTEdDdUU3Ri9GbjQrL0d0a2pM?=
 =?utf-8?B?aFUwaFNFNkhEdy9lZmVZUT09?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR10MB5005.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?QlhFU0VLWHovdFB4cncra1FLSlZSdHJSb2RpYUFJOGE3QmJrK04rMGJxVVk5?=
 =?utf-8?B?Q29PaENoSDZKWjU4V0JZMWtmajhrL3NpTmQ0eTFocGQ3dFNzcDdxaUExSjB6?=
 =?utf-8?B?Y2Y0ZkZBQ25lbFZQTUFBM2FQV3Jmc29YUkkrMi9haUtjdUdOSzI3QjU4RTFz?=
 =?utf-8?B?RkJzS3VHMm1UR1NCNisvUlprUy95ODBOcFgwdk44RUlpcmcwNVVDbE9EaGRQ?=
 =?utf-8?B?Ry94b0dVRDBkVDZ1VUN3Z3ZYT2F5c2RkbVhYK3gxRGh4NU16Qk5renNqUVZY?=
 =?utf-8?B?cDNCTHYxUWNVR1RXWVRoV1ZNekJvQ0I5Y3NOa0l3L1FaVkxyeWU4aEJVQmRw?=
 =?utf-8?B?TTdGOG9mbXBIeXNtb04ybG80QWNXYXVCN3VHWElwSkVmdlZXKzE4aUFNKzFG?=
 =?utf-8?B?RGQ2cFNZaFV2c0F1S3AweXdUd2ZRTG11cTMvL3RXRVZWMUdIVEp4RllXWmdY?=
 =?utf-8?B?TEx6cWVmUUtmVXhRYk1DcEJpVE54TkVFb0FUZHV1V2ZHbnRlejNCZ29VSkI5?=
 =?utf-8?B?RmlFeHREYXJIMnhYdldNWjZxZFZlczU4OHhkYnRFTXo0T1A0M3dPVlZQQkdF?=
 =?utf-8?B?aEhGQ0RncUUrQTQrZzl1ak10dkh4R09uR3VkeW54TDBZbnFSQU1zRUNIcllM?=
 =?utf-8?B?dzByRllYYjVlZ0JvUjJreFRJNVJQTkFuRVh3d29pMmUrS2VSNnh0eG1vRWZh?=
 =?utf-8?B?SXJyREFjNzlYclZCTzc2YU9lazFTUS9pajNCclZrRW9oV25VNnpoSkpUVnFB?=
 =?utf-8?B?Y1EzWDRqeHcwdnhNUVBXRDdOVHYzQTNpZGg2UXBjVmtRczJ2ZHNlTHd5S21P?=
 =?utf-8?B?aGJkSjArNWpTUSs2Yk1sa0VPckhGWTdXSm4vSXZ6NnJsemZTTGhpRmR6WFFo?=
 =?utf-8?B?ajFpQ3hrMjlvVGpVemtuRHNYYkhrSFY0TEtId2dzSWNzc3Nta1FlWi9Ha2Ru?=
 =?utf-8?B?L0F0dkFURjF1Q05ZaXZxbkUvdnh4QnhMNit2RWZZUmpiQmZOWXZCc0RjMnFr?=
 =?utf-8?B?QXdZek5PRlAzNGpHa1lFeVlYenorSEUyaS9nMXBiSE9DTUFoVy80THVQTzRy?=
 =?utf-8?B?WlV1SUpJTnhnYWN1ZklLaU4rUTc1Y1U1QzJHU09Ub3U1cERzT1BOR041dVZa?=
 =?utf-8?B?V25QY0wwdkc2Um4rOVRyT25lMmE2MEpmM1JtL0l5U0djUnZNMFhXaHpwQ0o0?=
 =?utf-8?B?eFM1cVNGa21tdFk4Nkh5TFZXWEQwRFh0dnkreExvamFMOVY0aUpIcWJodDRG?=
 =?utf-8?B?bHNkNDBBa1RNMWN2SFcwWWc1OTFBVk1JenduUnNYVU4wK08wbkd6TC9ONmd6?=
 =?utf-8?B?WXQ1Q1J6bzJHdFl5dzF6YmZUR3NTS2x5QXZLYTl0UWU0NTUweEt0REhkR255?=
 =?utf-8?B?OWMrWmpQa1Vwcll3MU9uOThkVGJzUE1rQ2plNk9PMlp5WGJHaCsraFRGUFE1?=
 =?utf-8?B?R0dPMXFuWjNYb3RxbmkyOUVUd3I0RGVDOHhqSXR2NnkzK25LSWN0RExTNjNn?=
 =?utf-8?B?bStxZ0oyYytaQjU2aDMrZjNGc3RBSnhsMFhwYTlmVllkT3pIWFVoazFiSWU0?=
 =?utf-8?B?bnJuTEZ5bHdicEpsbUF3aFFIY21BZG05b24yUmdZR2QwaXFZazBBR0FqanpC?=
 =?utf-8?B?WVhLYkRXR0JmbFRQWlQ5dFhSRW1iUFVzWFFycTdnL3dCenEvSVlhcXFYTkhj?=
 =?utf-8?B?d3NOQTI4VmQvb1lpN051bEo0Z29Sa3drWW1JSTNSbXBXS3oyQXM2N0ZLVVY5?=
 =?utf-8?B?S0RVN2h1b0VxaFlxaEwzMEhiMFF4Tk81ajZHUThYL01pZmk5dG96RURzdytv?=
 =?utf-8?B?Y2lWaDdFcnpmQ05DZVgwRittUU5oMkR4eW5LSm1vSy95Tk0yMG1tWGlKOEJx?=
 =?utf-8?B?SUdOVWRNMzVrNFBCYk1GV2gvc0hvVjZ2cUcrUGNWb2xGdlhlVTRseFkzWmp1?=
 =?utf-8?B?ZW1lZ0V6aU9uMnY4MlhpZGVYbnFkSFpHbnhaejd4MUZxdTRFeUZaSDF0VGJH?=
 =?utf-8?B?dzZjK2hWQUFoZVB4SUJET016RjdXdm9hZ3JwRWJ3S05IdjN3RXJEdkRLdU1p?=
 =?utf-8?B?VWlaZzN2OUFFamlmOUdhaVh5V1lLWThBRjRKaDFVeVkxWUFpU1MzUndMdDhr?=
 =?utf-8?B?UG9KbHJPclFkNVN1aVZ2L2VMd29Icy90ZkhvaTFQZElmU1JmYjZsS0RHb3Rx?=
 =?utf-8?B?NVE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	7t7JJBsDmHUc8dI+5DS0gtoqMnxFLyJloaSrHCAuktcQxCZ6dnFVYH/Ryqa7RvfhnsfmOP3Z6U5kz4N1RhXrUkmarEA/67oO7G60WGScJsw0hRZHCTgmp7IJx1QZXOODIMlqJHeE845p6dzfrS3ALZ/n0Vdz2wwD8RtKwEJVw5XnFq2uUb5tKOsba+ydKUhs9ZYzEOTyZxBXVgAq7gOVERWayL1DIFl3ImFIme6VdRFZjxc0u2dhc0KaA5oyqXobigWBWzHXoRFkWksgxbwmSKlDfNquWobvzfU8lHOGBtennJsXbrbkXWQQ37RcV5vGSnUUHplICVWzJ00mhlQlVnTrtHNqqYvg+g2EtToZfcLVW3X41s4FRUIpmzjRRBKFy+4oCHvO6WbGMOEP5PNfZz9ERPDOHwrHJlB8zw/nSuRoYZXRd0q74bkTmWlQYnzu1TVlEOCexCO3dEjaVck7AXQoHbUJvJ8LWU1u0m+V023lo+Hv4gVz+voOgFiM+o25g7T07T3N/vbMOs+bOl7GzJv/8m09LnThv/uaZjU+XxHHluPXtTB/rJ98+pQLjgoqOO8bHbZvMT9bj5GE6v9156U6UQ6p44oGCwhxm7rGsFM=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 46a8b2e5-6e3f-49aa-0f7d-08dd56bfb1c2
X-MS-Exchange-CrossTenant-AuthSource: DS7PR10MB5005.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Feb 2025 23:45:47.9377
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5710J22XnxePYkLTik8sSu1KtAbyVSCr3QVUJfswui/XbfKussSPMLyfOfUKs3Tp0oPeompmzgMZxU3pQMl8WYFDfRSsT5YVq/TT3by/6lY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR10MB8163
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-26_07,2025-02-26_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 spamscore=0 mlxscore=0
 adultscore=0 bulkscore=0 mlxlogscore=999 malwarescore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2502100000
 definitions=main-2502260185
X-Proofpoint-ORIG-GUID: SlIBP09Z7nin7rTkif9AgjEDzJJnk5xm
X-Proofpoint-GUID: SlIBP09Z7nin7rTkif9AgjEDzJJnk5xm
Subject: [oss-security] GNU Emacs 30.1 released with 2 CVE fixes

https://lists.gnu.org/archive/html/info-gnu/2025-02/msg00009.html
announces the release of GNU Emacs 30.1.  Among the changes listed in
https://git.savannah.gnu.org/cgit/emacs.git/tree/etc/NEWS?h=emacs-30.1
are these notes:

> ** Fix shell injection vulnerability in man.el (CVE-2025-1244).
> We urge all users to upgrade immediately.

This was reported in https://debbugs.gnu.org/cgi/bugreport.cgi?bug=66390

> ** New user option 'trusted-content' to allow potentially dangerous features.
> This option lists those files and directories whose content Emacs should
> consider as sufficiently trusted to run any part of the code contained
> therein even without any explicit user request.
> 
> For example, Flymake's backend for Emacs Lisp consults this option
> and disables itself with an "untrusted content" warning if the file
> is not listed.
> 
> Emacs Lisp authors should note that a major or minor mode must never set
> this option to the ':all' value.
> 
> This option is used to fix CVE-2024-53920.  See below for details.
[...]
> *** 'elisp-flymake-byte-compile' is disabled for untrusted files.
> For security reasons, this backend can be used only in those files
> specified as trusted according to 'trusted-content' and emits an
> "untrusted content" warning otherwise.
> This fixes CVE-2024-53920.

CVE-2024-53920 is further described in
https://eshelyaron.com/posts/2024-11-27-emacs-aritrary-code-execution-and-how-to-avoid-it.html
which offers this "TL;DR" summary:

> Viewing or editing Emacs Lisp code in Emacs can run arbitrary code.
> The vulnerability stems from unsafe Lisp macro-expansion, which runs
> unrestricted Emacs Lisp code. Most common configurations are
> vulnerable (see details below). The best security measures are:
> 
> - Avoid visiting untrusted .el files in Emacs
> - Disable automatic error checking (with Flymake or Flycheck) in untrusted .el files
> - Disable auto-completion features in untrusted .el files
> - UPDATE: Also set enable-local-eval to nil
> 
> This is a long-standing vulnerability which has been known for several
> years, but has not been addressed thus far. Emacs maintainers are
> working on countermeasures that will hopefully make their way into
> future Emacs versions. This advisory is intended to help users of
> existing Emacs versions protect themselves.
> 
> UPDATE: Mitigations are implemented in Emacs 30.

-- 
         -Alan Coopersmith-                 alan.coopersmith@oracle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

