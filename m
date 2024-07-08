Received: (qmail 9890 invoked by uid 550); 8 Jul 2024 16:48:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22098 invoked from network); 8 Jul 2024 16:37:24 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mQjbus+CYXM6FtDPq7JK1kIdSQJCqQYlb8nZdt4a1iF4IY6pH+i4Qhhx52YqVxLO2NZGl1Nx+uB5kAJLPlxd+yIOcocGMOZyhqrublbk/Jmu9eqT6nqHWgI2pSQhZQTykuWiQRuTlDtFL0r0aTchGAdE2Tp61KcyK1BDQvU7OHo6NtHarXhmv6jkFprARawuwrOqUrDz3WkJa/5qXe4OpLlzeQ2mI/C7EnobXSQ2sJTN6TqV0FWNs20R6TLVkKO2q7AxvXVbyVM8ZnQBHM4UUWo0xm6LPO6p6c26XzJzl0VuXx5YsNr+ftIsSeRkgj+W4vpr6YvBhKtaf0UgzyG+kg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WWkbNGssusDPVuDKMvZPBiWB9VZg3peYA3imaEYG1Co=;
 b=m39MhoNb0QtLxZ0dZ9gRs6Y9hipRU7u+Hw3cmVYmQU8XIVpMD4Vvfnw1xNgxhU/Zfn/4FR6Rv+5QQEncMIq1vcEdUzjIWaAZNn1SZUQMpaZ4mcbCEkdO5kVym3uAepjHQTXXHnPi/jdnMgJcy8RNFOVENLHKJ9KjykJtXMmPTceRtMnlh/6XM3Z3BphdG0i7+qxsqXoP5pUUp9RPru04mYXn6zDKF7Qqk2c4+exyu675TSayPKeUwVGqxJ/KMTGoz10EkGG0lgwdOqcjTadhDcK+9+PfTC3mfPD+NsGimq89oVunx14BSMgXC/lq+0HqIlkp6eo5UWfOSbjUS65chQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=analygence.com; dmarc=pass action=none
 header.from=analygence.com; dkim=pass header.d=analygence.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=analygence.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WWkbNGssusDPVuDKMvZPBiWB9VZg3peYA3imaEYG1Co=;
 b=WHIkOIONUE41GiaQZdw2Q3awAQNlI0ZJY+xS80yup7aYq4V90xqVYD7+mjbah9LZtgan3kaAsEMtC3HtGcsPyMBgUxFd485Bwypt0OIQAXsXbkdf4si4y4OxnoLCPRTlDKHeWLlpCkvMjmmGl2T8ilaX5ClQJipFGV4GuEzU8og2LRh1f1dnRMTzbwU8CaZLIy5Im64O7krDp+mg48lQgun/9+qZ7Ot2K6HYWaP68ClGtpdH8XTuEOMQhKXBOtzG0P6IgqetX/ytcdfxNtGNHsF2yuPPVU+9cFU//OqZ6ncOfrc+qg2BKrBQBXCWpmx0WQVlSH6cwPA+aGREJzmAfw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=analygence.com;
