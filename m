Received: (qmail 7722 invoked by uid 550); 27 Apr 2026 20:31:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7633 invoked from network); 27 Apr 2026 20:31:39 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	corp-2025-04-25; bh=sD8t+mYfRHmpc5cfsi8/dOXrp5mpcgGDRKDPUQ0NB5s=; b=
	X9Y4fqgCcGYMo0s6QPP67QtcIiDhREiFo4loatCTA6Ls8dExpCyIfNHHWTZmkpdx
	9T7R6tAL7T7NWCx5z9nCBdtWywNVSyMAKoJcYwuFMLvpH1V+Iyp+7QUjhwVVWH6S
	RcS57FECI12QiFX8QIhJiW9Rsc5lCUD986WmtO8Qgm8/NrTyGxGFqr1H+Uq9/2ns
	Jt9vJajkuPO/MKv1R8nrKLCLaBc4Bo8Ph5k4TcjifG7b2MsH6Dirklidx3/gCx0u
	g6KnixOlt1aQaaNsDmVb5n9MgvvUWNs+4pxJIvd2AfZzVZQbfSFYANsi4JPVu9Y7
	9GHElhNGTiT0pVIHdAQCjA==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EE/+SI9xAJPKjW/XBKOgUt4Q1ovPRhPjjd/XscrLbzd8I12B3EMTUQ+PMdUMJtFfaBRyB1JHBPu1Ic0wUkq+FDRdmhMEQ5XDP6iZtZ9H/iKvK4eG5hTg4G8580W7BLv2ZS/K+CXvltc+7DiTJTsKToKdnYR/GiBz/kfACQlKLpJjQC+kHtmdfyI0W1MboLgWyDm27XgmfShc5ydbVxzSL8mnB51M6hWz4MFKjNcBotQxt1l/XO9iNqjo5KgHa4Vjue+Q1xmbtb8DvGP7jFQ7my/0bCJrzjCFSwHDc9bc+5s/HEJUYaTXYb2YxfAwR1Ri32yaWS4UkE1wjY6D6qo8hA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sD8t+mYfRHmpc5cfsi8/dOXrp5mpcgGDRKDPUQ0NB5s=;
 b=TQBfNtbvlEDSw6NhczicjbNpiWdsmDIhlKvobmUl8Jet2PRtFSgzgMkKOUIFcGaJ+S78tmDEdW+qpL7qFpSW6YT+rUxYQAZoARTo5Wzuz3Qjj72D4m9WtLV7GgAjZL4xBAlxzOWrxVu5GOywpVlTxv/zyH7pEuTtq3An6mmqlv/7d+s3HQvQI9h/tnT0M6KDOt4lDfZE3YuzTIghfc1i9uyidCof3YZ+pSpD+XmZlo84Lx95FQqmwVKcNkIhJuQYt2GU0OmqKcSrxobV/CLQsDX28yVIiTcAxBsCjk/DIwPI9mHiFEvM0TAz1NNRBDBTryRWRcFhrO3GuQBvCY1BZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sD8t+mYfRHmpc5cfsi8/dOXrp5mpcgGDRKDPUQ0NB5s=;
 b=J+0NJuzPEvUzM3riVrBx+PklZwQg5NORstUbkIxn775bMUvo8+75Lj55W6YeZrN5w2A2vNrVk9N4sboBY0bgEs/gWgFdeek0tMyxUyqi2I8fFP5TNiQoY8m+rJW+10yoACsvv5UeOk2URS29iZHDt+o2BLk9i5+h7mvua0daFlw=
Message-ID: <e908202e-dbf4-4ce8-9f23-2dfe1428f566@oracle.com>
Date: Mon, 27 Apr 2026 13:31:14 -0700
User-Agent: Mozilla Thunderbird
References: <CAADqWPR429bRM41PA64MZh7t6zrMB=aiyfVT1_nz5aULL8w9Tg@mail.gmail.com>
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Content-Language: en-US
To: oss-security@lists.openwall.com
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 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
 5V9JclVH6u5Gug==
