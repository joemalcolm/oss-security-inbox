X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1649" "Wednesday" "5" "October" "2016" "13:06:03" "+0200" "Raphael Geissert" "geissert@debian.org" "<CAA7hUgHwN_AymJRzV8SRiAB0F6hyxxwx+O3X8j7+LKWOvypJiQ@mail.gmail.com>" "45" "Re: [oss-security] openjpeg CVE-2016-3181, CVE-2016-3182 .. and CVE-2013-6045" "^Date:" nil nil "10" "2016100511:06:03" "[oss-security] openjpeg CVE-2016-3181, CVE-2016-3182 .. and CVE-2013-6045" (number mark "U       geissert@deb Oct  5   45/1649  " thread-indent "\"Re: [oss-security] openjpeg CVE-2016-3181, CVE-2016-3182 .. and CVE-2013-6045\"\n") "<20160927012359.GA30247@sin.redhat.com>" ("<20160927012359.GA30247@sin.redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19911 invoked by uid 550); 5 Oct 2016 12:16:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21983 invoked from network); 5 Oct 2016 11:06:35 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:sender:in-reply-to:references:from:date:message-id
         :subject:to;
        bh=wpconFnXIvDMrC8cuM+jEkYQsml/fDqnay/F3UO1Qg4=;
        b=LAYHnOOcY+xFjIoQeUSxts2nqH+PMc7piKbazdb4NTEEi+oRHCY+9Gih8MSOtYmCIX
         CWp+30fTVYbSUiOkp+gY/bzeKfgFYciWazn8uXR2Sy7C54zSi6RZX5JR+WLQPbZYFxkB
         WWKPCoaFNGsI/0k0sEpGAb+RdkC9qNftoIz+4ICOABpyMLTq/UM2Pye7Luv8TSc6y9gn
         K2EzFVMQIXvYRldBwuuVqTTVOYNoG6JPmfBKF6gkq/EHin8gUCh7aKh1XEkbpAEXabzd
         2WzBIfM+3ZAs2yWl3AHng5RrQRw19gZDm+9NSn1+1KjrfsTkTiLgxuMwZmeiNQzRXAs/
         ymxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:sender:in-reply-to:references:from
         :date:message-id:subject:to;
        bh=wpconFnXIvDMrC8cuM+jEkYQsml/fDqnay/F3UO1Qg4=;
        b=kBS75CKK1Ibp3MhDuin3VaXjX9OxTgeY3i0a9Irhn8i1U9EXW0w+vbdaRvhEbbEl4s
         oEm1qkDV+DN4IIp5idxFEqAWQzjLQosnagvpxfUbU6w1AayU4KucAjeP+NaiLztWjJXc
         fn2jkPyx8IXz2Qi0eEQb+CVp1L/tJdaGgBC1eWHeg7G9sWS4KWqaSbmMAf5tPtAyiUuh
         9s94OEyWM3/8ijufi4vPoBL0Hlt25jhqeBT9EohUiBS4lSZ3rnCoPIK3Mq4Uxlkb3C5X
         32cdavwIXwPY8CHdBxzPwOToin8K2j5u5WcfccmK/qGyeXqeXkiLrVCRpQv5nrKGbXPR
         8aRQ==
X-Gm-Message-State: AA6/9RnmoPVwywkzJgrE9CTn+MMHKrkgTyd1l4Lh+crDtteqzmCZyPMpnMbOFsBSWlAjoFhF0l0Zv9v1t5RQ3A==
X-Received: by 10.194.101.131 with SMTP id fg3mr7036568wjb.33.1475665583753;
 Wed, 05 Oct 2016 04:06:23 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20160927012359.GA30247@sin.redhat.com>
References: <20160927012359.GA30247@sin.redhat.com>
X-Google-Sender-Auth: N5p2ekDzU2KY7IEpwpnxo0SOF6g
Message-ID: <CAA7hUgHwN_AymJRzV8SRiAB0F6hyxxwx+O3X8j7+LKWOvypJiQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Date: Wed, 5 Oct 2016 13:06:03 +0200
From: Raphael Geissert <geissert@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: atomo64@gmail.com
Subject: Re: [oss-security] openjpeg CVE-2016-3181, CVE-2016-3182 .. and CVE-2013-6045
To: Open Source Security <oss-security@lists.openwall.com>

Hi,

On 27 September 2016 at 03:24, Doran Moppert <dmoppert@redhat.com> wrote:
> First, CVE-2016-3181 and CVE-2016-3182 have been identified by upstream as the
> same underlying issue.
>
> https://github.com/uclouvain/openjpeg/issues/724
>
>> Origin of the issue is the same as #725
>
> https://github.com/uclouvain/openjpeg/issues/725
[...]
> .. it gets more interesting.  The reproducer on issue 725 happens to tickle
> a flaw in a patch for CVE-2013-6045 that was posted here back when:
>
> http://seclists.org/oss-sec/2013/q4/412
>
> segfault-1.patch uses:
>
> +               tilec->data = (int*) opj_aligned_malloc((comp0size+3) * sizeof(int));
>
> which should have used compcsize instead of comp0size.

Yes, indeed. This patch also introduced a regression in the processing
of some images.
Cf. https://bugs.debian.org/734238

> This hasn't been an issue in upstream openjpeg releases for a long time ...
> but there are LTS distributions around still shipping 1.5.1 (or 1.3) with the
> patches from here applied.  Those should preferably upgrade to 1.5.2:  changing
> comp0size to compcsize eliminates this particular crash, but the upstream fixes
> that got into 1.5.2 seem to more thoroughly address some of the underlying
> problems.

Do you specifically know of a distribution that still has that patch?
If I remember the context correctly, the use of comp0size could then
lead to a heap buffer overflow later on. Was that what you noticed?

In any case, the patch should indeed better be replaced by the one
provided upstream (cf. the Debian bug report).

Cheers,
-- 
Raphael Geissert - Debian Developer
www.debian.org - get.debian.net
