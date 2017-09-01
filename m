X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["7979" "Friday" "1" "September" "2017" "13:59:45" "+0200" "Andrey Konovalov" "andreyknvl@gmail.com" "<CA+fCnZcAvzAidy7xjoU9JK2aY1roVqT6+GQwueG6f09EEC41jw@mail.gmail.com>" "174" "Re: [oss-security] Reporting and disclosing Linux kernel vulnerabilities" nil nil nil "9" "2017090111:59:45" "[oss-security] Reporting and disclosing Linux kernel vulnerabilities" (number mark "U       andreyknvl@g Sep  1  174/7979  " thread-indent "\"Re: [oss-security] Reporting and disclosing Linux kernel vulnerabilities\"\n") "<20170804180037.GB18494@kroah.com>" ("<CA+fCnZe3QtwBGRTsL=p9ju-NUkXeQp_1osz0mmZtKFaKUBvY_A@mail.gmail.com>" "<20170804173658.GA31208@openwall.com>" "<20170804180037.GB18494@kroah.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11467 invoked by uid 550); 1 Sep 2017 11:59:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11415 invoked from network); 1 Sep 2017 11:59:57 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=5lFaCiu9BSa6N17al98rZYwjMUIUp5xNyHSHVTmH3tw=;
        b=oyYF5jm5gdsltmqMhP4KZDg9h52l7vXsdkneqQzG4rHdx7sH0uZYjhZcBmLKq1UExo
         j152vnQTnmZfBp/9f3MyZxewJtbTuHmkxIFAto3NQ+VvZZdbWEEEaKrfIsMTt+ERRwaV
         YoZpWdhLY9QyNEP9VMlMf7JuULXeXBHGNaNf5GLKJnVzjk5ywT6mI4Tw2vGQjggnvQ8Y
         MQu5cPNaZ9PW1MaBrkqjFC4X++04wHQ6IXR9SNJO3Q6rvbcKbJDUzdNfQVoLbe2HfzBB
         M0DjOjM2zvgEK4N5/slSP4L0kXlUcz/xSOD/7ilaUHjpEYma55B/lH5JF1j6ot2Xnfjk
         Y9/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=5lFaCiu9BSa6N17al98rZYwjMUIUp5xNyHSHVTmH3tw=;
        b=BbLhswa8k57scrs6TaW1miJjOTh9d9IPouCg9kvk3XUwW7RYQJRGYfBYIw3Y8g6b42
         46/iht5rFz1+9DeErRNus7RBw5y0VCLmPoksBWRrBMxEWqU1g0cKdZS9RE6bqZDAMdZd
         z5neo/Dwv0VGPxj7z1quKsznQb9PaaSov5UTONdesqGcTniFx0eoEHLUQTAKE6ynntwG
         0tDx+Cwuo8EX5h4ciedop8e7Q4riADeuUSNev0Yl/n6wMIsX8y6ZUdnxER0fqrsJySEC
         eFSVid4cMJP1qqGhjyWdYp+hQxqAfHO8QzJpFHRqFOZXPpim9zkPYGOzCJJqKZS7hVBc
         qyog==
X-Gm-Message-State: AHPjjUh69iYdacIaIY8cmVlx95LzIfrH5G+I7uyjZwtrO056fNGvtgRY
	AcfdZFq/VYqfjwwsSHl01Uixo/v0tA==
X-Google-Smtp-Source: ADKCNb6F8rD82xIJy1/Uhy50vPN/lzDwrC/SaRBw8t5DBoQcOrQgpjq6/2SMdio9lFEfa3cumxSdlo7kwg6KcwxUZ3E=
X-Received: by 10.80.208.10 with SMTP id j10mr1518927edf.111.1504267186367;
 Fri, 01 Sep 2017 04:59:46 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20170804180037.GB18494@kroah.com>
References: <CA+fCnZe3QtwBGRTsL=p9ju-NUkXeQp_1osz0mmZtKFaKUBvY_A@mail.gmail.com>
 <20170804173658.GA31208@openwall.com> <20170804180037.GB18494@kroah.com>
From: Andrey Konovalov <andreyknvl@gmail.com>
Date: Fri, 1 Sep 2017 13:59:45 +0200
Message-ID: <CA+fCnZcAvzAidy7xjoU9JK2aY1roVqT6+GQwueG6f09EEC41jw@mail.gmail.com>
To: Greg KH <greg@kroah.com>, Kurt Seifried <kseifried@redhat.com>, 
	Solar Designer <solar@openwall.com>
Cc: oss-security@lists.openwall.com, willemdebruijn.kernel@gmail.com, 
	Dmitry Vyukov <dvyukov@google.com>, Kostya Serebryany <kcc@google.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] Reporting and disclosing Linux kernel vulnerabilities

Sorry for the delay, I was away for the last few weeks.

On Fri, Aug 4, 2017 at 7:07 PM, Kurt Seifried <kseifried@redhat.com> wrote:
> I would strongly suggest that people notify distros@ (keeping in mind it
> has a 2 week embargo limit, so if you need more than that, don't notify
> distros@ until you are ready) and notify the Kernel (we want this fixed
> upstream too,obviously, but also keeping in mind that they have a 1 week
> embargo limit, so if you need more than that, don't notify the Kernel until
> you are ready). Another option it to notify a vendor such as Red Hat (
> secalert@redhat.com) or SUSE (security@suse.com) as we can handle things in
> house (we have kernel devs/etc) and we know whom to notify at other vendors
> as needed (e.g. Debian, Ubuntu, etc.) and can hold embargoes as needed
> (although typically we don't like long embargoes either, I would say 4-5
> weeks absolute max ideally).
>
> Another benefit of notifying the vendors/distros is we can help with the
> coordination and notification, CVEs, etc. Kernel upstream basically just
> fixes it and moves on (which is legitimate, it's not their job to make sure
> every possible downstream gets notified*)
>
> [*] although it would be nice if this stuff gets a CVE and the CVE gets
> used, then people know to pay attention to those commits/etc.

Thanks! I've added a paragraph about reporting the bug to these mailing lists.

On Fri, Aug 4, 2017 at 7:36 PM, Solar Designer <solar@openwall.com> wrote:
> Thank you!  I'm afraid the reality is that preferences vary, including
> even between different upstream developers.  That said, we should in
> fact probably try to come up with guidelines similar to what you made a
> start at.
>
> Here are some assorted comments from me:
>
> Please inform oss-security as soon as the issue is made public,
> anywhere.  There's no need to wait for a CVE, patch, nor anything to do
> that.  If the issue is public, it must be on oss-security right away.
> You should add CVE, patch, etc. by "replying" to your own message later.
> This especially makes a difference in your "Reporting minor security
> bugs", where making the issue public is currently listed as step 1, and
> posting it to oss-security as step 3, with a potentially time-consuming
> step 2 inbetween (waiting for a CVE).  Both must be part of step 1, or
> for clarity they may be steps 1 and 2 if there's expected to be no delay
> between them.

Added a note on this.

>
> In "Reporting major security bugs", you could make it clearer that
> there's no or little delay between notification to security@k.o and to
> linux-distros.  As currently written, it is unclear whether you
> recommend to wait for security@k.o to come up with a patch before
> informing linux-distros.

Added a note on this.

>
> I hear that for netdev bugs, security@k.o is likely to ask you to post
> such bugs to the public netdev list right away, without any embargo.
> You could want to see whether this is in fact the case, and adjust your
> instructions if so.

See Greg's reply below.

>
> I don't know whether the CNAs on linux-distros have control to "make the
> CVE description public" as you suggest as one of the steps.  This is a
> question to them - can they?  I assume this means the description isn't
> available to MITRE nor anyone outside of linux-distros (and the distros'
> people with need-to-know) before that step.

I assumed they assign CVEs from their own pool and then can make it
public on request. I'm not sure whether they share it with MITRE and
ask to keep it private or not share it at all. Perhaps someone else
can clarify this.

FYI, The last CVE I requested from linux-distros (CVE-2017-1000112)
can't be found in MITRE database:
https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-1000112

>
> Just like in "Reporting minor security bugs", there should be almost no
> delays between the different public disclosure steps - CVE description,
> distros' updates, upstream commit, notification to oss-security.  All of
> these should be on the same day, at worst.  Perhaps clarify this.

Added a note on this.

>
> When you refer to linux-distros, please ask people to carefully read the
> distros list wiki page before sending anything to the list.  They must
> be aware of list policy, and they must learn of the magic string to
> include in the Subject from there (do not list this magic string in your
> own instructions, though - just like you correctly don't do it now).

Added a note to read all of the lists guidelines carefully before
reporting anything.

>
> The "good example" of oss-security posting that you refer to does in
> fact demonstrate a good oss-security posting, but it also demonstrates
> problematic handling of the issue before that point.  Here's the
> timeline found in that message:
>
> 2016-11-28: Bug reported to security () kernel org
> 2016-11-30: Patch submitted to netdev, notification sent to linux-distros
> 2016-12-02: Patch committed to mainline kernel
> 2016-12-06: Public announcement
>
> "2016-11-30: Patch submitted to netdev" essentially means making the
> issue public.  (I guess this is an instance of what I had meant above
> regarding netdev issues being forced to the public from security@k.o.)
> After that time, there was no point in "notification sent to
> linux-distros" (which is for private issues only), and instead
> "2016-12-06: Public announcement" should have occurred on oss-security
> right away on 2016-11-30 (all linux-distros members are supposed to
> monitor oss-security).  Keeping the issue "semi-"public like that is
> generally wrong.
>
> (I don't recall the details of why we let it happen the way it did for
> that one issue last year.  My comments above are in general.)

Added a note on this.

>
> That's it for now.  I'm sorry for not having a set of clear and simple
> edits to your current proposal, but I do hope this thread will result in
> a better "publicly available actionable list of steps", as you suggest.
> Thank you for working on it!
>
>> [1] https://www.kernel.org/doc/html/latest/admin-guide/security-bugs.html
>>
>> [2] http://oss-security.openwall.org/wiki/mailing-lists/distros
>>
>> [3] http://oss-security.openwall.org/wiki/mailing-lists/oss-security
>
> Alexander

On Fri, Aug 4, 2017 at 7:51 PM, Greg KH <greg@kroah.com> wrote:
>     If you just want the bug fixed so you can get on with whatever else
>     you were doing, just notify security@kernel.org, the bug will get
>     fixed and pushed out to all kernel.org trees as soon as possible.
>
>     If you think it affects users of the "traditional" Linux distros,
>     then contact distros and hope someone contacts security@k.o later to
>     get the issue resolved for everyone else.
>
>     If it affects only an odd one-off or embedded device that will never
>     get updated, again, security@k.o and oss-security to get some public
>     leverage to try to get the vendor to fix the issue.
>
>     If you don't really care what happens to anyone, oss-security works :)

Thanks! I added a paragraph for those who just want to report the bug
and forget about it.

On Fri, Aug 4, 2017 at 8:00 PM, Greg KH <greg@kroah.com> wrote:
> On Fri, Aug 04, 2017 at 07:36:58PM +0200, Solar Designer wrote:
>> I hear that for netdev bugs, security@k.o is likely to ask you to post
>> such bugs to the public netdev list right away, without any embargo.
>> You could want to see whether this is in fact the case, and adjust your
>> instructions if so.
>
> Yes, that is the case, and has happened in the past, but now
> security@k.o has a few network developers on it to help out before it
> hits the public list, if necessary.

So at this point it's OK to report network bugs to security@k.o and
ask for embargo? It would be nice to not having to handle network bugs
in some special way.

I've updated the document, more comments are welcome:
https://github.com/google/syzkaller/blob/master/docs/linux_kernel_reporting_bugs.md

Thanks!