Message-ID: <30400489-6c59-4133-a3ce-fa0c16b63c02@analygence.com>
Date: Mon, 8 Jul 2024 12:37:08 -0400
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: oss-security@lists.openwall.com
From: Will Dormann <will.dormann@analygence.com>
Autocrypt: addr=will.dormann@analygence.com; keydata=
 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
 CUkSuQYhz5EOfhvAp7jL
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BLAPR03CA0078.namprd03.prod.outlook.com
 (2603:10b6:208:329::23) To CO1PR10MB4771.namprd10.prod.outlook.com
 (2603:10b6:303:95::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR10MB4771:EE_|PH8PR10MB6478:EE_
X-MS-Office365-Filtering-Correlation-Id: 066ae334-9e4b-44a0-100c-08dc9f6c36f2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?QmFscWpIRWx3SytLMkdQVlpNenBmSzhTTUNjRnlyTXdXNW5wd2g4REY3T2NQ?=
 =?utf-8?B?Ny9Mb0JhNXVLTHM2UnI1ZVRtSDVWOVo3WEZZNVhsRGQxdW1VM0pDNHNQZTNG?=
 =?utf-8?B?RXlhMlprRm81L3Fnc245MUdaVmNVVCtsNUVkSjVMQUFkNmdDVWVYVFl3YXVF?=
 =?utf-8?B?Q2lIeG9ISUZ1cU1GU1RNaE9YU2JZcmZnWlhTc2xGQnFoUmNROXFzREtjaGRz?=
 =?utf-8?B?Tmc4R3E1L0NUeVErMnIzRjUraDBhOUFDMC96NlllcllWQ3lHMmpSZU5BV0Zu?=
 =?utf-8?B?dGJlOXROZTNoa0tJMG9ONW5hcW5vS1cycDljWFZTYU1BNmhiNTIvUkNzaFRk?=
 =?utf-8?B?aE9yODFwTG0wWTVRU1NISFM2cVlodlptWnlTZGwrdXEyN09RZjkzU3BUS3E2?=
 =?utf-8?B?a1hxS0N5WVp6U3NFWGx3czlqYXBiWmZhbEUrdGdMMlA1QU5PbWNOMlRERmZx?=
 =?utf-8?B?bGRRRDZIYUJxSzFFZUJEWGNYc0lHZTZaejlkMkttYkl5NDAzZitlZEtxd0Nk?=
 =?utf-8?B?bSs5Y20zeXcweUJDTUlQdDliNmZFTDJkemVRaSt4RE5JS1hrN3hVL1IxN2Ru?=
 =?utf-8?B?dC9ZcTU1bjNLZUNUZndVNjJ1Wmg5WU1TQUFoYm5SNXlhcDdFRkZiUG5ja1F4?=
 =?utf-8?B?VDBmdGd2SlBaaG5QeTBERWEvUWxITFRRQ2FYbHJrZzdmYUNrajBtaElyOVUy?=
 =?utf-8?B?Q1YxTFpieEYxSGZvOEE2bVJUZktURGJodTBXL2hiSndxNnVVVnpzZm9kZldD?=
 =?utf-8?B?MnJpZ2RSZmVLSzVVL20yTkZKY1Uyd0xEZDhKYmNEd1JOSlJpL1Y3N2F6VTh0?=
 =?utf-8?B?bzZNdmYzVjR0Y2tOeExHa3JORmExMWR0dER4SlpaVG5FWVVqczJtUDFpeWd3?=
 =?utf-8?B?SEpmd1BLYVQyVHowK2xySmpzZ3FKOFlLZHB6d2VhQjQ1dGl0WlBCQTVYbEVL?=
 =?utf-8?B?MTdNd1NyelZuN0RwVVg3QnFNZElETFpaYzlMcVRKUm4zdm5nV1FSaW9pK0hR?=
 =?utf-8?B?NXFGTmx5anNDMUI1UVBMbkMyenU4VVVWdG1NV3ZCUjcvWnNZTFRodWE5YWQ0?=
 =?utf-8?B?N3Zjc01aNVY0UEFRODlONndXS1RrV0twZ2Vycjd3RDM3L2hGRFQ5U0ZqK1VL?=
 =?utf-8?B?VkVuaGhrWVo0cFpDY0NlelhqbnJtcG1UNFZONVN4cHY1bWFtSjFYWlFSZXVJ?=
 =?utf-8?B?Tk1uOVZ4T3Jnc0xBZnlHbFhtRU82ZW9CSGNma2dPVUp0VXFIVXk3dHo3RTRn?=
 =?utf-8?B?NW5jYVFMWDRsZUNFQzVzMW5MQW9kcGJXYXR1N0tiVUhkd2xHY3RjU0N2aDZW?=
 =?utf-8?B?YnNpKzZpSFpCQ2l3VlU4VXZLUndCWFBDM1hvNFF1L1FON3QzNFhUWUNNTjBn?=
 =?utf-8?B?dmwvWVgwQlF2QUdWQ2FKY3VFTVhSam90S3c1bXFzTlhoS2NpZmJEWUM0MWF4?=
 =?utf-8?B?SDA1QzRuenB2QkRHekJBWHl6ZVdKbFZEQ1UwUjFTN0pjNWRFcFAzSXdzM3Zz?=
 =?utf-8?B?anlQdEFhc2RCS0UyTHRuSjFPSFE2SXZMU1REMWVpdVl1QzdvcEZ6UzJYYUxR?=
 =?utf-8?B?bTVUSUNNenh6MjY4VUI3RXZFUFkwcDNrU3hlNmY0am82ajZGVUJMOW1STElE?=
 =?utf-8?B?RjBacFZqb1RGWDQ2TzU4UGdkaGpMWGVpQ0hGaDNpdUwxTUllRlJBZjVjRG9j?=
 =?utf-8?B?RDdWbm04eWVtQjlVU3hQajFBOWEvVVJzcC9PekNOSEdmU0xaOVJOSExidTd0?=
 =?utf-8?Q?l7QDaA6vGB3x5z3cxA=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR10MB4771.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?bnFLcW9YbkROa0I5TCtQN3VrNkJiNWNicnZraExRRzEyOUFPVSsyY1hmaXVp?=
 =?utf-8?B?MC9haEZTYy9SRlRsTnhnVGRoWkJwTUtYTVV0d1dUWXhaR2ZwYU5qR0xuYldk?=
 =?utf-8?B?STJmOEk1cFBUcCsrU3ZaV3EyNEJoR0UrUUZMcnptRGVoRWdFUVJIWFhCUlRW?=
 =?utf-8?B?NFIvTmY2Zm9wQ1NzaTloUEhVenNkS3MvaFNhQ3pxTDlmdkwxNFpLdW05SFE5?=
 =?utf-8?B?cmVvVjVldUl0NFJIa0RnWVE5blptNW1NSUtKOWVBdkJkOUVBQkhOb1NCWDRV?=
 =?utf-8?B?c3hBTzJtRVMwYlhYV2FSN0FhREJBVjVqTjg1bXAxVHJZRWthL1FkbGFqTTZJ?=
 =?utf-8?B?L1lhMmxoUVpoTldmVTJmay95RHUweitmUDl5UDBMN29PYXFpTTRLWTFLN2tS?=
 =?utf-8?B?bjNOdHNmV2cwY21TVEwzUVZxWlFoNVhFNFpHUzc4bDFuWUlEYXJiZDZ2c2Vs?=
 =?utf-8?B?a0QvZTVHNnF4RW01Lzd2TTY2eGhpeWZPMFBqQnpGcVdUMzQxNWxhV1ExaERB?=
 =?utf-8?B?NUw1Tjl3ZzFOeTNkdkw1NzRZaEEyZWI1TUs1dTY4WUV1c1N6V05jZlJGM0Nr?=
 =?utf-8?B?WnR4N2psL0duNzBoMmI4bHNIYS9UcDdBTFdiMTY3dkNiN21SVDBzZTBSZDB2?=
 =?utf-8?B?amU4V3lueUJlMTByZ1psbTRwMGxBZFc3czVTK3B4RW4zQkVZN0t5N2Fib3JY?=
 =?utf-8?B?K3pnTytPb2VmME9zbWJwM0Q2WGhmeGRqMFBROVZ4ZEtuaEFsQWZjWUFibWxr?=
 =?utf-8?B?b28zT3poL01ib0NiTVEwd3Zmbnk0WGR3NXB0eURVRXc2dm1TalFScGwzTTA0?=
 =?utf-8?B?MzdPUHU3NlN4QWNXVFZTaDZnZStMQ1UwWDlyYkZFUDZiQ1MxMnBrQnozSWxV?=
 =?utf-8?B?eVRNZzB0N0cwWmw5VU9XVUY5NHp4cjl3c1VhMWwwQ2d6am1XUnZBcWxkOE9X?=
 =?utf-8?B?UzFhVE5NUlNNVjBWRVB6SVNkSVJjMm85SVRZMXNWYXo0ZFl5cUF4UWN6MHNp?=
 =?utf-8?B?SWs2NVZhakFzYWhTVkhLMG9tY1lKc0VaUjZ1NGIwczMyMmRWbUFGNnRDdkl6?=
 =?utf-8?B?c0N3ak9Id0pBR0ptYTBuN2F2a0JCKzZUNEtNTXUvTW9tUG83ZDFSRVgvSzV3?=
 =?utf-8?B?NkQ0MHVNVlJEWGRMR2EraDVJZ3dCS080cFE1dVprNnRnKzU0NGtWcGhVU0pK?=
 =?utf-8?B?ZzN5N2pjYUdhcU1iV1J2eEZaZmJ4RjQ3Ni82b3owUGhpbTJyTzY3NUNyQUU1?=
 =?utf-8?B?U2tOMTFrckpaYytINFhDWi9pVkE4d0Q0SEEwRFZyM21sQjJjeHBvSDJUdmhI?=
 =?utf-8?B?WDhWZ0huR0tKMFoyRmZuYmJCcjRZV2YxYzF4cWlicHFjUEdUN3RxdXJUb0Fy?=
 =?utf-8?B?WVhGVncvRHFhUk9OV1FvaDA5SUpGeEx4WDBySzMvdFg3eFpnV3ZqbjdTSE5a?=
 =?utf-8?B?Tkd5YmNJcVFQaHdKS3VlRHoyYVl4d2tiWHNxWEtZTTkzRHRRVThCdTh0bjUy?=
 =?utf-8?B?cU9wN2ZValF1S2dlYitJb0U4dXVUeFVJUDFtZUpQS1JIcHFia2lhWlVJUG13?=
 =?utf-8?B?TkJTRHlzYkxScGNCOW14Rlp4OVp2RE13OWQxNUV4QlVscVovYjdYamFaTFU5?=
 =?utf-8?B?OW9ORUxmLzkvY1ZyREJPQ3Q4MjdHcHZGang3eER3bE5MVEtDQjJCL3U3emM1?=
 =?utf-8?B?KzZTcFlRL1ZlVDdyMDVHOERZSnViQVV1ZjB2OHErUDhYWE0xeElPUmdFbXFa?=
 =?utf-8?B?VWJyMGZoSTVpK09OZ3BWYVY3ejRzc2cvQU5JcGVMSXdNVTc0QXhMZGVsT3Zl?=
 =?utf-8?B?ZVpINlE1bXZPMjdXam9wVXQ5c0szaEI5eDA4NW9YemtpQ2JMcnhKTmh1dys2?=
 =?utf-8?B?Mm12WElVQmJxaDlCclQvUkRiOElNR1FVcGZoT1Z1b2xRVDJzcFBnVEJlNVNt?=
 =?utf-8?B?UjFvZFBucDR1SWdhU25WbmUxeTVST0F4UFF1TTVPaE5ISzNJMzhvejM5cFVE?=
 =?utf-8?B?Z0dlSmo5aHZ6am5McHZYVU4yd290VS95TjJxUW83S29kaGZmT3BNZ2p5bFdC?=
 =?utf-8?B?end5QUh3allUV3QvNHNFNngyYjJiT0k4aDZvUFUzOUhDWXp3SGxIWThwRjZz?=
 =?utf-8?B?dkRTQ2pCWTlseHl4ZjhqMzh2dklsbUFKNVpDRFdBUVN5ZWhvOGUyMjdLZWZR?=
 =?utf-8?B?MlE9PQ==?=
X-OriginatorOrg: analygence.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 066ae334-9e4b-44a0-100c-08dc9f6c36f2
X-MS-Exchange-CrossTenant-AuthSource: CO1PR10MB4771.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jul 2024 16:37:10.8667
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 0b2befc2-4942-462a-9d5f-50631e1040b8
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 08HWJvRNRVv8gsNJFksO0ut/HEUXdlaT3uk69SyQCMLlv2AZl5B4U1eSb/Im03XxLhnMNWmK50MeU9EzMt9DODPEz0p0ZNvsRobrNKYaK7Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR10MB6478
Subject: [oss-security] ASLRn't is still alive and well on x86 kernels, despite
 CVE-2024-26621 patch

Hi folks,

Back in 2022, a Debian bug report was created that described weaknesses 
in ASLR: <https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=1024149>
As the result of this, x86_64 ASLR was weakened, and x86 ASLR was 
practically disabled, as the result of libc libraries being larger than 
2MB in modern platforms.

Later in early 2024, this issue was given the "ASLRn't" moniker and 
published through other channels: <https://zolutal.github.io/aslrnt/>

Eventually CVE-2024-26621 was assigned to the vulnerability, and the 
Debian ticket was eventually closed.

The problem with the fix for CVE-2024-26621 seems to be that it perhaps 
only appears to have an effect on 32-bit x86 code running on a x86_64 
Linux kernel. This was made obvious due to the recent Qualys writeup on 
regreSSHion CVE-2024-6387 
<https://www.qualys.com/2024/07/01/cve-2024-6387/regresshion.txt> 
Qualys was able to successfully exploit CVE-2024-6387 in a "reasonable" 
amount of time due to the lack of ASLR on an x86 platform.

To make testing this stuff easier, I've put together a toy python script 
to easily see if the platform is vulnerable to ASLRn't or not: 
<https://gist.github.com/wdormann/544a9e89fe35a84135e58eb5c7b1721d>
Specifically, if any app running on the platform might expose a 
large-enough libc at a predictable address.  It will also report lack of 
PIE in "cat", and also the apparent entropy/bitmask of randomizations 
present. When testing platforms with a libc smaller than 2MB, this 
python script won't suffice and you'll likely need a test app such as 
what's listed in the Debian bug 
<https://bugs.debian.org/cgi-bin/bugreport.cgi?att=1;bug=1024149;filename=test-mmap.c;msg=8>. 
  As reported in the Debian bug, running the program repeatedly with a 
2MB file will report the same address every time on a vulnerable system, 
and will be randomized on a system that is behaving as expected.

In testing some platforms that I had readily available, I've concluded:
  - Modern (e.g. 6.x kernel) x86 platforms load a large-enough libc at 
the same address every time. (i.e. no practical ASLR -- "ASLRn't")
  -  Modern (e.g. 6.x kernel and large-enough libc) x86_64 platforms 
running 32-bit code will load a large-enough library at the same address 
every time.
  - Modern x86_64 systems with the CVE-2024-26621 patch will randomize 
the load address of large libraries loaded by 32-bit apps.
  - Modern x86 systems with the CVE-2024-26621 patch will NOT ranzomize 
the load address of large libraries.  (i.e. is still vulnerable to 
"ASLRn't" despite the patch)
  - Older Linux (5.x and earlier) randomize loaded libraries as expected.


It's unclear to me whether the inapplicability of the CVE-2024-26621 to 
x86 kernels was intentional, or whether it was a compromise with known 
side effects.  Granted, the availability of modern x86 Linux is somewhat 
limited (e.g. Debian, Kali, OpenSUSE Tumbleweed), but IMO if Linux 
kernel is to continue to support the platform, any regression of a 
mitigation that has been around for years should probably warrant a 
(new) CVE.

As for x86_64 kernels, the ASLR entropy of libc appears to drop from ~29 
bits to ~20 bits with the change that introduced ASLRn't. Whether this 
is CVE-worthy is beyond me, as the strength of the protections provided 
by ASLR are indeed weakened by the change in where libraries are loaded. 
  But arguably ~20 bits of ASLR may be considered "fine" and that the 
benefits of the change in loading addresses outweighs the risk.

Brief testing on a 6.1.21 32-bit ARM platform shows that 2MB mapped 
files are indeed randomized, so perhaps this all is an x86-specific 
issue. Though I have not tested any platform other than ARM and x86.



-WD
