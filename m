Received: (qmail 5155 invoked by uid 550); 5 Dec 2025 22:33:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 4051 invoked from network); 5 Dec 2025 22:33:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2025-04-25; bh=U4tHqUeg5ssjjtqJ
	/USH/U+GNPn8giaQJ7xlx00TMXs=; b=KGEbqojHAqi8mDKgb/7YI2I/kJ9ier0Z
	OSgBmpot9HdUtmpJamA66tEyD77O78D5Q+/PCpfvsL2gyrSOTeuxwOjRBG5Fp46x
	3wS3nmE0r2hiFiRUca+Po4Iua60EVX6i2kMTOqZQvf52L5vqmZPJl9uoYGfqsial
	U6dKGsQGLeIcN3+D3Bqo0Nmf7c5b+hWGX/uOxBfyvOw9QP8Kv0+igvgIs182TMM8
	yHpRd5G78G78hKHKdsniFEiFLWN0yEZHLmV93d58ZeYuLkDP4YQ4xnsmy2Pqo0+d
	uqc2OOQbr57OoulweRdqHS6dwdrg9Ld4xQfi4ObgFPKeLc4UWk38VQ==
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=n11rPgq7hTdLyfLlK8wyWLCeiWD9dXnSkRN9ttiId5jZzG8uSdQ4IYPKoce4Hyx9hgEEaNBauAvtvDrmiyB+bzwKF8voEKLwRUPc1a2iK+YtwcKLzfa+W8ihhKEQipfvdy1Bg5Qssu7ClwZ/6MnuzM036WpsWazEAjqBzvitDpFRa2kLeC6sVoOW0C0b6Fv5F69+xFJ3Thm0gkNComAqrF38S2BPrwWYzBQKYhsvX7xOQcqQCQSR7FnKuOB8PesKv4WuGLsIiXk+tn92PeE7HGp/fwcVnEtXGSwitcYwZtrhUpvEOyStvv16q07AWh2wt+oCfTD92R/If+JAuyH5cQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=U4tHqUeg5ssjjtqJ/USH/U+GNPn8giaQJ7xlx00TMXs=;
 b=Fag/GmQLTseK4FWzn5js4BVmt+0z1Qi4J2JkkuvguHDG5hhDPkF/6U19fttJ29FSa2Gjoah7gy7eggA+cF7Uo8hPYs51MMHeT+RgtQSZ2AjpzwF2RduCLfmYaAHrXyAFfpczDep6F4HwhunBpE9UmfhvztApfKqReJPWMnuJM8CV8UQAzv1UQYNhKs65xXszfZB8ORT5RFV/HCNjRlyKyZK3z+QvoZscUMpAuHs5Ab0kZ0bCohypBy0IUII/dZxdjyhtvDrAKTzl3hjTEGQNDA88c+EsNFEmQRZtD+FcFjeA1Bkes2vNWn0ID5xbR0ZGId1hQq5m+UTEi5SQ6DFikw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=U4tHqUeg5ssjjtqJ/USH/U+GNPn8giaQJ7xlx00TMXs=;
 b=wocjUgjHUktcHTRd1L/Ly66JIXFc9YxMoGvOOluk020YImJeMb7CVQrTgvKzhKAdxymEvybiWTgnZ8ko5Uv7iB0M8eaSiOOsYnlto03ITtOxbQmcalNae8LhKeo8CFmfZ6EKlLMyFasTxpZB5l9a5d6H7AcDWxckyU33b8AIwjw=
