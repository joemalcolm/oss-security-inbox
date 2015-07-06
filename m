X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6091" "Monday" "6" "July" "2015" "13:16:00" "+0200" "a.furieri@lqt.it" "a.furieri@lqt.it" "<31180074aa4d9a45cb280df235f70a80@lqt.it>" "170" "Re: [oss-security] Re: CVE Request: Multiple vulnerabilities in freexl 1.0.0g" nil nil nil "7" "2015070611:16:00" "[oss-security] Re: CVE Request: Multiple vulnerabilities in freexl 1.0.0g" (number mark "        a.furieri@lq Jul  6  170/6091  " thread-indent "\"Re: [oss-security] Re: CVE Request: Multiple vulnerabilities in freexl 1.0.0g\"\n") "<20150706124945.3b70a6fa@redhat.com>" ("<CABfY0L1Y2CYFQ-Hd-kohtzLKDy9aFFKmQM_drwsiR3MpEZ+KJA@mail.gmail.com>" "<20150327234801.AB6AC6C003B@smtpvmsrv1.mitre.org>" "<20150706124945.3b70a6fa@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1876 invoked by uid 550); 6 Jul 2015 20:09:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 6079 invoked from network); 6 Jul 2015 11:16:17 -0000
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 7bit
In-Reply-To: <20150706124945.3b70a6fa@redhat.com>
References: <CABfY0L1Y2CYFQ-Hd-kohtzLKDy9aFFKmQM_drwsiR3MpEZ+KJA@mail.gmail.com>
 <20150327234801.AB6AC6C003B@smtpvmsrv1.mitre.org>
 <20150706124945.3b70a6fa@redhat.com>
Message-ID: <31180074aa4d9a45cb280df235f70a80@lqt.it>
X-Sender: a.furieri@lqt.it
User-Agent: Roundcube Webmail/0.5.3
X-Netcom-MailScanner-Information: Please contact the ISP for more information
X-Netcom-MailScanner-ID: 031DE102435.A9F39
X-Netcom-MailScanner: Found to be clean
X-Netcom-MailScanner-From: a.furieri@lqt.it
Cc: <cve-assign@mitre.org>, <jodie.cunningham@gmail.com>,
 <oss-security@lists.openwall.com>
Date: Mon, 06 Jul 2015 13:16:00 +0200
From: a.furieri@lqt.it
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: CVE Request: Multiple vulnerabilities in
 freexl 1.0.0g
To: Stefan Cornelius <scorneli@redhat.com>

On Mon, 6 Jul 2015 12:49:45 +0200, Stefan Cornelius wrote:
>

Hi Stefan,

if I understand well your tests are based on the obsolete FreeXL 1.0.0g
that is not the most recent version available.

version 1.0.1 was released on 2015-03-22, and is exactly intended to
fix several critcal bugs dentified by American Fuzzy Lop when parsing
purposely malformed input files.

it could be surely usefull to learn if after switching to the more
recent version you still continue to confirm your issues.
and if the answer is eventually yes, sensing a copy of the input
files causing malfunctions will surely help to debug the code.

bye Sandro



> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA256
>
> On Fri, 27 Mar 2015 19:48:01 -0400 (EDT)
> cve-assign@mitre.org wrote:
>
>> -----BEGIN PGP SIGNED MESSAGE-----
>> Hash: SHA1
>>
>> >> #4: FreeXL 1.0.0g did not properly check requests for workbook
>> >> memory allocation. A specially crafted input file could cause a
>> >> Denial of Service, or possibly write onto the stack.
>>
>> > This vulnerability is related to the missing "> 1024 * 1024" test 
>> in
>> > the parse_SST function.
>>
>> Use CVE-2015-2776.
>>
>>
>> >>> #2: A flaw was found in the function allocate_cells(). A 
>> specially
>> >>> crafted file with invalid workbook dimensions could possibly
>> >>> result in stack corruption near freexl.c:1074
>>
>> >> Does this refer to the missing "== NULL" tests within the
>> >> allocate_cells function?
>>
>> > Yes
>>
>> >> Is a NULL pointer dereference going to occur
>> >> before the code reaches a point where there can be stack
>> >> corruption?
>>
>> > I don't believe so. It looks like these are initialized as NULL, 
>> and
>> > if they are still NULL at this point in execution then we assume 
>> the
>> > input file was malformed and exit with the appropriate return 
>> code.
>>
>> In that case, we don't know what vulnerability you mean for #2.
>>
>> Between the unpatched code and the patched code, the only change in
>> the allocate_cells function is the addition of checks for whether
>> workbook or workbook->active_sheet is NULL. In the unpatched code, 
>> if
>> either of these were NULL, workbook->active_sheet->rows would result
>> in a NULL pointer dereference. As far as we know, this outcome is 
>> not
>> typically described as "stack corruption."
>>
>> If the design of the allocate_cells function was supposed to
>> anticipate that callers might provide a NULL value for workbook or
>> workbook->active_sheet, then the unpatched code had a vulnerability 
>> in
>> the allocate_cells function that might loosely be described as a 
>> "NULL
>> pointer dereference vulnerability."
>>
>> We think you may mean that, in some cases, stack corruption has
>> occurred because of invalid workbook dimensions before the
>> allocate_cells function is called. In some or all of these cases, a
>> side effect of the stack corruption is that either workbook or
>> workbook->active_sheet is NULL. The patched code, instead of
>> preventing the stack corruption (or detecting the stack corruption
>> before calling allocate_cells), chooses to use these "== NULL" tests
>> to infer that stack corruption has occurred. Is this correct?
>
> Hi,
>
> It seems like this still has no CVE, apparently because the exact
> details of this issue are unclear. I'll try to clear up the situation
> and will also provide details for another, new issue below.
>
> Further info for "issue #2":
> ============================
> The common_open() function initializes the workbook (at that point,
> most interesting members are NULL). A bit further down, it parses
> all the biff records via the loop around read_biff_next_record():
>>  while (1)
>>    {
>>	int ret = read_biff_next_record (workbook, swap, &errcode);
>>	if (ret == -1)
>>	    break;	/* EOF */
>>	if (ret == 0)
>>	    goto stop;
>>    }
>
>
> After parsing all the records, the workbook->first_sheet member
> points to something valid, but workbook->active_sheet does not,
> it's still NULL.
> common_open() has a check for first_sheet, but since the
> allocate_cells() function operates on the workbook->active_sheet
> member, so we ultimately get a NULL pointer dereference in
> allocate_cells(). I've not seen any indication of a stack
> corruption.
>
>>     p_sheet = workbook->first_sheet;
>>     while (p_sheet)
>>       {
>> 	  if (p_sheet->valid_dimension == 0)
>> 	    {
>> 		/* setting Sheet dimensions */
>> 		int ret;
>> 		p_sheet->rows += 1;
>> 		p_sheet->columns += 1;
>> 		ret = allocate_cells (workbook);
>
> Does that clear the situation up enough to assign a CVE to this?
>
> New issue: allocate_cells() integer overflow
> ============================================
>
> There's an integer overflow in the allocate_cells() function
> when trying to allocate the memory for worksheet with specially
> crafted row/column dimensions. This can be exploited to cause a
> heap memory corruption. The most likely outcome of this is a crash
> when trying to initialize the cells later in the function.
>> workbook->active_sheet->cell_values =
>> 	malloc (sizeof (biff_cell_value) *
>> 		(workbook->active_sheet->rows *
>> 		 workbook->active_sheet->columns));
>
> I've not assigned a CVE to this, so I'm hereby requesting one (mainly
> because this thread is a bit old and the problem is fairly close to 
> the
> patched code, so there may be a slim chance that somebody else 
> noticed
> this independently and requested a CVE for this in private).
>
> I've CCed the maintainer to this mail.
>
> Thanks and kind regards,
> - --
> Stefan Cornelius / Red Hat Product Security
> -----BEGIN PGP SIGNATURE-----
> Version: GnuPG v2
>
> iQEcBAEBCAAGBQJVml1KAAoJEETwiYCjVSmPiPAH/0LcBh/EBFJvZARebc5uyBNg
> azHfurdkGBSSOnkSbywePGdJ0hxttzaaLtmu5H/pnJTksW8LgeIC53/+/Bi83YNX
> hMvRiiVZBhl1qbnvU95BuykoLmaetCt0CkwcnfFm7Fqx5+r+leE/RXEGm4D6NyPR
> jfyEOT2/Y736OM/cASSaE8gw0ypWada44rRfLisvFk1afPp2RPY0rqUHpCXaD6Vk
> NR96Lli/XZS/g3p1wEQMsoA+DZbuu7IqFu89PZbEvrOOawEIZcn/bec83vRQVq+T
> wLYpxagvzkQ0FIPHLFuTSM+/OCwWGgzi4AGVimvt2O3oQqo6BMwN9avp4R9N9vo=
> =o+1a
> -----END PGP SIGNATURE-----

