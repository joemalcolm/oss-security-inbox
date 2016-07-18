X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3364" "Monday" "18" "July" "2016" "10:51:32" "+0530" "Huzaifa Sidhpurwala" "huzaifas@redhat.com" "<3e7ac139-077b-9d9e-7ad0-ed90083d8937@redhat.com>" "74" "Re: [oss-security] Re: CVE Requests: HarfBuzz - Chromium CVE issues" nil nil nil "7" "2016071805:21:32" "[oss-security] Re: CVE Requests: HarfBuzz - Chromium CVE issues" (number mark "U       huzaifas@red Jul 18   74/3364  " thread-indent "\"Re: [oss-security] Re: CVE Requests: HarfBuzz - Chromium CVE issues\"\n") "<20160717200008.8EDEC3AE001@smtpvbsrv1.mitre.org>" ("<20160717200008.8EDEC3AE001@smtpvbsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 29828 invoked by uid 550); 18 Jul 2016 05:21:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29810 invoked from network); 18 Jul 2016 05:21:47 -0000
To: cve-assign@mitre.org
References: <20160717200008.8EDEC3AE001@smtpvbsrv1.mitre.org>
Cc: oss-security@lists.openwall.com
From: Huzaifa Sidhpurwala <huzaifas@redhat.com>
Message-ID: <3e7ac139-077b-9d9e-7ad0-ed90083d8937@redhat.com>
Date: Mon, 18 Jul 2016 10:51:32 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.0
MIME-Version: 1.0
In-Reply-To: <20160717200008.8EDEC3AE001@smtpvbsrv1.mitre.org>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.26
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.31]); Mon, 18 Jul 2016 05:21:35 +0000 (UTC)
Subject: Re: [oss-security] Re: CVE Requests: HarfBuzz - Chromium CVE issues

On 07/18/2016 01:30 AM, cve-assign@mitre.org wrote:
>> atleast 3 issues in here which are CVE worthy
> 
>> 1. Heap based buffer overflow:
>> https://github.com/behdad/harfbuzz/issues/139#issuecomment-146984679
> 
>> 2. Fix hmtx wrong table length check:
>> https://github.com/behdad/harfbuzz/issues/139#issuecomment-148289957
> 
>> 3. heap-buffer-overflow in hb_ot_face_metrics_accelerator_t::get_advance
>> https://github.com/behdad/harfbuzz/issues/156
> 
> As far as we can tell, these correspond to:
> 
> 1 - https://github.com/behdad/harfbuzz/commit/f96664974774bfeb237a7274f512f64aaafb201e
>     fixed in 1.0.5
> 
> 2 - https://github.com/behdad/harfbuzz/commit/63ef0b41dc48d6112d1918c1b1de9de8ea90adb5
>     fixed in 1.0.6
> 
> 3 - https://github.com/behdad/harfbuzz/commit/df698f3299d92867e3305715f675b2621c316acd
>     the unpatched code is not in any release; the patched code is new in 1.1.0
> 
> df698f3299d92867e3305715f675b2621c316acd mentions "I rewrote the table
> checking yesterday ... and introduced the exact same issue again." Is
> there a particular motivation for having a CVE ID? We don't know of
> anyone who is shipping products based on unreleased HarfBuzz code
> obtained from GitHub, and the one-day existence of the problematic
> code also seems to suggest minimal real-world relevance. The HarfBuzz
> documentation doesn't specifically recommend that people ship
> unreleased HarfBuzz code. A CVE ID isn't, in general, required for
> each issue noted at any arbitrary point during development.
> 
> Would it be OK to keep CVE-2016-2052 for
> 63ef0b41dc48d6112d1918c1b1de9de8ea90adb5 (which is really a "before
> 1.0.6" issue as stated in that CVE), and assign one new ID for
> f96664974774bfeb237a7274f512f64aaafb201e (the "before 1.0.5" issue)?
> 
Sure, i dont mind as long as its communicated well etc!
>> how does
>> MITRE plan to handle vendors who assign one CVE to multiple non-related
>> issues?
> 
> Anyone is free to submit new CVE ID requests with sufficient
> information to show that additional IDs are required. Typically this
> means that the requester should, for example, track down all of the
> upstream version information.
> 
> In general, it is not realistic to expect that the "multiple
> non-related issues" case can be completely eliminated when CVE IDs
> are originally assigned. When product A repackages code from product
> B, there can be a disparity in whether the B maintainers are as
> interested in CVE as the A maintainers. Also, the A maintainers do not
> necessarily have any motivation for investigating the precise details
> of what was fixed in B, unless the A maintainers are backporting
> patches. For example, A might just be updating to the latest version
> of B, because the B Release Notes stated that it was a security
> update. Suppose that the A maintainers confirm that the B maintainers
> have not been, and will not be, using CVE IDs themselves. Would it be
> better for the A maintainers to use one CVE ID immediately, or should
> everyone wait (potentially forever) for someone to investigate the
> precise details?
> 

This means that, if you dont have motivation for investigating the
individual issues, it is ok to assign CVEs to multiple unrelated issues?

It so, that means everyone is free to do the above mentioned.




-- 
Huzaifa Sidhpurwala / Red Hat Product Security Team
