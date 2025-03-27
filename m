Received: (qmail 15677 invoked by uid 550); 27 Mar 2025 00:16:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5919 invoked from network); 27 Mar 2025 00:12:48 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UDoYx7dIM5kYUmC40eU0Q2hvGHEhLcd048o6NQ9qZo4856QCG/DwwZXCK52p+Z/ZKSLxbP+/yz/mevRFcLueBMqNZd8iqdQUSFxfzrm+KA6kIJvoHWhKJVxtfyJFIWO9hjof4geHD63xAKkXS1Jb0krf7eB8syyGTets01fw8T0Nn3P+NDzKhEDoe9bMizZS64aDSzySNNbHaM0F15yVOwXzGdNpzTEUgRtD3BgfVXoAGjfKjRgXrOokLlg3MPlJH/RNykzavNysBqGLvCZ3psiQs3cpH6zXg6rpZWL93dpGIbX1YAQTgIHf+IJJ4E1MMJMLIHCEfoZ8SscWCfrwZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=A1xsrp1D+gfEyDkO2//Jy2uzgLqvKZKz4RmbZD+j2Bg=;
 b=e/Ow2a4gXeeG6NAosrwmP3Az4Fjn1+ByOWyNGukRXnO6hcILwQiw0ZuZq16WEnOsLhFV1s/mu484PbfX3BYHvzveWygmxE/uStTR4vJAW8fyfSK0IU+oPctCg1iOl6gIi5Xpl4xmGt/Dmt09KYG60eRkmUZPBdMYVmzXBbZLQa5QbaoHcea6FKBgG753Xoj0zN82ibH4u4OrAYRHypxsu2GJH6/ItYxTM0BqDDBHtjbTJZZiyAtgS6AWtb5uJaeLN3vbh1Xcrp9mFi2qFvqYSJZfEwS7L/yEaHvMja9A+C+D0vqatS9oecAssDfTU4JwzzNiXjWTi5Ke2D79nMBNcg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=thomas-ward.net; dmarc=pass action=none
 header.from=thomas-ward.net; dkim=pass header.d=thomas-ward.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=thomas-ward.net;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=A1xsrp1D+gfEyDkO2//Jy2uzgLqvKZKz4RmbZD+j2Bg=;
 b=i0lK2MA+3buAXAIfJiDB9QfRGJHhRFe9vHJ7/nEeVuhx3EhLsxADvFG+jG5jvIavBPvkF7ArO3KIHgC0ffXPvT0UMh5npWNfekrGi1qlaZdfGYP3KoKL03enxeNlDx/jTRu8QNHfmjajCqyTQG5HoPktK5s+qWIUhVna4zzpDg251iEXhWp6VgwEvkZAAasc4Jnf/zwpijYMRNMH/iRsWTLyPWAozu1UDjSODYuTnWOM2HDmCmh+IqW2ZYF6/dusep6GL6bLKvth1jk0fIn0MSTuEhMvzRIpzwgSI8/wuWaGQY9wpRl7Zyl4+nOkGrqOw4/ArI4KOga7i4OKV6okUA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=thomas-ward.net;
Content-Type: multipart/alternative;
 boundary="------------jqrNBpN5BBjIFSl9vUVugPPp"
Message-ID: <833e90b2-db52-4939-b529-7d1ae411e867@thomas-ward.net>
Date: Wed, 26 Mar 2025 20:12:32 -0400
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com,
 Alan Coopersmith <alan.coopersmith@oracle.com>
References: <20250326230703.GA7131@openwall.com>
 <d33e63e7-0b29-44b6-ba50-e53f1958d2f7@oracle.com>
