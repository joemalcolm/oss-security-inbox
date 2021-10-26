X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["11372" "Tuesday" "26" "October" "2021" "20:14:20" "+0800" "Lin Horse" "kylin.formalin@gmail.com" nil "225" "Re: [oss-security] CVE-2021-3760: Linux kernel: Use-After-Free vulnerability of ndev->rf_conn_info object" nil nil nil "10" nil nil (number mark "U       kylin.formal Oct 26  225/11372 " thread-indent "\"Re: [oss-security] CVE-2021-3760: Linux kernel: Use-After-Free vulnerability of ndev->rf_conn_info object\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] CVE-2021-3760: Linux kernel: Use-After-Free vulnerability of ndev->rf_conn_info object" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 8144 invoked by uid 550); 26 Oct 2021 12:18:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5691 invoked from network); 26 Oct 2021 12:14:43 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=N7JBYmnC3uvSXRSDxccUsbAuuxfWqfs4A6kfiMLf8ls=;
        b=cAFfnekKjRDBjQrsLlvpYUy+OLzmimrQFw9i00Omfz2pqChi72pdU2IAu2rrfswPmx
         kYrWDHn/5YQ1vQ3axst/dzCWLuI+9XYENDUhJ41eiNjOc6OsF7b4BIBe8JUWanCMEINq
         OJdCfpl1x037DuHAsa1fvD8UqKLd1xTN/4hXcdBXSlPyMCpYHc/y0AaniT6AZ2TR1b2b
         NFlKYWbMQ1/1laAxb6X20uC2xx/99I96qn8qG5+FX8lFaRTQKORG2CPtu7MrT/3celJs
         owYGlWxECNr8zn86Y5XYgousjO3wEVcGAjKykQRfZ5qUfSxWHRyL9JsFijbDNpfM4YHK
         fVYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=N7JBYmnC3uvSXRSDxccUsbAuuxfWqfs4A6kfiMLf8ls=;
        b=F+Xicgt8Jn014qMXm9kkQGXsPtafGq7aLOQ80xgrqu1uTC7TkMMHuqrAPoSyMxP2tP
         UbOe72BOGV05clJ88PTL+1iIy/bhO+9b4hhxrNahO5cKgxs1at2IH/1GJ178GBmNfEqz
         4LHPrEVeyG57djc+HwlKd212fbO+0r4396o0UI9BYF8GNb7UEXELED4OzXH3D4YenOA8
         SQO55p30xruxVOBJPuH4Yz6tHf6fHzvyQg7cQdgOsuivsX6b2ss/UIQYqxAPg2v0PYJ8
         rexuMLOt6GEqqhyhDdA31R5dAU8GqYe5JWtJI4cCQYV73E03AKg1hJdFIyPiGy5jnY17
         rVPA==
X-Gm-Message-State: AOAM532U9gKHBgYa5smJ7xfo3ggQc41KXXZ74HPwLPJzhROEoeFBxxdZ
	zDkFWcMe3pa/gJyGwdqnYpVtXcdIvn9oqj6C1FiFjw+lwCJdHw==
X-Google-Smtp-Source: ABdhPJyzjWAldoo4jgN3CxZWmUptddI+GkoidQEG09ZRDfTx5ncTR5xrfUbgmKnZY43dnFW3u2mPsPH49SelY36RdZI=
X-Received: by 2002:a25:509:: with SMTP id 9mr25502769ybf.332.1635250471830;
 Tue, 26 Oct 2021 05:14:31 -0700 (PDT)
MIME-Version: 1.0
References: <CAJjojJsrNyz+ML+Q81JB9iF2-DTKfAEkUP1cSTgyvCL6NebhzQ@mail.gmail.com>
 <20211026115947.GA29482@openwall.com>
In-Reply-To: <20211026115947.GA29482@openwall.com>
From: Lin Horse <kylin.formalin@gmail.com>
Date: Tue, 26 Oct 2021 20:14:20 +0800
Message-ID: <CAJjojJu4y96+mMEWQ_Qg1Bb+z=SP0FYqMBi24dBryr=7aQ9kWg@mail.gmail.com>
To: Solar Designer <solar@openwall.com>
Cc: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000007e077305cf406bac"
Subject: Re: [oss-security] CVE-2021-3760: Linux kernel: Use-After-Free
 vulnerability of ndev->rf_conn_info object

--0000000000007e077305cf406bac
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Alexander,

Thanks for the reply

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

Gotcha, I was always got confused about the embargo date and public
disclosure data/time. This suggestion is great.

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

I have no idea about that before today. This is quite sense-making as I was
once thought that I only need to send the original report and wait. Now I
understand what I should do to with both sides.

