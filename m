Received: (qmail 7650 invoked by uid 550); 8 Jul 2024 19:42:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1809 invoked from network); 8 Jul 2024 19:39:29 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Mht+wZ1dWtS8mB29jVZJfXOVINk0ekab+ILrERSqrImfMYTf4jBpsrOG+JrItsrDMXsoHTdnbd15jJT9QwFCpMGtmc5VnKp1KXaCyxfEG6TOLbDSSZ0pass/G/ifjTnWKbo7rd5qjUl8i/bWIfjrm/+s9bRjNduOqVWEBwf30mZR5QCGIJ5k/FvtriJdqoSXPQ6BYXNPZHeS4pxBzullry8QDCzvGv/6+ftJDSG85p177XQMvCvCtwVR+2KKh4+eXbDI2BpS7G5uji2cSj7fhh9m8KZNymw2tahwfgN7HR5+uXV+jhXTH540E8Id5Ufm+ZcwURrY789fMekXzmpH/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OEPTD+Xb0Biy/7NB9134ES/DKVI1XAPa8e28LmAQ3bU=;
 b=fcEHLCVqEMCf5Zn/ifLCGnMTE7qqHkdyhTu9DpTT0ktTdTa4ebcJZcePxOCHPmXTHpyEQvEZua3TNOvsOvtGm6lBlF4v2BgSfLZ3rBLCalI0qRzwOnNxN9AWtdIpvZCeZoBa1DNIRYkv4uDYBCDPoFT+rk3ab/O8xzfyIaULburJnTF3b33ad7bJTmhH5PhgnMf4NctX/cTH6hX99OlhmevH6pAqowjYbh2QG3/l97w0/n6dlQXekPYS29Zfo4BLVsyWhpl47H84eqI0gwyKR79aFu4xe8wqFtqNLN2NwjTN0KipCtGiE1Tgwdq+ZfgMMTWtNM8fyEbJdF9azCSt5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=analygence.com; dmarc=pass action=none
 header.from=analygence.com; dkim=pass header.d=analygence.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=analygence.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OEPTD+Xb0Biy/7NB9134ES/DKVI1XAPa8e28LmAQ3bU=;
 b=S6g6x7xfDLLvlEYO2w4t6wn/BZ7i9FqRDL1jx7C13HZ53YuHciNOlw2+C7lYtHVlIydqmAYmwWXiWn3hZFTpBbLtttu+7A4GBqCRjqx0zQTignYw06j/qw/hFZAt/P8NZTV2iRGQq7znXoVgO0LMBHcTXXLA6OND74JsEySm7GKc478XteXwDrLTZm8mQOz55Rv56NH4h4EF0Xb3EE+MtTAtigSM8sHdso8nFIQfcQ7i0Uu8K8zhDSVHWz/NVQjTZ7r2gy2IUBqLj5548qo/n4654VfDlnVTPy5TLy53onnQl3TMAPKICun3tER0u+Qg9IU7OzoJxlmU+FzKCQ+gUg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=analygence.com;
Message-ID: <5a422b6c-df18-4ec0-ab18-ce298babd7fa@analygence.com>
Date: Mon, 8 Jul 2024 15:39:15 -0400
User-Agent: Mozilla Thunderbird
From: Will Dormann <will.dormann@analygence.com>
To: oss-security@lists.openwall.com
References: <30400489-6c59-4133-a3ce-fa0c16b63c02@analygence.com>
Content-Language: en-US
Autocrypt: addr=will.dormann@analygence.com; keydata=
 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
 CUkSuQYhz5EOfhvAp7jL
