Received: (qmail 25753 invoked by uid 550); 14 Nov 2023 19:30:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23918 invoked from network); 14 Nov 2023 19:24:54 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1699989894; x=1731525894;
  h=message-id:date:subject:to:cc:references:from:
   in-reply-to:mime-version;
  bh=tBDvIQscAVvxtuOEspnKNj00jFBMeq4ZUGOd1MNMAjo=;
  b=ERU8QGFwZwufBeDIxLay6N5x0hMXGMDNqHUzAo0IB88qUXy9++/GN2k0
   jKczc3nSG690/bkGJ5BiqY0uZotkI1KDjV1iG8aEjtqBUWLK4peMuymdf
   HSefkRafsJr3jtZhRNmkvBNz4lzqPp/RJHG/HSN4RnmrYRgiIFHCftE0Y
   kpvMfU4rquBh9zsy6dHPa7cRwSatjHKlUwcC+CqLWuobj222enRAz/7zz
   EkivDC+NkLXEYM8ikfnPn0f7rlzA3mQ69QaAzsgJKMdgb0myLCnVwjd1R
   Kl58pukieakq+HQAhUWWU4K9kz+IYC1g3Z3OLHd2qXdUKTQuOMr/6XnAn
   g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10894"; a="394647415"
X-IronPort-AV: E=Sophos;i="6.03,302,1694761200"; 
   d="scan'208,217";a="394647415"
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,302,1694761200"; 
   d="scan'208,217";a="6169978"
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=e2D4mCx61sA806dQJM5b8/iPgx9aWxXNLu9YzEuo3VXybuDg4vcJZgDKnl4v/i7DiSVTgOiyGdUweh7Gxa8BwQTp4MrrHQJw8hwfANCXH/GFna5pGSA7K2qQ7g9oev4FpFRYebYQmSFdeK+sWJyF/Kh8EQP7ozbJd9OYb47KCebFTO9+g/A2CjavwXRPmMEScgrfiu63x3ehSrGartURXEhHFFaPZDb2TGimgb/h0l+eFLuWqz2pvqUcmjDdY2FOPWkjPgBuVIMCwP2VFcNIFOICUFglelucMZonoQEBuJhon7APg2DlFVgFdfSnccLivdz0rg7emeBPP5djU7vPZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CQXocl+qohcGTpjKDOkAtykDNIlqNYMTWyVbAYrK8jc=;
 b=gzponxT8IEfWmbO/Pwku1diLKuEXEw8WJPyQOQ0r0p1FoYlvvEjcYxbGz7EaXNhziDh+gg3CWhMOeR22H7yS2q0fdA8oIHrqEIdd6KLxHLeYbYo5yugFhcNl4QMS2hkL5uOuMi4Gn66QOazyH+4JYLMDK4OvT17O2f+CP+c2v+us4Lu813WtA9un7qYZUGwGqFmI3UzJIcco9+EQMLRenKX0tMw/22zLy56b8+16LWh6zsungpvrujKwGhAIFVj+uQRbq2EqnBMYn/y2CUjeSeheqNDdVcBm4O7IkNF2laNoG8LusdZY+IZQJd9NrAWHrPFm3XboaCMERf93vNowQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Content-Type: multipart/alternative;
	boundary="------------uXm5Z7fB3uHzPmhtWnzghQPl"
Message-ID: <3b58a85a-ecda-4d22-8794-f81db4d2c6aa@intel.com>
Date: Tue, 14 Nov 2023 11:24:30 -0800
User-Agent: Mozilla Thunderbird
To: HW42 <hw42@ipsumj.de>, <oss-security@lists.openwall.com>, Solar Designer
	<solar@openwall.com>
CC: Tavis Ormandy <taviso@gmail.com>
References: <ae728a21-91d5-463d-9f54-44186a01253d@intel.com>
 <20231114190713.GA11191@openwall.com>
 <7a2b4406-6f0e-4e4f-be43-a0ec27404063@ipsumj.de>
