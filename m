X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3663" "Tuesday" "26" "October" "2021" "08:59:53" "-0700" "Anthony Liguori" "aliguori@amazon.com" nil "78" "RE: [oss-security] CVE-2021-3760: Linux kernel: Use-After-Free vulnerability of ndev->rf_conn_info object" nil nil nil "10" nil nil (number mark "U       aliguori@ama Oct 26   78/3663  " thread-indent "\"RE: [oss-security] CVE-2021-3760: Linux kernel: Use-After-Free vulnerability of ndev->rf_conn_info object\"\n") nil nil nil nil nil nil nil nil nil "RE: [oss-security] CVE-2021-3760: Linux kernel: Use-After-Free vulnerability of ndev->rf_conn_info object" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7749 invoked by uid 550); 26 Oct 2021 16:16:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28305 invoked from network); 26 Oct 2021 16:00:08 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
  t=1635264008; x=1666800008;
  h=from:to:cc:in-reply-to:references:date:message-id:
   mime-version:subject;
  bh=tRhupi8pzzS5XQO1ii3AEUEGx8A9aLs/ZHd4ehPHwcA=;
  b=WVFmsUMp5mYikA1swQKo6/9fd1vPEFauB/Pa4if3wJlkWpkUWd7jJOv4
   /tey3dL7EYCbcuwnWlaXpP3pqWNsDy8JWqqKUVoHoaGIMyzpV+84ntTZn
   3GgbaaHGIKB7hRnuqSbZLNph/EZ5HXifKksFlPAdoXHzKUFiH/TG0OjrY
   I=;
X-IronPort-AV: E=Sophos;i="5.87,184,1631577600"; 
   d="scan'208";a="169760037"
From: Anthony Liguori <aliguori@amazon.com>
To: Solar Designer <solar@openwall.com>, <oss-security@lists.openwall.com>
CC: Lin Horse <kylin.formalin@gmail.com>
In-Reply-To: <20211026115947.GA29482@openwall.com>
References: <CAJjojJsrNyz+ML+Q81JB9iF2-DTKfAEkUP1cSTgyvCL6NebhzQ@mail.gmail.com>
 <20211026115947.GA29482@openwall.com>
Date: Tue, 26 Oct 2021 08:59:53 -0700
Message-ID: <pwfk72ee87ixom.fsf@ua5189936247a55.ant.amazon.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: RE: [oss-security] CVE-2021-3760: Linux kernel: Use-After-Free vulnerability
 of ndev->rf_conn_info object

Solar Designer <solar@openwall.com> writes:

> CAUTION: This email originated from outside of the organization. Do not click links or open attachments unless you can confirm the sender and know the content is safe.
>
>
>
> On Tue, Oct 26, 2021 at 02:37:20PM +0800, Lin Horse wrote:
>> 2021-09-01 Report to security and linux-distro
>> 2021-09-01 CVE-2021-3760 assigned
>> 2021-10-26 patch upstream
>>
>> Sorry for the delay of this report T.T
>
> Ouch.  Let's use this opportunity to learn from the mishandling of this
> issue and avoid that for other issues.  Many things went wrong here:
>
> 1. The original notification by Lin to linux-distros did include "I'd
> like to ask for 14 days of the embargo", which is OK'ish, but ideally
> such messages should include the proposed public disclosure date/time -
> and that's what the instructions ask for.  When it's just "N days", I
> guess people think "that's OK'ish" and move on.  When it's a specific
> date/time, it's easier for everyone to notice it approaching - not only
> for people specifically tasked with that.  That's just a psychological
> detail that I guess nevertheless statistically affects the outcomes.
>
> So I think that the distros tasked with reviewing initial notifications
> should insist on the actual date/time being present in there, or add it
> on their own in an immediate follow-up.  Those distros currently are
> Oracle and Wind River.  I'd appreciate them confirming that they accept
> this clarification.
>
> "Promptly review new issue reports for meeting the list's requirements
> and confirm receipt of the report and, when necessary, inform the
> reporter of any issues with their report (e.g., obviously not actionable
> by the distros) and request and/or propose any required yet missing
> information (most notably, a tentative public disclosure date/time) -
> primary: Oracle, backup: Wind River"
>
> 2. While Lin's original message to linux-distros included a "SUGGESTED
> FIX" section (with a patch in it) and "I will do my best to work with
> the developer on fixing this", no further messages on a fix were sent to
> linux-distros.  Lin, if you did in fact work with upstream on this, you
> should have kept linux-distros aware of the progress, and especially of
> the fix getting to public Linux kernel mailing lists or public commits,
> as that ends the embargo.
>
> Further, distros failed to handle the corresponding "contributing back"
> tasks.  There was no activity by Gentoo lately at all, and while there
> is recent helpful activity by Amazon, they didn't act this time.
>
> "Stay on top of issues to ensure progress is being made, remind others
> when there's no apparent progress, as well as when the public disclosure
> date for an issue is approaching and when it's finally reached (unless
> the reporter beats you to it by making their mandatory posting to
> oss-security first) - primary: Gentoo, backup: Amazon

Yes, we totally missed this.

>
> Monitor relevant public channels (mailing lists, code repositories,
> etc.) and inform the reporter and the list in case an issue is made
> public prematurely (that is, leaks or is independently rediscovered) -
> primary: Amazon, backup: SUSE
>
> Make sure the mandatory oss-security posting is made promptly and is
> sufficiently detailed, and remind the reporter if not - primary: Gentoo,
> backup: Amazon"
>
> I'd like replies by Gentoo and Amazon on this, please.  They should
> either state that they'd be handling these tasks from this point on, or
> we should reassign the tasks.

This is one I think we've been able to handle previously and would like
to keep handling.

Regards,

Anthony Liguori