In-Reply-To: <CAADqWPR429bRM41PA64MZh7t6zrMB=aiyfVT1_nz5aULL8w9Tg@mail.gmail.com>
X-Forwarded-Message-Id: <CAADqWPR429bRM41PA64MZh7t6zrMB=aiyfVT1_nz5aULL8w9Tg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PH0PR07CA0010.namprd07.prod.outlook.com
 (2603:10b6:510:5::15) To CH3PR10MB6739.namprd10.prod.outlook.com
 (2603:10b6:610:147::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR10MB6739:EE_|LV3PR10MB8204:EE_
X-MS-Office365-Filtering-Correlation-Id: 3d18d32e-3a0e-4a4c-cd08-08dea49beec4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|4022899009|366016|1800799024|376014|56012099003|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info:
	GmfQ4mAyC4NkLCRmPs0kMYKRZ9Wl5ESX/M+meNcDJx7gpwpQcRS2aIAjodfYyjuqBibZMAKnZWJBZOOvGTwV8402+mZHpP0fTmIWa6cA6EqLaa1zmeCHIOne0UF7q+Mu0tYaK1XU8eX+NZdASrAXmI2uK3V5C+LrxRiWArMFQcMj4OpttJRPpkDT1OL5hFPjpBAyJrSFPqIohRfm503m4FIhudV7P0nq1KTfyYOeB7IQ5Mi/5T/eMliFTNgrFgg97JGiJL+cclidviO57NtPyOor2qvVuMJVNNRTTNl8u7GpDMeqwUIgcdh32VQLQr4d/q5/98L8MID4k+1fkCfqQwXJYcD7U2xRNauytEiajWr+4rMZUZDpN8OY0E4QUgKHTYnn6Os1Typ6M7wJVJpDFY81hEetaWhDa3eAE7hP/l61sM501Mrt31C7NlBMz3pq0H34Zl+BU2ycTuXM8HiNH4jdJVjUaIpe7V6G/ZMiTQqO1R47sHGG4iPNJQhWJqb0OvouHeMZFAeNPB/9c6re54B7eAkA5pxqy94RVMeN4WCy+0geeVoa7oz5P+M3BrT0GKKaDmk1+eV4fWpAfugpODN76xuY4vQJLfUn9zoHdOI2287SkESkacHy/YggzmTGqv03vB1sk1iZ0fyHF88FVDwUDFkTea+i53JiK1RBjtaljNfnjnfhKWplJQZ+r20Jfj04FkaMjo5IH07WIvTlydTiyADWY1kFLBjMM8C6GthP18lBerGEIQkr7Av7prMN
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR10MB6739.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(4022899009)(366016)(1800799024)(376014)(56012099003)(18002099003)(22082099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?Y05oc3F3NkJuUjNubURRTXhvam5iS0dRRjdnU3dtaktYRnVrVzJaMUpPWUY0?=
 =?utf-8?B?eGFJQ2duLytOb1F1Sll5L2lQRmpDb1poeGRRWnJndXFpQllOMUV3MENWNlJC?=
 =?utf-8?B?ekNvTndBdHlpcE9XVkc4YU1hTVNlNXgzbW1JQldFTWQzUU5KS0ZVSU1XWTFk?=
 =?utf-8?B?dHlRTjBINi9WQXp4YjRma2VlbXc5SVowOUdxS3NKQXgrTjdPUE1hN21lNEVZ?=
 =?utf-8?B?QVdiNEFMRmFLdC83bE5mbTNpeTJmM2xVVzQvb3JMVUU0eW94cW95WFgzMjhZ?=
 =?utf-8?B?QzZaSXhVbVhxRTBSVlRPRnJXZWhNUFNnckI2alNIT2xWSWhJSGErcGh4M3U2?=
 =?utf-8?B?RFVROUhHVDJ0UDNZMzJvOEF4Vkl6UTlwRXh0dnNkWmY2Z0h3MDI0L2pYcDRk?=
 =?utf-8?B?UjdKaHZTV2xmdFI3TnlXRC9scm9PYlVzUDRpRmJWREhpajZkbEZLMXduMkJ1?=
 =?utf-8?B?MURwK0RhS1NGaXJBb3d3a0FKdnpZTDR1L2dVeXJlVGw2MDJtL3FlR3gvRFNQ?=
 =?utf-8?B?Nm84RThyYnNnUDh6eWtsTFNLWHQ2U0hKMndLaG9uMGs0eDdlRG41YU5PWi9p?=
 =?utf-8?B?dVFlZEJQRnBBS3dDM3k1MUpBSmxxTERTeVJIaVpCSDFTb0FOUVA2d2JRT0Jw?=
 =?utf-8?B?SmFkU09lVlJONStNUWM0Q213S2k0bEFReXZKOEdjaWRvR2puTTFWV2pNaDZ0?=
 =?utf-8?B?eEhSWmM0dFlMTE9Jc0plbWNiMHRIYTVGZDlNOFRGd2lpYXpNM2s2TFF0cUFy?=
 =?utf-8?B?dGt2THVGRTlZcGZjeFlEWk9BZWNIcy9DOEpRTlFoSnRkNm5BLzJJRlpOV3lY?=
 =?utf-8?B?dG9YcVRLZnZJR2orWkRmU2ptRElLR0lVR2l4Mmd6MzJPSmZacGJuZlJTamxL?=
 =?utf-8?B?OUJKWUx4VkRBN0paS2hUTDQzK2VXUUpmc2o4RThvUktYLzIzRFBSYytBaTMz?=
 =?utf-8?B?bENXVW1YRVlqNU9jdVhNQm9HemlUb3dLN2VrVCtwV1hHQUxwbzBwaWhSQ2pt?=
 =?utf-8?B?TmR4bHk3VXVYQktwZWVHTXBybWNWcHd6dnByQmxta2lGajhHYlpNVG04N3JI?=
 =?utf-8?B?U1JSZ0Rvd005ZDEyNkRDdWJkZWNQakV2cmN1b2xaTUJPeHhVSDkvN0pseEtr?=
 =?utf-8?B?ZGlzSmZlaWtWQ3NjdmlsbURpYWZpQ05rdmFuUGdEZG40eVZPdG8wVlllZFVy?=
 =?utf-8?B?ZUpMcmJ3N2R6Snd2MXA4cTNwaUt6TkJISUJyd0dZd2p5YkxvMmN6ZEV6RzhW?=
 =?utf-8?B?R2ljc1M2VTN2Mk5mU2tpNnFINXBFR0hWZENVZ25ONUdvSjQvcjM2QWN5QStR?=
 =?utf-8?B?YlhXMHpMbHJmeDNtQXp4ZFZSSHU5a1MyVDJWcVgvQStDVlVnV2RHaDFrblBT?=
 =?utf-8?B?T0VYSVBZN2dHOTBLejQvaEl6ZGlMQWFKd2VXc3gvcVpQRmVwNFRBRHNkelJU?=
 =?utf-8?B?ZFpVMTZEUjVwWnFVQjArd0E4ZFVHZlIxVXJsMGcwUUtkSWcvSVJTZHFtV0tW?=
 =?utf-8?B?S2QvNW9NUXdGTjU2TlgvNzlSRUNhNkZmWTlCbEpyQzdjejJrWmVsdy9XV202?=
 =?utf-8?B?SGFUbHA2QW9mMXlWZFJLRnpBTytWY0VLNklrSmNvNWxWN2lnTTI4OENSdGpI?=
 =?utf-8?B?MXBwUlJmcXVreVZsN2VXbGFrR2dsemo2YnZ6dWV2MjV6bkd0ckMxUTlDKytB?=
 =?utf-8?B?V3cxeDJNS1BGbnhITWFqNWFOM2xWekVNN3RQc3V1Q0UwcWRSaGxGZFhVQXZN?=
 =?utf-8?B?SlJBQ1lHNysvZFR3NVcvTWVnNEtJWmNFVm9EaGdQdmxqRUNjMkhabUFkbjl5?=
 =?utf-8?B?UUp5eTNqRDdhNk95enhYWC9XRVhYeHVRU0xQaWlNd0RWbE5ZcVdpWDJ1aWdD?=
 =?utf-8?B?YmtETktzYk1wd1FVM3ZVSGhnaUxEOXlXaDBSSXdaRU41ZVp1TzJXYTZpZEpt?=
 =?utf-8?B?WTQrTjZoZjB0eVh4azB5ZmkxczVGZk4wdElETmpaZTZlTmpKR0VxNm82ak0w?=
 =?utf-8?B?Wk9iNG9hdUkrTGFKSWQ1dmRWNG5iN2pVZGlGL1ZLWmw5Rmt3Q2s1MytodkZo?=
 =?utf-8?B?bXg5Uy8zZVU5eUk1UnJOWXM3bFdWYVBxWDc0cUJ1RVJhM0E0bTFvUTdpWGJH?=
 =?utf-8?B?OE4vSmU2MElTbHBkOUN2YTF2aVJJNUlmUHQwV09GcS83QjNKWVh6SjBYRE93?=
 =?utf-8?B?aUFxZUFTVDk2cmU4UzZIdFZFV0NLREpZS21OL1diZy9JcWpqZkUrbTRHNVpy?=
 =?utf-8?B?YkhuWWlIanYzS211NkZtdFFwZGV5Q3YvRDRRTHRpQmJiQkVjNjhjR3h5dVVt?=
 =?utf-8?B?TWlIQ1hyNWxqa3k2RFNBcFZmTkdBZnNyMVFzWEQ3cjdYQ3YyNzVBSmpzMGF4?=
 =?utf-8?Q?OuFZghIP06UrvOqE=3D?=
X-Exchange-RoutingPolicyChecked:
	ho0w4GuzKEXMgDaSNm0PVsuCU47EE/fGQWpo4qpfZW+HEU6hG4OgcmceSxSG2YPTFCB79socDeHJJQJLBhH98SpVVeb/0SittyTChx3oiO05i3EpmHiCACtKPK70GSumZzIWDkhXSslsHcKj0c6fBcPr/II02gIpmlOzRNNASaK7F0T9NltDmdX9fKCqdHpxzzFVA4lhHkZyp65z303/qa5WmDsBKLDk9Aak2kTOQE4ScTbcCj6C/szdEnTT2OVATfgL2T33qxl6HQMGOAIyTuAq3bXNBfKXXCQ7wN9QBDNOm8jAwS8AQQyQ2QajxXezkQULaH3Kiwj1YMxS7xNZTg==
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	8xwpFkwrInKYAW8hGUcrlPi44gDrBQ1CqDuEntf9pcFzC4Rd9rfeW8PabT2tbWJJNP+f+4keme8vwHcYHZmF6cCj3h13BLeQkblLS1bXTN8e21TbU5ZJ4JKWAku1yGlxYlsx5eF6ZR4/N8z1yofioSc8vIyPFTciAPSLPB0zO+nkztm9eFv788OJvbUSOOkxnHOzJufkCxAA8+7SmFASatiHctzHprabd8uG9THToy+vAjdIHh9v2yyXwoJPM9YkKdRbbNlHN70zHSu/Fsu3U5KW1aak7NY8mAba/RyQJzg5aRFHr7esaN1ddiihtMzUPCQgT6b4QFLPjhWFtoojrvep3MMGWKsG0adF6i7D7JuBIAPqnNri2mBHpGsb5RGfcuotaoQ0S2X+5UnQ05niSw6D5VxTXV5RWU0WvbSXexUvhKPEA2Q9YtDiI/z3e8gZQQVDIHN+fia2dYg4pzQBPWnBin2YLLoTxRnkA7ww/gLpfKBjA++pZP0jZFJQbLMGJ+6vTxP/3MZwvXfcSg/XY3pQyf7Np3enisdTcVDg4NDNBCwVrbfCwYcuHYzgKgRzhtNlz9Ymu0ZufFrEpO86PgdkkXwDCQudHJ02A/0FXkQ=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3d18d32e-3a0e-4a4c-cd08-08dea49beec4
X-MS-Exchange-CrossTenant-AuthSource: CH3PR10MB6739.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Apr 2026 20:31:16.7898
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HtyoviOQcn9SiquwEfa629TKynrsAXQv/owyJD6drmUyjXRube7Aj4JD+5tbQQflR2pfN159QGmHLfLhlIY1JIR+HXHshPyagwh+YGm5zzY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR10MB8204
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-27_04,2026-04-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 suspectscore=0 adultscore=0 mlxlogscore=999 spamscore=0 malwarescore=0
 lowpriorityscore=0 phishscore=0 mlxscore=0 classifier=spam adjust=0
 reason=mlx scancount=1 engine=8.19.0-2604200000 definitions=main-2604270218
X-Proofpoint-GUID: CoBgxC7DczLBeingCMw3kggSgJBG30p_
X-Proofpoint-ORIG-GUID: CoBgxC7DczLBeingCMw3kggSgJBG30p_
X-Authority-Analysis: v=2.4 cv=BePoFLt2 c=1 sm=1 tr=0 ts=69efc7a2 b=1 cx=c_pps
 a=qoll8+KPOyaMroiJ2sR5sw==:117 a=qoll8+KPOyaMroiJ2sR5sw==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=A5OVakUREuEA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=jiCTI4zE5U7BLdzWsZGv:22 a=RD47p0oAkeU5bO7t-o6f:22 a=8r2qhXULAAAA:8
 a=NEAV23lmAAAA:8 a=8AHkEIZyAAAA:8 a=7Urq-GmIdED5b6ts4c4A:9 a=QEXdDO2ut3YA:10
 a=8gvLZcY7Nlvl4CGD_6nf:22 cc=ntf awl=host:12310
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDI3MDIxOCBTYWx0ZWRfXxwyh+1WryEvM
 W2Hzyv0mnI5boy7BccGQ2irjpJbvmFtoNFRvHTok0wHNd7z1oGm5/PxtWTNMMEyQUHK4P2tOR5s
 JrKEPTftyUYnkM2E37NFVlNNReuTooXfmGWRFSSw97W+hNstxMHG/le2105ZaUXolbp86eEXy7U
 IMs7k28aSsNu1TjoN8G9ypHA12kzsBim+U6ilQKrIuoq6jhFkbrBgs5pViJGc6n5eEt4L5YdQgu
 OO/zVwqOiRV0VBi43lAnMMOOJq7JpmV0nWAKgPpW7lXtQJ28nD7I7ueVkOGwe/QtcCBhpd60QmU
 vTw/KWEAHCSIJ5c+Z+y7uFtfzxNIEsBN6h37YS+lBpES2WNIecDsJRGPeA9dCKI3LPhRINHfgIG
 wpmmvQnVOFKgCtxn4cmW6dumz98PqMpMissFfrBL+kemF3JnzawQICGfJUUJKcS6t78QNFmlg2S
 3sUOG3f5qcCceaa81QJTAUdOuBLPhNgMbaDgzEFw=
Subject: [oss-security][CVE-2026-6357] pip self-update functionality can
 import newly installed modules after wheel installation




-------- Forwarded Message --------
Subject: 	[Security-announce][CVE-2026-6357] pip self-update functionality can 
import newly installed modules after wheel installation
Date: 	Mon, 27 Apr 2026 14:20:59 +0000
From: 	Seth Larson <seth@python.org>
Reply-To: 	security-sig@python.org
To: 	security-announce@python.org



There is a MEDIUM severity vulnerability affecting the pip project.

pip prior to version 26.1 would run self-update check functionality after 
installing wheel files which required importing well-known Python modules names. 
These module imports were intentionally deferred to increase startup time of the 
pip CLI. The patch changes self-update functionality to run before wheels are 
installed to prevent newly-installed modules from being imported shortly after 
the installation of a wheel package. Users should still review package contents 
prior to installation.

Please see the linked CVE ID for the latest information on affected versions:

* https://www.cve.org/CVERecord?id=CVE-2026-6357
* https://github.com/pypa/pip/pull/13923

_______________________________________________
Security-announce mailing list -- security-announce@python.org
To unsubscribe send an email to security-announce-leave@python.org
https://mail.python.org/mailman3//lists/security-announce.python.org