> Further, distros failed to handle the corresponding "contributing back"
> tasks.  There was no activity by Gentoo lately at all, and while there
> is recent helpful activity by Amazon, they didn't act this time.
>
> "Stay on top of issues to ensure progress is being made, remind others
> when there's no apparent progress, as well as when the public disclosure
> date for an issue is approaching and when it's finally reached (unless
> the reporter beats you to it by making their mandatory posting to
> oss-security first) - primary: Gentoo, backup: Amazon
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
>
> Incidentally, I've already unassigned the statistics task from Gentoo
> and Amazon a while ago, as that one was obviously not handled by them.
> We still need another distro or two to volunteer for this one.  As I had
> mentioned, an important desirable side-effect of keeping the statistics
> up-to-date is that this would catch issues that were not reported to
> oss-security in time or at all.  For example, if someone were updating
> statistics for September on October 15 (by which point nothing from
> September is supposed to still be embargoed), they'd catch this issue
> 10 days earlier.
>
> 3. The only "contributing back" activity on this issue consisted of 3
> postings to linux-distros: prompt CVE ID assignment by Red Hat, a
> reminder about 14 days having passed by SUSE on September 17 (that is,
> already 3 days past the embargo period end), and another reminder by (a
> different engineer from) SUSE on October 25 (this one worked).
>
> SUSE isn't formally tasked with this - Gentoo and Amazon are - but SUSE
> happened to do it - thanks!  SUSE is formally a backup for "Monitor
> relevant public channels ...", which I guess could have worked as well,
> but in this case the embargo period was already over by the time SUSE
> first commented, so that aspect was irrelevant by then.
>
> 4. There's still no (reference to) fix for this issue on oss-security.
> Lin, you write "2021-10-26 patch upstream" - can you please refer to the
> actual upstream commit?  Also, can you please let us all know when the
> patch became public (possibly first on a public mailing list)?

The commit for the fix is 1b1499a817c90fd1ce9453a2c98d2a01cca0e775 (link:
https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/commit/?id=
=3D1b1499a817c90fd1ce9453a2c98d2a01cca0e775
)

> This issue itself is not that important, which is part of why it almost
> slipped through the cracks, but it's our reminder and opportunity to fix
> things before anything more important is mishandled.

> Alexander


> P.S. The Subject of this message as sent by Lin to oss-security
> contained only the CVE ID and no description.  I took the liberty to
> edit it, adding the Subject string that was used on linux-distros,
> before approving the message as list moderator.

Thanks about that >.<
And thanks for all the replies again, I will summarize these and try to
make the people around me clear about that.

Best wishes
Lin

Solar Designer <solar@openwall.com> =E4=BA=8E2021=E5=B9=B410=E6=9C=8826=E6=
=97=A5=E5=91=A8=E4=BA=8C =E4=B8=8B=E5=8D=888:00=E5=86=99=E9=81=93=EF=BC=9A

> On Tue, Oct 26, 2021 at 02:37:20PM +0800, Lin Horse wrote:
> > 2021-09-01 Report to security and linux-distro
> > 2021-09-01 CVE-2021-3760 assigned
> > 2021-10-26 patch upstream
> >
> > Sorry for the delay of this report T.T
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
>
> Incidentally, I've already unassigned the statistics task from Gentoo
> and Amazon a while ago, as that one was obviously not handled by them.
> We still need another distro or two to volunteer for this one.  As I had
> mentioned, an important desirable side-effect of keeping the statistics
> up-to-date is that this would catch issues that were not reported to
> oss-security in time or at all.  For example, if someone were updating
> statistics for September on October 15 (by which point nothing from
> September is supposed to still be embargoed), they'd catch this issue
> 10 days earlier.
>
> 3. The only "contributing back" activity on this issue consisted of 3
> postings to linux-distros: prompt CVE ID assignment by Red Hat, a
> reminder about 14 days having passed by SUSE on September 17 (that is,
> already 3 days past the embargo period end), and another reminder by (a
> different engineer from) SUSE on October 25 (this one worked).
>
> SUSE isn't formally tasked with this - Gentoo and Amazon are - but SUSE
> happened to do it - thanks!  SUSE is formally a backup for "Monitor
> relevant public channels ...", which I guess could have worked as well,
> but in this case the embargo period was already over by the time SUSE
> first commented, so that aspect was irrelevant by then.
>
> 4. There's still no (reference to) fix for this issue on oss-security.
> Lin, you write "2021-10-26 patch upstream" - can you please refer to the
> actual upstream commit?  Also, can you please let us all know when the
> patch became public (possibly first on a public mailing list)?
>
> This issue itself is not that important, which is part of why it almost
> slipped through the cracks, but it's our reminder and opportunity to fix
> things before anything more important is mishandled.
>
> Alexander
>
> P.S. The Subject of this message as sent by Lin to oss-security
> contained only the CVE ID and no description.  I took the liberty to
> edit it, adding the Subject string that was used on linux-distros,
> before approving the message as list moderator.
>

--0000000000007e077305cf406bac--