Message-ID: <2f3a87b4-ebe4-48e0-971c-6a445664c67b@oracle.com>
Date: Fri, 5 Dec 2025 14:32:55 -0800
User-Agent: Mozilla Thunderbird
Content-Language: en-US
From: Alan Coopersmith <alan.coopersmith@oracle.com>
To: oss-security@lists.openwall.com
Autocrypt: addr=alan.coopersmith@oracle.com; keydata=
 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
 5V9JclVH6u5Gug==
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PH7PR02CA0020.namprd02.prod.outlook.com
 (2603:10b6:510:33d::28) To BN8PR10MB3396.namprd10.prod.outlook.com
 (2603:10b6:408:c5::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR10MB3396:EE_|DS0PR10MB997554:EE_
X-MS-Office365-Filtering-Correlation-Id: d2c4fcc5-f747-477d-2662-08de344e3d4e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?eHBnWExYaHVtSzFXeWJEdElETTBHZVRjSUNEYllyaGFmOFJJQy82V1AwYlhj?=
 =?utf-8?B?dXErTlUzZzc3VDFNcTFHSEo3N0xHSWZUeHR1Q1ZHc01IanZPaWZOSDRiMlhG?=
 =?utf-8?B?SWdHVlRVcHMyR29YdGs4WjVmWDJEWHJVcUR1TE4vZFkrRGpwV1lISTY4MmpU?=
 =?utf-8?B?M3l0cGJScWxhZE1nN3VqRjdzbzRGeU1GWHVqaTgrdk0rQU13Y2d0clhyZkd1?=
 =?utf-8?B?ckpQY3N2dmRMbEFKclJzdGZjUVQ4ZGljV3ExU213MGtHTDQvMnlCa1hsUVUx?=
 =?utf-8?B?SlJybDN2SG43Y0NZblFGL04xRVFZK0xTbUlzbFNXT2lUUkpUeUVTeS93UENK?=
 =?utf-8?B?RmhoTkZQVE9YLzhrNVNPWjdnRVVQaytoV3JaUUJjT243N2ZVQldwNy83MnhR?=
 =?utf-8?B?TFVGUkRodGxWUVdZWmRHQ01wcWU1WDBxSGJsS1NnWGlyby95OEh3K0syZFhi?=
 =?utf-8?B?UDhPYS9qWEI0RitUMllhK1BwWGlpOWhjUkxQSGdjencweEtKckppSDFQd2V4?=
 =?utf-8?B?MHZrV0xmWHZ0cTY1ZGNtaXp3eDIzL3R3YkVnelVmcWJPQUwvREo4Q3VFZkdC?=
 =?utf-8?B?MjVDLytBQm40VGQxcU10NGxISnRCeGNTREdxVjMyUm5yQk5Tc1d3V0hPeCtv?=
 =?utf-8?B?YmQ1cTYzYVI4cHR6bXkzaFhMdW9LZ2MrRW5FRExrOEloZkxMT0tIdnNqWExX?=
 =?utf-8?B?Rks1aTlxeFBNN1dyaGFqY0NPTmNTMFAwK0tKNjA3VXZOOTBaeFVEc2lXOEdy?=
 =?utf-8?B?ZzRBNHdRQWlkRW5PbENLOG4zdE8raEw1dVZqRElhRmlwdVB0aTI2MHg5TVl4?=
 =?utf-8?B?MXYvWi9lNjJ0NkVKa1l4NW1ZSG94NU5yTTZPcnBKRWVjNjJoTDFyUmpjR0lq?=
 =?utf-8?B?WlVrYjg4dk0yMkc4dlhYbXlJbUV4QmcrWFZZdnZRanRUUVZyTUJOaFRUcDNu?=
 =?utf-8?B?VkxHVkdjMnFEbXRoSEk0WUFPb2ptV0tPM1gwcGVnUjE3MnNmclhpY0ZuWXRR?=
 =?utf-8?B?WlNNeWlOQU9NSjd4Z3pmVVZ6aTNzMlRkVUhJQi9NV2xkN2hRTCthY2lWSW9F?=
 =?utf-8?B?MFdiQWJLNE12MmMzWWI1TlhWNXBIYnhDQ3VJNHY1NkQwRk03b2lncU41ZDRJ?=
 =?utf-8?B?dXl5dCtrRFJXVlNZQnRNdjNIRGlXZWJZNW5XdHl6UjEzVU04aU84TG1Mc21v?=
 =?utf-8?B?N0FTc0l2ejFnUlpNTTBicGViQzIvc3c3NGRtTC9zSHFwRjVEYnljM3BTRVEv?=
 =?utf-8?B?elFZS3R1czhzeEh5UlV1SC9pY2tGUzFWQUV1ZWV0alpEOGp0cnp2OFc2Q2dQ?=
 =?utf-8?B?dHNOV1ppVDhKak9keWt2bWtmcm5EWUFUL0J5bWQ4ZVVYSkxpOFZHOUZKVFRV?=
 =?utf-8?B?TElWZm5YMGZqWnh4MXpGMk9ydnZhUlNNbUdEVEtMNXJQcnhqYlAxRzZnSUh4?=
 =?utf-8?B?cDNzY2NtdFUrbnBheGlvZHgvakhLUFE2enM0dk1hK3hMSFN4OWMwV1ZlK20x?=
 =?utf-8?B?VTBPOHlVT2hjc0s0L0puWlpFVEFHVE5GMWdWZDl2MCtsZFlTMzdwYUtkV3dm?=
 =?utf-8?B?ZTRObFBPVnByUzc3cDJPQUVvc3dXVHQ1NVZTVHBOaHN1Qlk0eE5GOEEvTVpk?=
 =?utf-8?B?WERxamFqNlQ5bkZVRnFvQkFFTGJnNXFBcmpPUXR2bDFOcit6Vk8rQWlyTlFl?=
 =?utf-8?B?a1Q4SGtYQ3R1NktYazNWdUYya2ZSU3pHWXU4QTgraS9pL0kwSWR5UStFNzJm?=
 =?utf-8?B?VldCdWRxRVQ4VXBqYlFBRzlaR3ZockdyNEJYYlV0YXl4cnB4OGZFUWNKSGY2?=
 =?utf-8?B?V3RweTh6NjFWbGg1dHU3WTlzK0h3clBlZXkwNmhJN2pEUDNEZU5kWmVZbGh6?=
 =?utf-8?B?endPRk5WNE5qbzJXQjFDejF1d3d5Y3NOUTh0WFB5VGpWSGw4NTNmbGsxamp4?=
 =?utf-8?B?bWhPenp4bis0QTFUbmRIWTNzcmdOSzVMeUY2bWNYWmFQNkh3U2RHaExJQTNK?=
 =?utf-8?B?SEtydzJySHZBPT0=?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR10MB3396.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?NjdydUxWbnIzZzJ1bTVGejc2YWRDWUpySGxndnl3Q010eEJQbUNxcDVmb25H?=
 =?utf-8?B?UzdRbjNJSWs0eVJFaEtzcFpSRTFZOFMvWVFETHlCRno5eGFVZ2VhcXdYdG9C?=
 =?utf-8?B?U1c4Rkx1elVsTmRWbndXTmhSajFBdWE1SkRBSVVzc2kwWHdUQ2xETm0rRG5T?=
 =?utf-8?B?RlFIMHBjTVVwU25sbGkxVmt5N0dPOFN4bGRxcm5xMlAveFpUdW1lM0NPTnZD?=
 =?utf-8?B?YjBWakdTL2N3YXd2VlZwNGtqNWd1cm1TcDVmYjVudkdHWml0bXcwbDJUTXpp?=
 =?utf-8?B?cUVmOTZJR012SkwxVnc2SG5taXM0elZDM3BmVGNxYnAxT2licXA4c3VEYlpo?=
 =?utf-8?B?d3R5SFNlOVFndUx4azh5UXp6T0lBQ2VidW0yaVFXdkhQQ0pveXBlRXcvalpG?=
 =?utf-8?B?dGxWbENhRDRINWJMUkgrMnRERUx1TGhCT0w5Q2tXQlpLcXExQnFUajBRYUR6?=
 =?utf-8?B?bWxNOS8vLy9UTnBxTzNpOExqMUFDL0duUXV6R0lZZUtLSlJnSHAzaGIzOWJn?=
 =?utf-8?B?d3NhTlVaK1FzSUpyMFV5bHhWdEJDc25qSWNESlNwUzJOTDk4MmFnYUJiZlpX?=
 =?utf-8?B?K2FMNXlHa2cxRWg1NGV3LzRFVUJVU214dGdaWSs1RW96NisxS0NJbC9FYm5H?=
 =?utf-8?B?dUZFZ0U4MDhBS3E2Wm8wTzRFMkptMmpBd0lhQWRTSGRaMW9teWVDb3YrNGJO?=
 =?utf-8?B?b0xhOXV3YXRRWDF3aXgxbzVWOCt1U0tiK2RNNnlIWm15QWdGSTYwd24yWitS?=
 =?utf-8?B?RG12RXJ3U3dJR0ZoVzVnK0hmSDNXUVdIVFZUUnlpWkN5cjM0RFc4ckxob3p6?=
 =?utf-8?B?SkU3VTFmcVdrMkFzZVZkVmJBbGgrQjNvdGY4RlNsaWdXZ1MrWWNjVnEwMzNR?=
 =?utf-8?B?WmlMWitKem5vRWtiams0V3lOaHJrVjcva010SzUwOEJRU2pQTGNXbktaRG9D?=
 =?utf-8?B?OEJYcjZ2dXpMbmx1NUc1VXdhbjJBdU1hK3RXYVZJdWM3bnU3RndybmM0amdq?=
 =?utf-8?B?K2lWRjZzd2Y1S2RsWjlFaTZ3cHNyekdEVEl4QmgzQ1YvMzA2VkFsb0Q2UzI0?=
 =?utf-8?B?aXBackpLNTRCOHFTK1JFclRWMm1xWEV5M0FYMTExSXRWS1hNeHRiT0JzdzFP?=
 =?utf-8?B?UEZqZFFHNjc1ZWRQSDF5TVY0dHUwWmxYa2ZqZFJQYTJJSnViN2E1Z2tDRE5z?=
 =?utf-8?B?TGRvbUdHYTFySWtoeHBkMDdLMko3T0JlWUlXT1NxOFVmeFhBUFFobVM4NDNh?=
 =?utf-8?B?S3lhUWFDVTArM2RqcEs2dXNxN0xyOVQrUjdrZDVwdmxnRzN1bG5ZSERrUmpl?=
 =?utf-8?B?Sm9ieFAvUzVtR0xMZEVPRGJIQnpnVTVYUFpMMmdDOG4zTWFvcWZlUjdVSXFM?=
 =?utf-8?B?RnlBb3lyRlpCSU1IamRyVGRERGtuZmpXd2pmQU1ldC9lMnR1dW1GdC9wbGtn?=
 =?utf-8?B?dkxtWU5VMnY3Q2ozbEZHN1REdk85bHB3Nlo3QUJGNzl3STlETUM0MEhHNGNi?=
 =?utf-8?B?MFEwU0pDNWo2b2kwcXM4NjNReE5wNzBWVlQyekJLTUNMa0toTWVVZG5ITENp?=
 =?utf-8?B?S25VQ0JmWU5uSUJGVWdlZTQ1bmpaNFROUUhUTXcxdGErUXJySmgxcDJ0eUlq?=
 =?utf-8?B?aStmb0xQbS9TZTdHYXZ4TnRPbWxBU2svdzZzQkxyY3gwUXdGWW1LUzJyRWZy?=
 =?utf-8?B?VU05Z1diN1BUdWhrQXRIdk50V3hjMlhDbis0WjRKRXBpaFJaOTdaSGY5anA1?=
 =?utf-8?B?dTIwQmZ0WURtdyswTW9veFNrR0dWNklZYjhZNkQrYlpnWVF2dkR1TmtzOHJ6?=
 =?utf-8?B?TGdaM0FOOHVhcGk4bTVkU3NBOVF2V2pLODVIelVEQU1oWm14YWdRdDRuekg2?=
 =?utf-8?B?OGJaeTFra3BHZzErY0RYK3liY1p3d2MwU1hZcUZUbndlaDJjS0dqYkdPbkJ0?=
 =?utf-8?B?bUc5RmhEdXpKdThiYlpIUTd5TFhOcW5DS1JoaitLbVhKUGdrOUUvZnFRT3VF?=
 =?utf-8?B?cmlnUUY0elQ2UkgwdGV5VVUwVHhPVGptSHdLRW1IQjJRUzVXT1paZE9KTVVh?=
 =?utf-8?B?VG9DQ2dGVi9tTVBWa2NtR1RtWEF4NVhpZ0g4NU1ubzg1OXF0VkFkOXo2QmJm?=
 =?utf-8?B?MFhERmlJTEU0T2Frd2pVNTF6R2Y3YnRqZ3E2elRoKys2bTV1Sk8xK2ZHcGZE?=
 =?utf-8?B?NUE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	Q2iPp7icOLf8d6MyXoxDA+DvD3YUWE+Xb3xqeoLHOe6k+UgiuHuELpq4Fn3luEdW/o8MKX5ddytE2ZS8ei3zTnuoCOEeuWuBWIoeFatkBr6GvKxrM3anpn+j3mGrsdqMQnmcoAj5oQKz5/IbGlnZFEk13vg3LgsrPaIYwT7Xc0PenZDdRiCpdnoRsTRP1G9JGXzOZZbhe+DEcjHHf+j4jjUh+2g88nwb591iwu2t+HVVZuhBlLa4nj7tM4OQLlP2zgv0tp39IVVAuH9vvYqt4v/XOba5T8vDPXLpjIO7Dh335QlfeaFiZjYLxQRdHeG4q6vDu44Mn1sw1sb6H/KSbEak+qWfDUHe7IeAdJj4l0cChGDLNyvJsdaQrlQybrUmMd7fqsF3RQl5CdOoyIZrw41tXQ9Y3zY8mV5U+DBjgjFPvfvI9yiRjw3GD0Ydp4VXQP6EUTcAdF3FXHzDLMKVV4F3j62D/L/JSD6uuk8EbUFbCWac02RdvSiWwtJLPnK+FC8mrxwGN+au9brMLk4ue8g6vL3QJ0EJQKy5vvpY8F03bz+YKbvsY8Rio7MCpDOVxAGouRyZvVSXNRO4qPkAwXLIaHK0omw3a6x2OtJhQmA=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d2c4fcc5-f747-477d-2662-08de344e3d4e
X-MS-Exchange-CrossTenant-AuthSource: BN8PR10MB3396.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Dec 2025 22:32:57.5358
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zV7XWfSVqYHijQmNyfPcxrH3JCySBPMU4KiVn8z4QxbVRiugyM0DrDuCh9dC4SwOxY0KgWpEZOaJF4NMMMu7FWthIkHT+HiYS2ltqkpckGA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR10MB997554
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-05_08,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 malwarescore=0 adultscore=0
 mlxlogscore=999 suspectscore=0 bulkscore=0 spamscore=0 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2510240000
 definitions=main-2512050169
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA1MDE3MCBTYWx0ZWRfXxKdgfNdsSfoy
 t4Gjd0Yv0mGk1xZVmf0WnlQhd5a+0+5Qgkpunc879uA8SMJF/sM0LXrErTmWnapbWnFXid6VPJt
 c3u5hkgrX+AhpP02PfLrGj6CLECopIlehZxY7BfENtwF9zlhILv7nyrYD4Z/Cq5dj9c+OrbB5ZF
 bUmyVze/ny5vz9tIsKiqMgTq9kc4qpVYIUURqAeckhVDxup6koJpJN/tv1FHBWHc3przra4Umrm
 RwW09sbW8jQZ47FxhG3v+hk1r7l3Zelk1zwN73FuMlpnSqnX1nJh823/uF5c4iBA6MhLZ3TXDlg
 ZLAkh+3sfhZfiwH5qMfSpHuXUYQEupGuXf8GXJaOw+caorWQ5FjVox35WH5ALuWfo75L17ssUnK
 jW0afkTDea5JbCR+QY77aBOqOLtXIVmiCBG4IdHDYQdpy7+iHZk=
X-Authority-Analysis: v=2.4 cv=NabrFmD4 c=1 sm=1 tr=0 ts=69335d9d b=1 cx=c_pps
 a=zPCbziy225d3KhSqZt3L1A==:117 a=zPCbziy225d3KhSqZt3L1A==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=wP3pNCr1ah4A:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=8r2qhXULAAAA:8 a=NEAV23lmAAAA:8 a=8AHkEIZyAAAA:8 a=ys-YTaRnYZi-uDyd0IkA:9
 a=QEXdDO2ut3YA:10 a=8gvLZcY7Nlvl4CGD_6nf:22 cc=ntf awl=host:12098
X-Proofpoint-ORIG-GUID: ABHOmN01l5b8DQdwCZKCfIZICB1UvjTx
X-Proofpoint-GUID: ABHOmN01l5b8DQdwCZKCfIZICB1UvjTx
Subject: [oss-security] CPython vulnerable to CVE-2025-13836, CVE-2025-13837,
 & CVE-2025-12084

-------- Forwarded Message --------
Subject: [Security-announce][CVE-2025-13836] Excessive read buffering DoS in http.client
Date: 	Mon, 1 Dec 2025 18:57:32 +0000
From: 	Seth Larson <seth@python.org>
Reply-To: 	security-sig@python.org
To: 	security-announce@python.org



There is a MEDIUM severity vulnerability affecting CPython.

When reading an HTTP response from a server, if no read amount is specified, the
default behavior will be to use Content-Length. This allows a malicious server
to cause the client to read large amounts of data into memory, potentially
causing OOM or other DoS.

Please see the linked CVE ID for the latest information on
affected versions:

* https://www.cve.org/CVERecord?id=CVE-2025-13836
* https://github.com/python/cpython/pull/119454


-------- Forwarded Message --------
Subject: [Security-announce][CVE-2025-13837] Out-of-memory when loading Plist
Date: 	Mon, 1 Dec 2025 18:58:33 +0000
From: 	Seth Larson <seth@python.org>
Reply-To: 	security-sig@python.org
To: 	security-announce@python.org



There is a LOW severity vulnerability affecting CPython.

When loading a plist file, the plistlib module reads data in size specified by
the file itself, meaning a malicious file can cause OOM and DoS issues

Please see the linked CVE ID for the latest information on affected versions:

* https://www.cve.org/CVERecord?id=CVE-2025-13837
* https://github.com/python/cpython/pull/119343


-------- Forwarded Message --------
Subject: [Security-announce][CVE-2025-12084] Quadratic complexity in node ID cache clearing
Date: 	Wed, 3 Dec 2025 18:59:03 +0000
From: 	Seth Larson <seth@python.org>
Reply-To: 	security-sig@python.org
To: 	security-announce@python.org



There is a MEDIUM severity vulnerability affecting CPython.

When building nested elements using xml.dom.minidom methods such as
appendChild() that have a dependency on _clear_id_cache() the algorithm is
quadratic. Availability can be impacted when building excessively nested
documents.

Please see the linked CVE ID for the latest information on affected versions:

* https://www.cve.org/CVERecord?id=CVE-2025-12084
* https://github.com/python/cpython/pull/142146
