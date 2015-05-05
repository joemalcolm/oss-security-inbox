X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1555" "Tuesday" "5" "May" "2015" "12:56:21" "-0700" "Tavis Ormandy" "taviso@google.com" "<CAJ_zFkLJRuTJW2tCR5Cd79DiDER12c=isxYJ95PTA84vG3tceg@mail.gmail.com>" "40" "Re: [oss-security] Problems in automatic crash analysis frameworks" nil nil nil "5" "2015050519:56:21" "[oss-security] Problems in automatic crash analysis frameworks" (number mark "        taviso@googl May  5   40/1555  " thread-indent "\"Re: [oss-security] Problems in automatic crash analysis frameworks\"\n") "<55491BFB.5000009@redhat.com>" ("<CAJ_zFkJw7hNxGp0PNmQbH0suVwfkgzbCsvs2Sv1OdxD+UBiraw@mail.gmail.com>" "<55315C2B.6050207@redhat.com>" "<553943C3.5060704@redhat.com>" "<5548B4DC.4080305@redhat.com>" "<CAJ_zFkJ+o3cYy+BTcetvJ+HCP-DXChWS04MXejbXZ=qLWLXdHw@mail.gmail.com>" "<55491BFB.5000009@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5572 invoked by uid 550); 5 May 2015 19:56:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5554 invoked from network); 5 May 2015 19:56:53 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :content-type;
        bh=C7U+CjqL03OruclRJr6Hy5NlcHlVqJWfiZFv3Smktlc=;
        b=FYBjcNBu3v1p0Xqcn6wutjRwfmx7Vn7N84RPwwkLIGeJYCxKlm8mrMpv2QYk5aRhek
         +E70UIfHZ3iwIeK+2SCXr74lpRmzd3TDZN5C9bwAeBpsrHdU76UAYdRcRvohZ2l2yd8D
         KfHAf9D6uNGMC1kvmDDmvMFdXBeJYZQTJPEywoQOPPI+mQYK5NFaxDEO3NmIYxZW2wQ4
         38gNB7dIO4FdjwATxHfzqeICN5fNh5KMZxTATkMzfnGuBXD9jiIrjyK22kfm1woQDlRP
         QVqSFYbyr4Fmr6v0TwhGb701Kt2Q5LKBQToWEdlrTBRBNh7gV74yL7R6p4C6feaexnQF
         ElEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:content-type;
        bh=C7U+CjqL03OruclRJr6Hy5NlcHlVqJWfiZFv3Smktlc=;
        b=NFJeiJbHrn1xmh+CexTphrszL2DGbupWi8XMyCCvUKZDYEbpvHpjummM+US2UNOblO
         4OrkLKQgny4HPcqGCacKJqS2u2bncteEm6bNaGsHHFyy/ZMw+/VCuEjuDcy+qFZo/z0L
         kjF26B/3isyFkpUNflE+F32ZTjwqLv6EN9XtYgLD2OrxJAjaJ0/ca2yS6N8oVRzlwV7F
         N0Yx9yNJxA5MmQ9aBOl7CyoptqyHC3g1SJkagjFB38uXp6W3nvpJ53lO9ACbwEfscjzL
         6mBiNlgVYu4ZHbpom6KSXeUsZMQtt89CbsyYHK1dxjUw9N/oqiOrntlxM9vGzZxT8K7w
         cDcA==
X-Gm-Message-State: ALoCoQlfJlegyy1lgmTP5UjVjkRy3V3/wDrlQkcuzoxaiiGqbZvxda5vuh/apz9HLfhXVa5cR/cv
X-Received: by 10.141.19.7 with SMTP id v7mr38513057qhd.94.1430855801707; Tue,
 05 May 2015 12:56:41 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <55491BFB.5000009@redhat.com>
References: <CAJ_zFkJw7hNxGp0PNmQbH0suVwfkgzbCsvs2Sv1OdxD+UBiraw@mail.gmail.com>
 <55315C2B.6050207@redhat.com> <553943C3.5060704@redhat.com>
 <5548B4DC.4080305@redhat.com> <CAJ_zFkJ+o3cYy+BTcetvJ+HCP-DXChWS04MXejbXZ=qLWLXdHw@mail.gmail.com>
 <55491BFB.5000009@redhat.com>
Message-ID: <CAJ_zFkLJRuTJW2tCR5Cd79DiDER12c=isxYJ95PTA84vG3tceg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Date: Tue, 5 May 2015 12:56:21 -0700
From: Tavis Ormandy <taviso@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Problems in automatic crash analysis frameworks
To: oss-security@lists.openwall.com

On Tue, May 5, 2015 at 12:37 PM, Florian Weimer <fweimer@redhat.com> wrote:
> On 05/05/2015 09:01 PM, Tavis Ormandy wrote:
>> On Tue, May 5, 2015 at 5:17 AM, Florian Weimer <fweimer@redhat.com> wrote:
>>> On 04/23/2015 09:10 PM, Florian Weimer wrote:
>>>> On 04/17/2015 09:16 PM, Florian Weimer wrote:
>>>>> A quick update on the abrt situation.
>>>>
>>>> Another update.  We now have a public tracking bug listing the issues:
>>>>
>>>>   <https://bugzilla.redhat.com/show_bug.cgi?id=1214172>
>>>
>>>
>>> There is a public build (against EPEL7) of the consolidated fixes,
>>> available as a Copr repository:
>>>
>>>   <http://copr.fedoraproject.org/coprs/jfilak/abrt-hardened/>
>>>
>>> This also includes the consolidated fixes.
>>>
>>> At this stage, we'd appreciate additional comments/reviews.
>>
>> Thanks Florian, this looks great. I'm just looking at the new ccpp, Is
>> it intentional that os-release and so on are still copied from the
>> process root?
>
> Thanks for taking a look.  Have you downloaded the Copr builds?
>
> In 0092-ccpp-do-not-read-data-from-root-directories.patch for abrt, the
> root directory argument for dd_create_basic_files is changed to NULL,
> which means that the copying inside dd_create_basic_files will not
> happen (although the code is still around).  As far as I can tell, this
> patch is also applied in the build.  Is there some other copying
> operation I'm missing?

No, you're correct, I was just reading the code and didn't see rootdir
was always NULL, oops.

I'll take a look at the other changes.

Tavis.
