Received: (qmail 19843 invoked by uid 550); 14 Nov 2023 18:36:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15833 invoked from network); 14 Nov 2023 18:32:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1699986757; x=1731522757;
  h=message-id:date:to:from:subject:mime-version;
  bh=zaE2vxvK8a4rMeFNAQ5LBoCUeKdk65eEFUnAOOUgEFw=;
  b=X8B5CAihL32Niu2yXEWro+TdRfZ69yt3u7x3gLiC1hWrPCRCbjuASCxn
   k10gTMUMJ89xrGcYlbTLT8gMiNN9TpQvPaYR59wA1hs8yeQ4I9taWL5y6
   7bpgzPZ4j+TLtqvk3Y0egNI4Y2EGIy5mioC76Io0459/l1Al6UdDhwCf0
   nLULnEyKkraT4YU7GnBAoQ4iebPf1o+YexGNEgvPFLByTanHii5X/F1De
   aSre1yMsp0k0uAFRxXcDVkecwicyQ0vBf3mpD1MgcFKniUDVW8onBwlKF
   N2SArDecv2JxbPHlHTmdFGVmvNdCuSV74x0xkfmGNUZcgdR7dvNpGqjIj
   w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10894"; a="476939810"
X-IronPort-AV: E=Sophos;i="6.03,302,1694761200"; 
   d="scan'208,217";a="476939810"
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10894"; a="855394969"
X-IronPort-AV: E=Sophos;i="6.03,302,1694761200"; 
   d="scan'208,217";a="855394969"
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IBePz9CjJ1Je8Q/yCGg3CXadkAIlaYMq85gYxVC5X1GMo1tyaF9wVHWxincjSgf8baNNVsN5L1AmMJOS3Sk24XbCkaxpMR2Q26jCeSm92MPbg8krL4KyCFZkn/RfOLlfihRYy9ngcAbemTnbiH5h084l8heeepcVe/GOT9hX20dMab6xicdDJ/eti7DAk0rHai3p3rMPgCcNm9NEcYWeQuuFzihy9/Pl57wxU7dfDogmyM0u2497TpxTUCGg7sP4nrP8ZiL23c/+V2PaAGGOPfFmuccgZNFd8m3GwaquiM/j9IDYAa5MCkTzpQTXFs/tRIOP/0FnPR4BXvKtaFWrqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9E+HIRE+TOsjvm4JP/cd6Oh/sBouhCMgBE4+srJBuyU=;
 b=jLkl6cWRXXl/eF23VANGPL4ehdEBCtHyQeqw9yctOUM5b3H7JC6E0r0GmvWLoi0fx+sdcANPl7LTegwlqUEyXAE9K2xrIh6cJxMUPatYnlQm2Hfj8ZMgb7gJEjwFqSKSNPBkwQkwh5BlXt0JhpvTbOoiOaMqDwH4nAggeczsgVaio+6xE25Dbs08wyIBF8kJ0qfFkKNqquXALswuV/OGpwsC93GW7/+D7Yfx1fPsWy17yBOji/fqL9He3Zkwq5Ch3jMPgXjWd1Fa83M8Bf5xEYhNCxusLEAah7OPVySRLh7h0vMroWjeO6886wz1G4UfHKVaxE1yXOzA9qYvXl7hwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Content-Type: multipart/alternative;
	boundary="------------2i3N10eni9iWsPQHCSgPgV4P"
