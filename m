X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1118" "Wednesday" "17" "March" "2021" "18:39:14" "+0300" "Evgenii Shatokhin" "eshatokhin@virtuozzo.com" nil "39" "Re: [oss-security] CVE-2021-20219 Linux kernel: improper synchronization in flush_to_ldisc() can lead to DoS" nil nil nil "3" nil nil (number mark "U       eshatokhin@v Mar 17   39/1118  " thread-indent "\"Re: [oss-security] CVE-2021-20219 Linux kernel: improper synchronization in flush_to_ldisc() can lead to DoS\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] CVE-2021-20219 Linux kernel: improper synchronization in flush_to_ldisc() can lead to DoS" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 10171 invoked by uid 550); 17 Mar 2021 15:45:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7543 invoked from network); 17 Mar 2021 15:39:28 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ni80eO9BHakVzsJzw+8MZsuynjVUoBQteAgZmXUZeRbgPAVfG6fXy1+riQV4aLHROdZ9kD4tWLnxFJxdC2iY6psq3/g66am28G6PD8V5vgC1OE7PQizOZ2sa/XuEKrHvx7gaH7w17y8X8oOn8zqYu0OSbEPwtX7PDZNEc2VIHKIX7POq6MQ4C7zWbn7kJIW1hBGDkHBOOKQ7aslEfH+hJETEA3uZdTfYgJARZHNaGZGAovfMXKLRkxRm6F+P/Qns1m08FUWIWle3xe41uqNRq9srdNecDqRz1BIjvXPv2oFsD+EG2KUcLF8hOH2kqYbjXqMt6wsxRj9H5+xdyDqD0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=I/XT+Dg4iu5+yDMr+qunzxl2koo0rzmUwYZbZ4Legcc=;
 b=ZPBg1mpKGanOXs2GCSlRh1gogB3NzTpPNeb9DlzmkzdpdIxKtDIYYwn9UCnhjdrGm6j/DVHi+O8nn6JGrVCSHFium6seqccmZpxplXdOHxKXgSEqhi1PLRV2E9DSLJ0Dv04htJaHatjsU+oCCo3PHdl/lAqklyhpvghKy99f+SeXE2lGx8WJWHRR5jY0f4Z0aCTyqNGGq8BXC5yQcia80Z660k8Z1tfwJfrRj3KHrS0Oi5b3kFW4pnc/ZJPybJ7h509P/2q+jKMoDl8aCBgrgMP3fBGCMy+AlXfPXp6N5AZN+dsYAmP5prTJmcrh+yPvbXTUEdOHl2uqOh9WLHt5rQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=virtuozzo.com; dmarc=pass action=none
 header.from=virtuozzo.com; dkim=pass header.d=virtuozzo.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=virtuozzo.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=I/XT+Dg4iu5+yDMr+qunzxl2koo0rzmUwYZbZ4Legcc=;
 b=Efi1lGYXuipSd8pUkjMzzbss4aoDAvVtyA0XlC4RTE9UiwLDR1sXHMBSDqXf/b2ddOpxi/1jpJD7pNia15WrSci75llggtK/4XEmEasXjod34qXMs2FzOdkHZSj6OKtqdJGJKwnR+k0ulujGtwk+/aLraLcgRpdnpho/qx8Ymik=
Authentication-Results: lists.openwall.com; dkim=none (message not signed)
 header.d=none;lists.openwall.com; dmarc=none action=none
 header.from=virtuozzo.com;
To: Salvatore Bonaccorso <carnil@debian.org>
References: <CAKx+4-qgvO4_R8fTqwxKLqwud42wUkG3V2POGeXE6C6Bv+zrxg@mail.gmail.com>
 <YFIdcSI6NvjeqFKp@kroah.com> <YFIgdvb3HG4js+Y2@eldamar.lan>
Cc: oss-security@lists.openwall.com
From: Evgenii Shatokhin <eshatokhin@virtuozzo.com>
Message-ID: <6822116c-31f0-bdc4-5b40-d2e0b91a5e02@virtuozzo.com>
Date: Wed, 17 Mar 2021 18:39:14 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
In-Reply-To: <YFIgdvb3HG4js+Y2@eldamar.lan>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Originating-IP: [85.249.47.245]
X-ClientProxiedBy: FRYP281CA0010.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10::20)
 To DB8PR08MB5019.eurprd08.prod.outlook.com (2603:10a6:10:e0::21)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 647363d9-f78b-44e9-2a32-08d8e95ad283