Content-Language: en-US
From: Antonio Gomez Iglesias <antonio.gomez.iglesias@intel.com>
In-Reply-To: <7a2b4406-6f0e-4e4f-be43-a0ec27404063@ipsumj.de>
X-ClientProxiedBy: MW4P221CA0021.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:303:8b::26) To MW3PR11MB4650.namprd11.prod.outlook.com
 (2603:10b6:303:54::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW3PR11MB4650:EE_|DM4PR11MB8227:EE_
X-MS-Office365-Filtering-Correlation-Id: c0914184-cbb4-42b0-7d12-08dbe5475470
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: W20h5MZTSu+rSuQ/VRQfiTefbqoQNuiIWk1cLXY+UX3Bxe2L6ftvILw5NzIZ0sNpG9LOcpZ9mpaFzHWEV8SDk9Qn/xRsnMGb/prFdP5n5+MSgOQfbIC72x1nkFJ3FW7tVfPNgxp2N9SpURw51JGevACFFEnX4IyAW60XhYCqF4sOwIzSsaZFJCAlrCb8afKxA2+hJjZppZBIE5mMQ8O36aZgoVSzs8SLa3SMUiSuBfxd2i+EqGJrwpNN5a+J+E10OS1n3qQE4phuGN5ovEzjIKfYOQz3hekgA92B1siTbkHGjPic8o4mZJj1am6E1dIBXfgxE1cSjVzPhwveE/ddYJXG5p9XVn+djmSb+OrPqbO0iDqk89qyZ+AJDrqUjbqfyA69o7qqy4t1f5D6L6zoJEcOVaXL9hM3QwBUo+mSZhD44f7pJ5wAmakOsxA99IK03AasGuIqZqnsuCc4g88DsRMbtlNMOLtdUTJuEvRmlWmn+2a0WmJJoT3PyH4MvnNrl65RQHDDg/RnTTSQihw4D2lH16stE+N+jbxxAMx05wVQmUtTG0HopMIlu6aaWm0sHqR3bwK0tg7FD9TPLjQakw+kaagz3QxYOj8QjxbyKb9oM0sGdEKyhxwnqdwiE77jUG3IVpz43tdZlBUyPGpOYgA+M1f8soh6kIkEfCz7uULn1QQ+E0UQ2LE5TgTiyN+2
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MW3PR11MB4650.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376002)(346002)(39860400002)(396003)(366004)(136003)(230922051799003)(64100799003)(451199024)(186009)(1800799009)(31686004)(66476007)(66946007)(110136005)(66556008)(38100700002)(166002)(36756003)(82960400001)(31696002)(86362001)(6512007)(83380400001)(26005)(2616005)(6506007)(33964004)(53546011)(2906002)(15650500001)(478600001)(316002)(6486002)(966005)(8676002)(8936002)(5660300002)(21615005)(4326008)(41300700001)(45980500001)(43740500002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ODJQSXRKRjZoSXdYNkJHL3o4MW0zdmRDdHNIV3lEL0MrbnFydEN2Ymp0RzBv?=
 =?utf-8?B?NVJwUEN1b29iTFhoNGtyOE4zaGl1UCtnQWxESEtabUNsejhJOVYwRkFmUXlq?=
 =?utf-8?B?ZXRxN1lFRmw1dkhZK0liTnpaUEl5MjgreUN3Um12UFVQZkw4a1JpSnFTQk4v?=
 =?utf-8?B?SmdtQkhLZzlXRS91WFRHNzk4YjgvSmhrdUwwcldidXZCYkdHZVI5eU1wWDNq?=
 =?utf-8?B?ck1WWmMyL1NMZ005dGVXa3l1Y2ExQ0sxYXFvM2hPblVmMWhPYklmNXRTZ1py?=
 =?utf-8?B?WXk5ZE1reVZNY1dXRU45QmI2YlhJdWJJSEtvODFLRG45R3pWemxoMk1QOHNa?=
 =?utf-8?B?c25ieUdORjVQSkxNYzZPejFRcklwZWJXZlAwbm0zMmFjTFNsRTc4eFY2VnNR?=
 =?utf-8?B?azZlRjNEU3hOZ1VmdUsySDFNd1FESUltSWd1YkR4R1A0UFI4UnJNZ2lYT3BT?=
 =?utf-8?B?TGV2cCsvN2lGUkY1aVo5Y3FTWS9KZWVJOUxjZ0NUa1FUOVoyQ2xFR016azFJ?=
 =?utf-8?B?MXpMUlJ0QnlyM3Yvem1SbDRydGV6c1FBc25rS3ZVb1RlV3pQcnJZVyttREdw?=
 =?utf-8?B?VzUvVUdNaVdEeGNTaE1rSmphdlJBa2dlaDJXWEs0MGtCeGxkbkFsNTAybE9q?=
 =?utf-8?B?cDNybndKSk1kRTMvaUJGcklmM0dEd1FwQ2ttenBaRUx0K2lvTnQ0OURJdVdj?=
 =?utf-8?B?WTljN3ZsUEdOMUhyRHJpSWVYSVlJR2xzbXhFVjlQVnU5ell0d3JOTzhUOE5M?=
 =?utf-8?B?VDRVNktER1R1czVyZmVsQTEvSFlIZ2l4c3hDQk5kYkVCNGlGVzE2eVZrNXJR?=
 =?utf-8?B?MDJpZWVWYWt4S1l4ME5HeVR4WHJ2dEVKU3pBNDdpTDE3clFaaVJodytONitU?=
 =?utf-8?B?Vzlnd1NlV3VDMmFxdmJicUtaS3Y2SjJxeEdadW1wbk54T2dMNlh5N1BYa0to?=
 =?utf-8?B?OHRhV0NDZ1pYSHdvb0NEdURiMnh1WE54aCtHZytEd3V0S1R3M20zL0E0M0wy?=
 =?utf-8?B?RU1ON2VNSHhBMmNDeVhLMnJiYzNTY0pGbWx2eU11cDJoYUtYS1JEbFR1RFhv?=
 =?utf-8?B?ZjFqYjJsTmhJZFNHWlhkSCtoRmhBekxRamJBVHJyTlZGSTh2MVZmVW4wYWFJ?=
 =?utf-8?B?emRza1pQR2dSTG4wZW9TeDc1ZlhXb2piMXdkMklZSXdzWFhrajBjQXZKWXVj?=
 =?utf-8?B?RlBGTXAvNW5RazNoSG9kYUt1cWM0TkEyeVdTUkZMTmN4ZUtIdE1XTG1WNkVq?=
 =?utf-8?B?b0cvWndsRDQ4Nk5oTkU4R2VvRVFTOXZjWWpieDVoRFdqZWRuSzNpL3NtcDJo?=
 =?utf-8?B?NXU4d1FtSGVFSCtsSTUwWGMreGM0b1ZFWjRtZzcxTjZ6QnVwdnREeXJlMFZx?=
 =?utf-8?B?cnBSZW1zZWwzeVVmZ0J1a1oyQmlQLy9DMFB6am40Yk9rRStrOTRyY29Fd2xu?=
 =?utf-8?B?WDBVSW9qcG55ZlFpWngzSTVQVXlwZkVycTFlK01GUXNzbVc0Q3B6ZzNIMms2?=
 =?utf-8?B?S0FmTDlodnJDaTEyci9BQUE3MitEd0ZpWFdNZ0V0ZEFvOFhISzFQdnZOTzEy?=
 =?utf-8?B?bWV5ampzSStJT0crdWpDT0tZNlp4NkphbWphMy91ZSsyRUd5dnF4RFFsSHMv?=
 =?utf-8?B?bENUWFY2R2RpQWpCdkJUeGxmMXlyd3JmcWlhMWpnRzlueGRHRFJnMVhoSjhL?=
 =?utf-8?B?c0pUVVZTY2t5SFRHOUs3NUJJSitacVpLRC9Vc1RxaGhOZFR3bXBPeXM1d0JN?=
 =?utf-8?B?UkU2NjZnSCt4WDNrQk1OL2daRXJsazdUU3JWN3gwV091YnRWOEIrSWRLSC9M?=
 =?utf-8?B?cmJGak1hM3BkaUlIaW1KT0s1YXFNWWI2dGxrQVhUVnNXYkNSNlF1aENXZGZ6?=
 =?utf-8?B?NExCYnZnZEs0eEtVUmJTM3V3NjJjNGJMMVp6WDNlVnJqVFd6WlBmbzNveGtN?=
 =?utf-8?B?S1ZYeW05T1pDV1ZoL1lpdHJ4R2FzQlRJWWE1Y3JyYU9jTGRac1FnZzhTa2dx?=
 =?utf-8?B?VFpmYlRjQlFYVzdGTGZFOGRlclg3MEtxVDJPTU93UnR3ZDJzam1QalpkVXJ0?=
 =?utf-8?B?VFlVcWFYUzlzQU4vMmhXM1p5eU1ET0s2b1ZYU0ZnSmxNSnlnZ3pXNWVVUGdQ?=
 =?utf-8?B?UGtlWVN2REVkQVZ4cnFZaVpJanJlN211em1lZER4aWhFL3VqcUlYSzNUNHdw?=
 =?utf-8?Q?5BqynvN0BjNCFTZfhWvTH9w=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c0914184-cbb4-42b0-7d12-08dbe5475470
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4650.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Nov 2023 19:24:32.6936
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4oFYlMyzd7kkZ5qqyT7gkRjlsxkqtE1fhaJUESTc18DYjTHoRo0ovzMV5IRzto9H46UoXlfJR5/ZBmVzXJ0X4AHxKIiXf9ygXZv3NOx+hdJllQOinZ9cb/YzLQ9r9IKJ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB8227
X-OriginatorOrg: intel.com
Subject: Re: [oss-security] CVE-2023-23583: Intel - Denial of Service -
 Privilege Escalation (Reptar)

--------------uXm5Z7fB3uHzPmhtWnzghQPl
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On 11/14/23 11:19 AM, HW42 wrote:
> Solar Designer:
>> On Tue, Nov 14, 2023 at 10:31:51AM -0800, Antonio Gomez Iglesias wrote:
>>> Name of the issue: Redundant Prefix Issue
>>>
>>> Description of the issue
>>> Under certain microarchitectural conditions, Intel has identified cases
>>> where execution of an instruction (REP MOVSB) encoded with a redundant
>>> REX prefix may result in unpredictable system behavior resulting in a
>>> system crash/hang, or, in some limited scenarios, may allow escalation
>>> of privilege from CPL3 to CPL0.
>>> This Redundant Prefix Issue is assigned CVE-2023-23583 with a CVSS Base
>>> Score of 8.8 High CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:C/C:H/I:H/A:H.
>>>
>>> Mitigation
>>> Intel is providing a microcode update to mitigate this issue: https://github.com/intel/Intel-Linux-Processor-Microcode-Data-Files/releases/tag/microcode-20231114
>> Thank you, Antonio!
>>
>> Here's a writeup and reproducer tool by Tavis Ormandy:
>>
>> https://lock.cmpxchg8b.com/reptar.html
>>
>> The GitHub release page above links to Intel security advisory:
>>
>> https://www.intel.com/content/www/us/en/security-center/advisory/intel-sa-00950.html
>>
>> which specifies what CPU generations are affected (from 10th generation
>> Intel Core or 3rd generation Xeon Scalable to current), and links to a
>> table with "an exhaustive list of processors" matched against this issue
>> and previously disclosed issues:
>>
>> https://www.intel.com/content/www/us/en/developer/topic-technology/software-security-guidance/processors-affected-consolidated-product-cpu-model.html
>>
>> It also says "Please refer to the technical paper here for additional
>> information", where "here" is a link supposedly to "the technical
>> paper", but it's a non-existent page currently, so I'm not posting the
>> URL yet (not sure if it'll stay the same when the page is published).
> I think that link should point to 
>
> https://www.intel.com/content/www/us/en/developer/articles/technical/software-security-guidance/advisory-guidance/redundant-prefix-issue.html
>
> This one can be found in the affected processors table.
The SA
https://www.intel.com/content/www/us/en/security-center/advisory/intel-sa-00950.html
should now link to the correct page. Thanks for the feedback!


--------------uXm5Z7fB3uHzPmhtWnzghQPl--