Message-ID: <ae728a21-91d5-463d-9f54-44186a01253d@intel.com>
Date: Tue, 14 Nov 2023 10:31:51 -0800
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: <oss-security@lists.openwall.com>
From: Antonio Gomez Iglesias <antonio.gomez.iglesias@intel.com>
X-ClientProxiedBy: MW3PR05CA0009.namprd05.prod.outlook.com
 (2603:10b6:303:2b::14) To MW3PR11MB4650.namprd11.prod.outlook.com
 (2603:10b6:303:54::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW3PR11MB4650:EE_|DM4PR11MB8131:EE_
X-MS-Office365-Filtering-Correlation-Id: 64ad949c-c3f8-4e4a-a420-08dbe53ff915
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: VXl+GxLbTZzXOz3t34f/LODV3+E4eCqwEZcT/DTAOeVkcaQi0Aps6TT+ZNRMZ3B2onupUg2zRWm/WVoUoowbU6jrogM4ztvJbR8LxbqHZQEehTlFuwv1LyruJLy01+1nIzycZHkypDI8SJCqUKn/VvoxAFkFrnR47lBZtcZomw2pc3JKAsU1ZWhYAsIIh5MJPimZRup/W+nS7uyQLe0TZlomPNuGSeN6Yg72N0SSra7V9qqHnlOSE8Lz8K+Y/1wh3WcQ/5g830ZMhnQGtO0PEEt2FioBKr3p43yPwsa5N1BhxKYrlZLyRgXoD0jwjcq6a3/21lJaDcaMNtjAfhhAr8mbxxgkBkX1rP7M6WuwENVmZ++j5s7B4myrUbKY70T+eFPri3JERRM/LalC2j+IK3lVGU4ODkFn/S+xJIu7WkyEpUSc1JwjBrL1isCDsg5OwcL8bD4nxv2fkamWIC7yxngzAw9qBRyBVUISkI/hQJwOv/It6LONE4TPayRgEpd9sMtsQjWPE+bZxts75H+az1B6VdHGJiFYMX5HoxzXVXx5/Pse6lEKrJGs51y98ZMt4ahUK3mhg0gZtYCfMSUhC9//L8EQSDJFkI+VWxAl2d2iXIaIik35OSKdq60zW5JGajQG2qwEKRRzoZDl8OQ24A==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MW3PR11MB4650.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366004)(230922051799003)(186009)(1800799009)(451199024)(31686004)(8676002)(8936002)(26005)(2906002)(33964004)(6512007)(83380400001)(166002)(38100700002)(508600001)(66556008)(6506007)(82960400001)(66946007)(5660300002)(2616005)(66476007)(6486002)(86362001)(31696002)(36756003)(6916009)(966005)(45980500001)(43740500002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RDMxdm5tQm8yRE1TbXhBQnFTTXRXUmVEWkY1SEFZY2VJYk84QnprNUo4cU5T?=
 =?utf-8?B?dUdyc2RKTk9EZm52OUJ1aWVZa2dzS0N5S09ieEV4TDZSTWtNK0d0aHJ1MWRQ?=
 =?utf-8?B?M1BXZHZoTngwbUtRN0lLSFpjUk5NNURzVGlKbTdxZWVEdXJha1pYWmNNMTBP?=
 =?utf-8?B?eXdmaFNpQ3R3aHU5aGUzQ2U1MmRkSmVadTY0TU1JaDBDREM3N1Rvd0FCNnRV?=
 =?utf-8?B?bnJKK3ZHRW5CWTMwU0FUQmN3WFpuNXp0OHV5eElVMllEM2dBZmJSRERKMkZi?=
 =?utf-8?B?RTU3WEdMY3N0T2FwWFlSWnB2dDYzQ2M3WTU0RVFRelpNeUE2NkVpVjFCS0lD?=
 =?utf-8?B?RWpieGcwL0lORkVoMlVyZzIvVG5tOHQ0eldpcUtZSVErRGtacVMxWGFsNWt5?=
 =?utf-8?B?enBoTlRCQVB0RDhwdXhVNkJOMkd3UFQ4d1lzOW9uS085emxidi9IN3JMS29M?=
 =?utf-8?B?TSsvWWJkcEpOSnFqa2syU3Rmbk5kR21xcklWSFkxQzdrbHI4eVNTSXlGcUNQ?=
 =?utf-8?B?bDU5RjZrVUNWK0prSnVBU0xOeVFwRVNJZ0hzbEVkNnlaNFhMNEh2eWRyU2lO?=
 =?utf-8?B?eCtjN1V2WHNaK0J2bUZyM3hjMzJBeUprYUZqWHFzb3Zwd1VwcHBSSkJRclR4?=
 =?utf-8?B?dUwzd3BYY2xqajd4YjFtekNhbG5TVGVEWVdMRDR6WVB3VHIyVmFIYUJiYlNS?=
 =?utf-8?B?MUVCOXVMR21lZEdMRE5JK2x6MmVlTFAxNEh1RGpYVmUxUnZFd2ZLcldRMXYv?=
 =?utf-8?B?ZmhWQnpXQnVxcTl6aEorK2lwSkc1ZXl5cks0UkFoRlV3Zy82WFNnT3U3QytR?=
 =?utf-8?B?UXB6Sm1wYW1NaXdZWUZIaWRmVTB1OS82dUUybGVFd3Q5NlY5UFFWcVUvOVlQ?=
 =?utf-8?B?czQ5R3lmbldEeWZ2WlozYkE5Z0pMUWhZWFJ2YUZnNHJnK0U2c1M1RFlkWnJL?=
 =?utf-8?B?bzBuUkFkT2VCV1ozR3RjdkRGdEJCOFNmSmhvQUxJcFN3aXFmc1RlRTlRSTlt?=
 =?utf-8?B?SUtYakU4RllxdWY0MVI3am0zSHVZYkNDdWZNUUM5bkRjbktUOTBmc3NrYi9h?=
 =?utf-8?B?ZE9zT0hVeWtmMW5oODhkVjhWL3VMME5iRTRPdzU4ckJERTVNQ29jUDh3T0lH?=
 =?utf-8?B?K3YzcWVEZzY2MFZTbXA2Ump2WlE2bUZWSUdlTUNqT3QyOE11R2pRd01XeXRr?=
 =?utf-8?B?V0JzMDNISnRBYWxzaUtDT1I3MUpvdGVCQUhwQ3BMK3ZYY21idWlVdnR4UXVU?=
 =?utf-8?B?cGU5TW93Z2xERUVqNWpybWZhOW5tNlhsdGJkbXdoSGp5T0YrUW40MEwwYmtP?=
 =?utf-8?B?MTYvRi9TeEo2Y0MzRUg4Y25yM0MxSUZMZnFVVFkyenFlMGxMaWpmM1BCNnVT?=
 =?utf-8?B?VGhWSFlIYzdZYy9UaUtjUFEyNHllZE9OR2dWdEdrNEZCYzcwOFdNNXlYTVVj?=
 =?utf-8?B?TC8zVlpnOUZISXpYQTNWWkczWnJZR3gyZmxsa1VYK2NJNnFlQS9vaFgxMHkw?=
 =?utf-8?B?dkVEL3piWnA1ZzF1NkJIbTFYRlpvWVpjeWxZejJrWllKd2tScml2ZVBHdW84?=
 =?utf-8?B?M3dBc09WWVk5N0ZXOVYxQlZHSjFKcE1oKzNHNTFiajAxdG90bTVkMmY2clBO?=
 =?utf-8?B?NUhXaWdhMFR6UlJDcXBIa0h5MElWdG44OGdxMGFKOXdxbmhLRUp0R0VlVEcv?=
 =?utf-8?B?NzE0MkNHVkJVbGVKeEVQZ04vZ3Y0Y2J4WmlSUUhFV0k2ZDUrMFN5dmJlVDB1?=
 =?utf-8?B?VXR0YllGRmFKbFc1NjJTWTUwY0FRSVdZWFQ2QmJEOUFhZDlqY0dKYzJRaE9J?=
 =?utf-8?B?c1NqZS9GWHBIMlZXcVhrU3E1NGxFOHF6cEFHYnJIRmJReVE4VWs5VTl4bGsx?=
 =?utf-8?B?cTg5R2VxRnFxWmU1Q3E2WXFLU2VmM3RUUUFFVmtNSVk0aGZHaDlJbTNZdVl0?=
 =?utf-8?B?WjhCa1Rnbng1ei9yWElZQUZNYnRFdmpEckkrL3RIQ0FrZ1pGdE0rQlVQN1V6?=
 =?utf-8?B?Wm41ZXlhaXA2am9CUkM5OGsxQUZmZmIwMnNjUlV6TDlVd3lqRGN2TTRLRGJp?=
 =?utf-8?B?cDJ6TkNYUkg3Nk1CUTlCYW54NFBSS2VTY05ZZ1FPWHlvRXR2bjhNTUY5YTVt?=
 =?utf-8?B?Y1lWZVpNVGlMc2plTTNrbVlkMWtVM1pGY1dFQ0U1SlJvbzRwT1FIakFhM3l5?=
 =?utf-8?Q?UhTFyeRUvTpgGzciXgiXQLo=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 64ad949c-c3f8-4e4a-a420-08dbe53ff915
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4650.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Nov 2023 18:31:52.9225
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: l4+vyhEHQ30bhaO6ZcJ6cID3h1CL2w9oQyL0+lDNHRja7WvXcBjP31AdJMLAIMNt3fuGLfcxJRzkwrDarib/cLxAn0Retffghxr2oH4HFOJX4JY+d6V+7Iy+dHZWqEjD
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB8131
X-OriginatorOrg: intel.com
Subject: [oss-security] CVE-2023-23583: Intel - Denial of Service - Privilege Escalation
 (Reptar)

--------------2i3N10eni9iWsPQHCSgPgV4P
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Name of the issue: Redundant Prefix Issue


Description of the issue
Under certain microarchitectural conditions, Intel has identified cases
where execution of an instruction (REP MOVSB) encoded with a redundant
REX prefix may result in unpredictable system behavior resulting in a
system crash/hang, or, in some limited scenarios, may allow escalation
of privilege from CPL3 to CPL0.
This Redundant Prefix Issue is assigned CVE-2023-23583 with a CVSS Base
Score of 8.8 High CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:C/C:H/I:H/A:H.


Mitigation
Intel is providing a microcode update to mitigate this issue: https://github.com/intel/Intel-Linux-Processor-Microcode-Data-Files/releases/tag/microcode-20231114

--------------2i3N10eni9iWsPQHCSgPgV4P--