X-MS-TrafficTypeDiagnostic: DB6PR0801MB1974:
X-Microsoft-Antispam-PRVS: 
	<DB6PR0801MB19748FBE97B0B6957D1B34B2D96A9@DB6PR0801MB1974.eurprd08.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	7d1xJNbLV19hSWT7jQB5tQOID1k1e3DtFllVXpTL4cntF9Ar1qjtgF+Ac8oO/HGu7ZUSpBcnVPS4nzuY9aH6sJ5ZCQoh586hk0ecu5GWHhGwErlNmos+YfBCAqO46AqA1nl8lELLEIR/iGZ31mNJc+4Y5aCqtDtMP7NuBX1K7lhfcbT0CXGvW6qA11cdkeg8qRL5NNhSdVgdtsZeROrErBydxFHPNLHQ6XiEwriG8zTybH5CHfvgqV8h3xhbwCO+NUysVyO27xlCMuwRrwIhuoXcXe4wxoh1AkVoGBg3RBhcIF99NJuLKGdoH8eQTOps5jY2+lU7tU03mKlrhOqatE/l3igd2h3/VpeN8LHHea0RmpJaXmabA2SB8MO2BDdO6MUQPXAigaYZvZjpVuZyLHgS91DYlt/7X8QEpYYMbYEcryE5NuBZtPE1o3KVx5x1bLPDm1g45gmiJNpoUowsEseAVEVlieqdrSEC+85XXEzc2Fjz2+7CTmzExIitSxF767U/S4qZZGj8Ecn+dY1iNKuYtRNKXeh+MdSqz88BkgST22OSRdedFmTGy1vbs+68kWjeM8cLl7vUddruGktTNnbr89477rF5SXiHCpv2MeN/agoBhQzso5wN4UckrDcpJw8VMF8kFHLXdTCdvFHPyg==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB8PR08MB5019.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39850400004)(376002)(346002)(396003)(136003)(366004)(6486002)(316002)(8676002)(8936002)(2906002)(956004)(478600001)(36756003)(5660300002)(86362001)(2616005)(31686004)(186003)(16526019)(52116002)(4326008)(16576012)(66476007)(66946007)(53546011)(31696002)(26005)(66556008)(6916009)(45980500001)(43740500002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData: 
	=?utf-8?B?RTJBMER0S3JlQUpZaDd0ak85ZUlTdVVUZ0oydlZiK0tTQUVYZi93ZTN1QTZz?=
 =?utf-8?B?NmJoUkNsRTFXRDU1UUg5TjdqZHRVaCtDVnhqREJrajNpbG9IbHVrR05VUGk5?=
 =?utf-8?B?VWxzSGh4ai9ab0FrMW1WLzZVZnRDNmxRazBUMno3c3owQ3F3SERGYU1QSDJ6?=
 =?utf-8?B?R2dQNFBIcTF0TW5nNnU5U2VXamdKVlJtRTc0Rm4rWGNjdytxNWlyYnEvdnFX?=
 =?utf-8?B?dDlJV1RoYTd4TkQ4Z3h0NlV3L3ZtYitZTTREeWlXZjNNK2dwL2ZObjdRZHJp?=
 =?utf-8?B?SkJqM041R3ZQNjM1dEt6NUdZTzhiTWNNQWNXc0w1K3p0Z1JVR0JZY2VWbzdC?=
 =?utf-8?B?SWZ5enpvNWs4ejVyZ1hMZm1UcmZCWHZZTGFpL1RrMXl3RnZCeWI5R3RaQXVq?=
 =?utf-8?B?aUw3eDdFNkdmQmF6Ri9CeUhTMHU3Y2dUcEtvV3o4UnpQdENZTVZoVE5XMzNC?=
 =?utf-8?B?SkZBTjliQ1RVM2l2b0FrWVBJSmNiNTN0ZW91TlN2UzBkcjh1dHU5bDhKZlhF?=
 =?utf-8?B?VWt1NFRZK1ZmUnhUZ2RwcnZkbjdMeHh1WjNkZTQ4amxSeWg5WVg4aE0vSW9T?=
 =?utf-8?B?Vi9PWlJCM2pvNEdtNGx4WTA0R2JSY0xpRGtZZW9tWFdqZERGbDZHcVg3aWUx?=
 =?utf-8?B?VjlVMlhmYTIzK1ZzYVNwVkk2N2VPMWNKbUI1T2ZSVEk3aHFGcUNNbUlKakFi?=
 =?utf-8?B?S21xazRFN3JkZ2c4a0FxUVlIOWRleDRtazUwWGx3VHpKY1NpUXBuVTJTVHNK?=
 =?utf-8?B?TWczcmJGalRrQVF3L3ZQOUpacDBZelU3cGFGRys5WS9CMTdRNVBsSHRGcU1y?=
 =?utf-8?B?bFdPZ09kS0Znb0lUQTZ5V0owNWsrL01ZOVBySEtVWmpyS2ttZkpLUWo4cHFK?=
 =?utf-8?B?dEZQejJ6Ym9vVGk0K1RIeUl2a3I2MzBDRlZ6TXZwdU1Da2NSV0VYL1RVQ3Q4?=
 =?utf-8?B?bmE3UGxyL1JFV3dNYmk2Z3BnV3ZrOTJ5NmVrZSszK0hLdG5OdFg2Sk9PNG53?=
 =?utf-8?B?VWxpRitsOWozQmJmbk5FWHBoK0lXNTIwakdxcFlsL3loL3UrdFlxL2M2aVJL?=
 =?utf-8?B?K1ZxTlVxNkFxNVErZUpzZVNtSndsLytUSDhYQ1JlMWtXK1pSZDkzZzgzaWVY?=
 =?utf-8?B?eEdWc003aTRmenlDa1VuQWZwSURVbmRUUllwbURDbkdBREFiU1JNQTJFUklB?=
 =?utf-8?B?eS9RRjQwU0laUU1yd3lGWldMOHRlUUdoVXJZNmtBUTE0TWJKMVNGOWhwTUp4?=
 =?utf-8?B?S3I1d3pYbmlabXNrL1RVRGhEOEVOdnN1RGViekZadEFPUWQyZEVSQkZvOERy?=
 =?utf-8?B?RkoxbHV3UzhVVDZuSEVQbG56enQvOGlNUWVDclh0OER3YUZKazA4QTdlUmNY?=
 =?utf-8?B?eVJuOXVtdlc1cFpOalpocDJ6T0RaNUd1ZFN0RG9EYkdNeGRHQUNRcVJzelJ4?=
 =?utf-8?B?RlRRTWxDbFRqY0FZRzFHb3dINHArYlB2bWNsY0pSYVh4N1pNS1FEUWhqQWF0?=
 =?utf-8?B?ZzlCOUZRWUI2NHZMU1pTWEdOdXFqMWU5REJYVmVnZXhLWURvK2FBTWx4Y1lk?=
 =?utf-8?B?SFZDMUF6NWQwejF4Unl3WnpOUENqc29tYlIxVEEySFN6TXZJTHlpWGNERHdw?=
 =?utf-8?B?UTI3TlVyVnRvdGRJTVhZQ3puSk5DSURjUEdmV2RXcExuNTdpMWJOSjliOHEw?=
 =?utf-8?B?MC9JMWxCOXdMb0NsUHNUVnZxVEZiVmFERkNTRjd2SVNYd0s5d2QrYmp3ZzYv?=
 =?utf-8?Q?a78T2UVA3xeVsqPeoChbjE1bITp+o+XjfFzlwru?=
X-OriginatorOrg: virtuozzo.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 647363d9-f78b-44e9-2a32-08d8e95ad283
X-MS-Exchange-CrossTenant-AuthSource: DB8PR08MB5019.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Mar 2021 15:39:16.2204
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 0bc7f26d-0264-416e-a6fc-8352af79c58f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SqhqyNwwj3dY00Jw9GO7p40YghqKIbkq/QEk755BiE6mpQ5po02QJO4bzvA7OlYXs53IP0CPs+yiVqQHtMCbBoAoYGcVaN//+3HWwR7q5yk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0801MB1974
Subject: Re: [oss-security] CVE-2021-20219 Linux kernel: improper
 synchronization in flush_to_ldisc() can lead to DoS

On 17.03.2021 18:29, Salvatore Bonaccorso wrote:
> Hi Rohit,
> 
> On Wed, Mar 17, 2021 at 04:17:05PM +0100, Greg KH wrote:
>> On Wed, Mar 17, 2021 at 07:45:59PM +0530, Rohit Keshri wrote:
>>> Hello Team,
>>>
>>> A denial of service vulnerability was found in n_tty_receive_char_special
>>> in drivers/tty/n_tty.c of the Linux kernel.  In this flaw a local attacker
>>> with a normal user privilege could delay the loop (due to a changing
>>> ldata->read_head, and a missing sanity check) and cause a threat to the
>>> system availability.
>>>
>>> 'CVE-2021-20219' was assigned by Red Hat.
>>>
>>> Acknowledgements: Evgenii Shatokhin (Virtuozzo Research LLC)
>>
>> Really?  Not the tools or people that reported this issue and fixed it
>> in the community back in 2018?
> 
> Can you clarify, would 3d63b7e4ae0d ("n_tty: Fix stall at
> n_tty_receive_char_special().") be the upstream fix you are referring
> to for it?

Sorry for jumping in.

Yes, this is the original fix, but the issue I reported is specific to 
RHEL 7: their backport of that fix was incomplete.

> 
> Regards,
> Salvatore
> .

Regards,
Evgenii

> 