In-Reply-To: <30400489-6c59-4133-a3ce-fa0c16b63c02@analygence.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MN2PR18CA0017.namprd18.prod.outlook.com
 (2603:10b6:208:23c::22) To CO1PR10MB4771.namprd10.prod.outlook.com
 (2603:10b6:303:95::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR10MB4771:EE_|SA2PR10MB4652:EE_
X-MS-Office365-Filtering-Correlation-Id: c25fab86-6cd9-4126-05b9-08dc9f85a7df
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?M1NFQzI0ZlRaWi9zMHNnZ2JNbzJKTVBSMlFHdjRUZ0w0alU2Y01rQTd6OGtx?=
 =?utf-8?B?UlNJR3JYdWtEU3BycFYrWGxEUTFyV1UwSitqeVNJWHJoeEQ2Y3EzS08vNnY1?=
 =?utf-8?B?WDlQV3B0OGtNVFU2NnRvNWJwTW1icWlDcWtQcHRZOE9yNGowNGF1aDJES1Rn?=
 =?utf-8?B?NkIzclB5Q0RRTWVtNDBtZE5YN3RCaEJ2NDZETE9MWkloQnhpYy9KN0ZPU3RO?=
 =?utf-8?B?Z0pBTHcyano2NXJOdkpSeVBDS3VEZDc3UU5FTjI4VWp0QkdSQ2h4R2JqbnVL?=
 =?utf-8?B?aXk3cHMzYU4rSHMzZjFrT1c3S21haXhIZUJSbnBXMmxTcXFhMGlEVDJvbmI4?=
 =?utf-8?B?OE93aU9GTzBpczJDUVovV25hd2JTeXZjcjBqc1RWYTFyU3hGS1ptNGk1VmF2?=
 =?utf-8?B?cFplNzJkZkxaWjdNN1MrNmxpdEIvK3JyZHdJWEU5Q1RFeTlmdVB5d2g2U05Y?=
 =?utf-8?B?dHBORmtzRUpnSjlFTnpqRE5kd1NzbFBaL210dldoNngzam90MjZRMW1KSjJ3?=
 =?utf-8?B?VVBxWGJROGhPWHBOTTBvWFE2bGVoR0Z5UlpWcG05dmhmNGY3a3p6Q2gzS21q?=
 =?utf-8?B?aCs0TnA3WjcvZWxRTytEd1BFNkQ3MTNlVTdjdzZPRENNeGF2Y2R4dW83cUdV?=
 =?utf-8?B?OHpjeWdQcVlSczBvbWdWMGFvVi8wVmhYV3dWdG1hekZGVlBWU3FCM09GTzVm?=
 =?utf-8?B?VTU4Z3A1bHVlM05jcm5WTms2YVlzSlRxUlppTCtyNkRJSDJOSFpzMUZMRkxY?=
 =?utf-8?B?K09Wem5ZcXlvMmRoWS9TR2JQWVJGMDB5NGZrVTFmbm0rVEZkRzJnZXowWGNa?=
 =?utf-8?B?WnlObmRnNkJ6QWUyai9kT01WaDNpOCs5QzZ3UDdrT3lTcVJNV1VUTUFYTzZ4?=
 =?utf-8?B?MXZNZTk0dlk0U1JaZzRhcHE4dGFRZDIyN0R4RWdJWDJKYkh5RC9Sck9yTm9m?=
 =?utf-8?B?a29EbmE4V3JMbElRdlhwUnhSNXY3VjZBbjFNekNLTndKY1NLYUlHZjRrQzBP?=
 =?utf-8?B?ZTV3MWIwVE1uR2FndWVaWm0vSUpUa3NkeWZXZXNUbjlIeHZ5OTNDdVB6VEJa?=
 =?utf-8?B?cy9qZjN1d2tNYU04dHE1WTVQc08xdFRtZ1B6blU5OVk5clE4TEk2V2oxc2o3?=
 =?utf-8?B?NjRYSkR0U0FacGxodHpwcUE5WERISXFiNXhoRFUzL2t5cytMcXFsQTlGb2tN?=
 =?utf-8?B?QkxWSjJ1Z2dSUlJwUTRjZFpqZ1VLUSs3bG5zRUZBNm43dUsrQWFJaGFZZnJj?=
 =?utf-8?B?a2NESGNqQi9ta1c3YlE5L3lpQmFLWXZOSDdFNkZza1JMWE9vbit3d3NhTkZz?=
 =?utf-8?B?ZjBvbVFjdHk1MnRNQm1aOWFlSzhzMDM2YXoxU0N0VENVNDR1VnRLUkYyVHcw?=
 =?utf-8?B?Ri9IT0V6di9acVRPT3VJSSt1UnFKMnJ0dW5OS2tseUJ4c1M5RVVTMDNhNUxr?=
 =?utf-8?B?dUtMS24zejdnSTZVQysxeW5kRVlrcW9NeVo2bEExeWFNWndROCthaHR1SHVW?=
 =?utf-8?B?ZzhkTWMxZGhjRk83QWNKNE01aUtHN3dhUkxZb3RGNmUyU2tRanNEYy9uTUdv?=
 =?utf-8?B?dXhFTDV3MHAzbThLM0VRNWZIeVQzaWRFZ01VcVZXWWJQN2dVckVEN29laS85?=
 =?utf-8?B?cXZtSm85RkltcFpzeU1FNUtGYTlEM0dHNEtPeVNGZ1pJaXZ1NjJleXVyMm1J?=
 =?utf-8?B?c3htUStLU1NYOS83TXU3U0lVZzVnS0xDeHFxZDl0WFg4MC83eVpCdmk2M3Iv?=
 =?utf-8?B?SkZLd0tscjhIWXF2RDVaRW54SHIzdmVtZHBEdDFWWDZrRUJ1bFRkd0xFRndE?=
 =?utf-8?B?UXkyQXZ2SGxNdFNZRWczdz09?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR10MB4771.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?dWk0RS8wSFlhWkRPOVl2R1hmUjZoZkxPeUMrYXhEUXVtalBPK05yWXlXN1FL?=
 =?utf-8?B?b0F6RVV2Q0JrejEvYzVZV3FxcitEM3FrRVRUd0x5eXFRVmxaaWptOXF0TDB2?=
 =?utf-8?B?a2NXNkhuanFKZ292TEdob0ExbDlxL1NRNnk0NXRza3JCeFcwVkNJVGtuazNN?=
 =?utf-8?B?NytjNm9pMUtwY2lXS3RRbkhIdW9Iakl1SWlBR1ZVdmJ6cThxYS9icTJRQ0hH?=
 =?utf-8?B?SEpSTTBkNWVKeStFRGVQNHZkd0YxeEtGZ1dUbGE0cW51d0JGSmxxenB1UUpH?=
 =?utf-8?B?dlhrcHV3NFZ0OWtkMlpsangydmJwOTgzZ3QvY0VUUEZLTzNneC9UNU1hMnBi?=
 =?utf-8?B?YmF0NUhKdnBFZ3plY0NYemZHaWJTODJWTVlWaklIR0N5cmZlWjlvVXM4bzFv?=
 =?utf-8?B?V0tDZCtHMVpNejQzRkpjZUFySDNOOFhhblhRYzFrY01nbzNjc3BuNW16WlpK?=
 =?utf-8?B?SzB3Q1JSUFdodVlVRjlOdkFiSzhvZlRwaGxJRWdiNmM0UWRHcjVtc0ozSTR2?=
 =?utf-8?B?ZnlnblJzVTFHejhNa3BUNE03QVBSSTFPdVY4SnFPdVp0QnF6RUorS1JpdHdZ?=
 =?utf-8?B?bG1NbnBxZHdlTC9NN3ZKU2w1ZkNQcGFLc0xUa3IxTkcxaE5NRGw1bWRJQjh5?=
 =?utf-8?B?M25saWowZDBDSFZXaDZYdVlYeEJEN1A1VEdldEY0YXZVUUJ0WHdoaGhCRVk2?=
 =?utf-8?B?dy9YVmZXbXQ2OTZhRUV3RUEyUThxa2F3eTVoNzVyVFZYM0R5YnJMTEx5dXlQ?=
 =?utf-8?B?WWNUZWorUGtKZ2JVUzRzSHQ5YTNWTGZaaUVaNS81QkIrQU82UmtuMmR5L0dv?=
 =?utf-8?B?Vnd0NGMyNUdyRDRva1NNUWlLaUl0TkZsUWJXeG1DMDlYU3dsbW9nYmVXQW5q?=
 =?utf-8?B?UWJjNUZxKzlEKzBIUk53MFZoVVg0UXJlSGFlbnRMTktueUF5M2h2Z0FGRExR?=
 =?utf-8?B?emR5Zkl1RER4ZWRUT25SNS8wTkMrYnpxRkRlbS9GVW4zSXhKZHlLd3RrQ1Qy?=
 =?utf-8?B?SzQxV2hkTEc2clNwc1l2a2dkUGc4Q1VHQ1dwdGEzWVN4bzhaMWZLV1NQZDRW?=
 =?utf-8?B?aW4zK2ozUnJObFIySE9acWs4QkU5b3FOQzg5WWY3SDNzelZUV3p5bk8wZVh3?=
 =?utf-8?B?NFU0ajBLNzA0dHVIdDU5aCtqMXRscGZybWprZEdoMCtJZE5kc0hoVGY3eHll?=
 =?utf-8?B?RzFOYzVOenFSdXVkcjZMTThUNFRRUWFTRjlSYWU5L2Z6TlFjSzZVazZkUFFY?=
 =?utf-8?B?UVZvR2hGcyt5Vk40bEZuQmdHZ2xCWlNEc2hTdzBFRFkzS0xPWkZHb2dPd2ZF?=
 =?utf-8?B?QjJkaDFCdk9Qd0hJZVpkZnlQOSt2eXlmTXZDS3ljb2NPdnVkSTl4Z3JRV0dj?=
 =?utf-8?B?SkpwOVZZOWFxUTlpMVJ5SVlKa2VUOVI0d0NaNC8zNytHWnA0T3pDZHVTSnpN?=
 =?utf-8?B?a3R1UlBlSG5ZSExmRENrdm00N0ZHcnlBbWhSV3RoWmVHbzdVdG95Tm5hMWJx?=
 =?utf-8?B?NEdyY1FXcUtZbmxSTDZWaUdWdEpJUWFwOVg0RTF5RjRDY054dTQ4K0FCNVY2?=
 =?utf-8?B?SzdJdWpZWFpldzVaVzRIVXNpUnRRQnNPZnpkZ3RTSEVEN0JBSW9yeGpENmY0?=
 =?utf-8?B?VkJ1aVkrNWlWQ205c3RUazJHRzROSkNJMXJHNmYvVXVSTmZnbVFiamozVUhH?=
 =?utf-8?B?NXZSK1VCMWtDQ1Vxa0FPV0VQdXpXZVJha0hVZGhQYlB4ejNSc2NyMFZzR1NH?=
 =?utf-8?B?WmowYkVHTFU2Uk9OTThyN1hoYlB2K3U3bGV5dGwwbkxCaVJ6Tk9Ybng3Uzl4?=
 =?utf-8?B?djV0UVdCby9vV2ZBellPQmt2STJHOThXL1BJdWR3amY1bllLQ3Rsa2hNbTRx?=
 =?utf-8?B?R21ZMFVhQTg4cUw5enRWVUNWWEVjVHhwZVYzaVZscHNRSDhUb2wvdVZRdURM?=
 =?utf-8?B?QjZaQ1hZTkUzQmx2Y2pZMFBpRDkyWHhwMXJIUVhTMjBSSDFYVGU0c2FDQXo3?=
 =?utf-8?B?REVMd2llRWxmNHBzK2Y5TXRILy8zV1E1K3hTOUQ4R3hxVHMzUlViYVpPVXhW?=
 =?utf-8?B?bFVKVlFXSDdDY285cnRFN2lGeFVkQVl6QmFXMmlYeE5razA1cWdXVE5XeXZN?=
 =?utf-8?B?UkRwS2ZvSWZrSlA3aFVOWEppT3JjSHR5RFV4MzBHNnp4VklXL2h0TXNueU5h?=
 =?utf-8?B?ZWc9PQ==?=
X-OriginatorOrg: analygence.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c25fab86-6cd9-4126-05b9-08dc9f85a7df
X-MS-Exchange-CrossTenant-AuthSource: CO1PR10MB4771.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jul 2024 19:39:17.7101
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 0b2befc2-4942-462a-9d5f-50631e1040b8
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kHgSXIR/zHY2ZpVE5sySUrzxGctk4eR/quQMVSJ8mjapJ0nilQKanqqGIVFEgUO4jl+z7d1zTsfOv4jREK4X5lBgMThWARcs6r5ZkafE1sQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR10MB4652
Subject: [oss-security] Re: ASLRn't is still alive and well on x86 kernels, despite
 CVE-2024-26621 patch

On 7/8/24 12:37 PM, Will Dormann wrote:
>   - Modern (e.g. 6.x kernel) x86 platforms load a large-enough libc at 
> the same address every time. (i.e. no practical ASLR -- "ASLRn't")
>   -  Modern (e.g. 6.x kernel and large-enough libc) x86_64 platforms 
> running 32-bit code will load a large-enough library at the same address 
> every time.
>   - Modern x86_64 systems with the CVE-2024-26621 patch will randomize 
> the load address of large libraries loaded by 32-bit apps.
>   - Modern x86 systems with the CVE-2024-26621 patch will NOT ranzomize 
> the load address of large libraries.  (i.e. is still vulnerable to 
> "ASLRn't" despite the patch)
>   - Older Linux (5.x and earlier) randomize loaded libraries as expected.


And just to clarify on my use of terminology in the list above:

When I say "x86" {systems,platforms}, I mean a 32-bit Linux distribution 
with an i386/i686 kernel and associated userland binaries.  This may be 
virtualized on a x86_64 CPU, or emulated (in my case) on a 32-bit x86 CPU.

When I say "x86_64" {systems,platforms}, I'm referring to a common 
x86_64 64-bit Linux distro.  And on such a distro, you can run 32-bit 
code if you like.  In my case, I compiled test-mmap.c as a 32-bit app by 
installing gcc-multilib and compiling with gcc -m32.


IOW, "x86" as I use it is 32-bit Linux.  "x86_64" is 64-bit Linux.




-WD