Content-Language: en-US
From: Thomas Ward <teward@thomas-ward.net>
In-Reply-To: <d33e63e7-0b29-44b6-ba50-e53f1958d2f7@oracle.com>
X-ClientProxiedBy: MN2PR20CA0012.namprd20.prod.outlook.com
 (2603:10b6:208:e8::25) To MN0PR19MB5948.namprd19.prod.outlook.com
 (2603:10b6:208:37f::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR19MB5948:EE_|SJ0PR19MB5512:EE_
X-MS-Office365-Filtering-Correlation-Id: 30f8da89-058b-4eb8-ee15-08dd6cc412de
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|366016|376014|8096899003|13003099007;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?d3hMVWNCWDhvVnFqMG1ZWU1ZbkJtUGs0amk5VVNhaEZkZUZieERmS0FMaVNS?=
 =?utf-8?B?WnJITGVoRzdqa2J6SE82QzlCeUZNMXJKNVhxRXJnRitWUk0yQzdubzYzNTlF?=
 =?utf-8?B?L3h5R0VlejRITGZUVWIwN3drMVZJM1BJNkJWeTlWVzJEMjYvcndqR2lhNDl2?=
 =?utf-8?B?L0ZRSE1laE01a0tTdnY4REF2SGs5WE5wZTUyYzRtalNhZUZoZXBqZWRyckRY?=
 =?utf-8?B?dVp6d0lVdmpJMzFCd1FjUUZpOVdkYXJwMlZiU1BSR3I3NWpiU2l5RTlaaFZq?=
 =?utf-8?B?RFpHQjhWeTVmT3pxZER6UWhEc0RuZVZaNC9CVFlIeTNuSUd2Z0NpUFhubVRF?=
 =?utf-8?B?QkptazljdThuekRQTUxFYW9xclRzZDBKNWVKQmNzSDVWekl3bklQMzR1VStQ?=
 =?utf-8?B?dlFIbUxJRXp3MGNsVU1BeW05UjBnemlSUFkzZjRwWEFJdUZRYUpyQ2F3U25N?=
 =?utf-8?B?MEhQVUdvUTdKc2dhT2tZb1g0R1Exd0N5a1BjUnJXSWNjdm9JTVlQQlMyOHNp?=
 =?utf-8?B?eGZUUlZkbkNLMnFXcU5nS2NUbGJNMnZoNnNzN1QvWlFhYVVRWXRTREpkZWti?=
 =?utf-8?B?bUZWTGVmbDVTNVpMVG15ZzdWa1ZRNmhTRytZc1BIWXgwV29oRkVEdkhnWVl4?=
 =?utf-8?B?ZFJsVlgrUDhiUUphSHJrNm1nMUlRTjB5SlZrR2RnVnhTeTBpZFZzVFk4Ukho?=
 =?utf-8?B?dmtnRXowaVBnanVKMjE4L2NqMmkraC9Fd0FjSWU3ZUJWUXdLSlowZmV1cVdC?=
 =?utf-8?B?TlhwRVVSdlBNYjhqU21PeFFGZC8rOVFnY2JVcmZmN2JwWE0yWERNZXBhdnpp?=
 =?utf-8?B?TUY3Z0VSYWpqWkdRSkprVi80VmQ1dzVWV3oyOUpsNWJKb3dnWWJabWgyRVlz?=
 =?utf-8?B?b1RIaDBOR3BYNDlhcXlIYW9uK0hzMjVpQWVrdk91VmEzYTc5Yy9qUGRBRTJS?=
 =?utf-8?B?dzFEdjVUZkRsVzM4N2JWWkFTaURXWi9GYVVmM1dNZjdsYjFQdXhaZEVwN1Jk?=
 =?utf-8?B?NWExTUx2MjRTMlpsOUZLMHR6eVo2czJhWTl4MUgvdDBSQnQ2ZlZYQ25DOFlW?=
 =?utf-8?B?K09Kd1N3SkY0NVBEaC84RTZhRXFSbGJqelNkbDdDOWhKZmFHTHI5dmxPWG5B?=
 =?utf-8?B?U2xmSXY1K1YvamdoTG5MSmtTK3B4ejBiY1ZwdFRHdnhENWs5OVVrNjU1alA4?=
 =?utf-8?B?VUJOY0hCNlFBeGdqcGpLOWdsdkh3ajJsUXl2V09SVE1la0dmY0tXak9oR0R1?=
 =?utf-8?B?bG1uMnpDZCthWFM3MURyeUxXcFVNOXVsaWdjWnRUak5MejdOOUdiQlpJQ3JV?=
 =?utf-8?B?TDMzZlNRSmt2RFJDbHRzcjk0T2lianlvaVFxZkZHalFvZCtvV05aVytsTTZE?=
 =?utf-8?B?Q1drVXNpVFI2aEg4ODVuVFFMQjY2SzBPWmZaRWc0T1pwVHhTR3cwU1BkbGl0?=
 =?utf-8?B?QWNzMkN3Z3pmMnBEWnBicnNkS1BLK1ZZMkc3bXI1QWMzeFlFYmp5R3pSeFNZ?=
 =?utf-8?B?NVFWZEFza2UxODBjbjdCU1VSZ01xOXh2T3hoNFpxU2s3dDFsNHpTL0dwZ0Ni?=
 =?utf-8?B?dkdkeW5PN292UTNJbm5LUVVBc1E5MFltQXpKbFdadGxSVmYyZER2YVhFaERZ?=
 =?utf-8?B?VCt0TE5oWmVsWi9od3FxWitQdUZvemNlZ3pFVGVMUnhhcW9YNXFJVGZRQTZI?=
 =?utf-8?B?d2J3V093ZlNLY2E4VXZCR1RoMTJPODNxV2dIT3Y4ODBuU3ptODg3WWFjVWwz?=
 =?utf-8?Q?qhhO5o+ZGuxk8fsRgQa+Gc7Wo1XWXa0OP76TNYw?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN0PR19MB5948.namprd19.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(8096899003)(13003099007);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?MzZHVUV1TWpWZW1VNDFCcnBrQVlFcjZRUWJEa3NkVmlHUWpDdkJCWTgzaGN2?=
 =?utf-8?B?RUdxQzc4UWZxSzFEWFVNZGFaeFZOUzlmR29WdzJlMURjREYrWnNZYlU4WkVN?=
 =?utf-8?B?QVpIaE9ISnQ4UUJGdjFwaEk2djlNVVpUbGlTNGY2YzQvcTVqWUYwS0ZtSWFo?=
 =?utf-8?B?UUh5ZU5RaTJ3THBNWE1mSnV2NHp2SzF3V3lVRXkvdkZLaWlqYWE3NlUvR3lw?=
 =?utf-8?B?STVTYmY1OU14UmhpdUdyL3F5RjlvdUd3dnI1NHk0b2U5YUlzUXlBcHBrYk9s?=
 =?utf-8?B?VlFvMUN0YXBhY2tHUnFHN2ZzRTRLZW5lNEpPWngrbVk0YTg5MXFqTGFQMTZi?=
 =?utf-8?B?bkdNVU5lbE9FOHdFeDdJbFdIMjJYQ1h2TUNEajVLSXcrUVMwdWQ3cnBnbTN1?=
 =?utf-8?B?ZW8raDNiZ2UySW5MRkozbXpFSThSVGtUUzFNUFluVVRsaVlFMDJhbS9waHlp?=
 =?utf-8?B?bGhOSWhNVTc5YWs3VjlUWlJqdnZDOTNrQ3JqMlZCb2NlZzJUbzVCNks4b3hm?=
 =?utf-8?B?cDQyWVNvTXRRcFhjZXp4amI4T3EvOXlKdDBNUEJmUE5KM0F6WGtzT2EzTTcv?=
 =?utf-8?B?WUg4NTF1VHdadFMzQTlBZU1Oak1QMGZ0YVpEb3E4eWg3K0pteUtlN3dCMllG?=
 =?utf-8?B?bkI4cW5sSXgrdW1EWk1qWGFZTFhJalErR1RHVFFHenQ2T2orU09xd3djOWoy?=
 =?utf-8?B?Qmw1ajVNRzhZakdpWjQ3MjduRmI2YnIzRlRsaFZBMlovYnN1MlZPL3pnaDVi?=
 =?utf-8?B?cGFuTE1wbUV1Y2VYR3AzeEZjK3hUbnlCTDZyVnhudWNrZVdvYkhhYUVPdzdy?=
 =?utf-8?B?ZVpjOGE1U1dyT09LZ1pyUFFoS3hSMXZ3Uzc2T1htUDdwZEl3T1Brd0d0TkVp?=
 =?utf-8?B?U0J2VGJFRHhSeVB1U0xJZWFNT254SFd2ZE50S1FnRFB6RUU0ZkhNbmRnVzVa?=
 =?utf-8?B?RE9JZkMzY1g4RVpnM0p4RmcrMDh5RzZhbUFSeVpTbXJCOXpDcFJLYWZua3FG?=
 =?utf-8?B?MzBoVUpXUWExM3pwMWdLSG5BclZFSys0bFd2MWZhWXZzcndqcUlaZytBaFFv?=
 =?utf-8?B?UmNJU2RrTTZmeitRS2g4OVRLYjRIWDlMckY2VXpxYmRFU0NLSTNScCtKdjVZ?=
 =?utf-8?B?RFdxbDRod2tmbTNLUWQwT3hjSTZqNFpYbGN3blp1dm9GNlUxQnBlN2RIZ1FR?=
 =?utf-8?B?eVMzK3ZTQ1B2a3RGODhiMjNreXArdG5wUEhIdVJoNnAvYlFiTFBNa1RXdVFW?=
 =?utf-8?B?WmNtL01rZktrV3pKYmxMek1GMFZxZDVxYmM4aVB1VnNYRGRVVnFvVlZ2MHR6?=
 =?utf-8?B?K0N3YnBFYTdmQW9DQnpoZ1dLeWV5bFRaMHEyZjgwMU5VUHBsYWYyWkxHTkVa?=
 =?utf-8?B?d0I3SS85UkdwMEc1TUtINEtLaDMranZBUEZySFRFL1ZxZ3ZQbG9TMjFDZzMx?=
 =?utf-8?B?SjRTaUx5cjRiT0ZKdUNVUFNjbkRLYUlZYU9pNTlIRWluVDlPK24yM0hxWDVk?=
 =?utf-8?B?NzlhUUNaWk80QWNIS3RscTdnUzR1SlloNVM3YUFCdGpJQ0pVY2F3TitPOFQx?=
 =?utf-8?B?RDRBbjFBU0FCY0pGc3ROdHVHNGptL3hyaEdBVnpqZEUyUW95MnhSdU8xVitV?=
 =?utf-8?B?K29RNktUM21WNXdkZnBkQnpLVkIyS25FMFR5VnRqdkFUekp2WWw1TC9JREJ2?=
 =?utf-8?B?d2J1ZXlCcTloeVRBTXRYSkV5d0xXdDZNTHA2NThwNENSNXhTQWxkWUlDT055?=
 =?utf-8?B?Y1l4ZXdYby9Ed3RBWVFBMmd0cTNabm0rN0hpM25Gay8rZlpsVk96STdhSHNQ?=
 =?utf-8?B?RHMrS0EzUVlVNWpNenJZMVl2c2pSa2NkaXBLMEs3Rm5VMG05SmxZSnZKekkr?=
 =?utf-8?B?MElicXZOSzNEM2pBT2dXdGR6aFZxVVpTRzRLNnRCbkpEVjhBQjcwSmlkWUgy?=
 =?utf-8?B?ejhxTzBiK1Q3Y202ZER5QmczMm5BeHBuS3EwdWtyeFVQQ2xuOUdmcXAwUDRN?=
 =?utf-8?B?bmhsTDF0dUpXRU9ZdWhBTUxUNWhZdUdIQVpjYVRBQ3dCYlNOay9tSVMyUU9Z?=
 =?utf-8?B?ZDRUYzRka2hHRGhPVzhjMUZiWFpiZ2QycWRycURidkFNYVJHWFlDUk1nZ09V?=
 =?utf-8?Q?Kqx84aY4mksqIvEOhbAtoCbv+?=
X-OriginatorOrg: thomas-ward.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 30f8da89-058b-4eb8-ee15-08dd6cc412de
X-MS-Exchange-CrossTenant-AuthSource: MN0PR19MB5948.namprd19.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Mar 2025 00:12:34.3895
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3f231ddd-e974-424c-8139-40bb3167ef6b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: asmwcZ+CMgWBbpeqjt8qUMj4yFKelRojl/0FI+Mg3DJF+atExlm4m63QbJxfWcDLt5ksaqS/BV+idVa/l7USqA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR19MB5512
Subject: Re: [oss-security] atop: Heap corruption

--------------jqrNBpN5BBjIFSl9vUVugPPp
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Not sure if MITRE is on this list, but...

On 2025-03-26 19:56, Alan Coopersmith wrote:
> On 3/26/25 16:07, Solar Designer wrote:
>> Hi,
>>
>> This (or rather an earlier vague warning) made it to various tech news
>> sites today:
>>
>> https://rachelbythebay.com/w/2025/03/26/atop/
>
> CVE-2025-31160 appears to have been issued by Mitre to track this:
>
> https://www.cve.org/CVERecord?id=CVE-2025-31160
>
> but only listing the above blog and the ycombinator threads for details.
>
... this should include a link to 
https://github.com/Atoptool/atop/issues/330 which is a tracker for the 
issue in this CVE.  It looks like a munmap patch has been provided but 
it looks also that this may be one of multiple 'suspicious' commits on 
the radar (if you read the issue thread).


Thomas Ward, CISSP

--------------jqrNBpN5BBjIFSl9vUVugPPp--
