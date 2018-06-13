X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["697" "Wednesday" "13" "June" "2018" "23:07:18" "+0400" "Loganaden Velvindron" "loganaden@gmail.com" "<CAOp4FwSb4wWUGL57msLTj1yNjzCtQP3zqKfLba8RME0L+4VWkg@mail.gmail.com>" "22" "[oss-security] Re: Intel FP security issue" "^Cc:" nil nil "6" "2018061319:07:18" "[oss-security] Re: Intel FP security issue" (number mark "        loganaden@gm Jun 13   22/697   " thread-indent "\"[oss-security] Re: Intel FP security issue\"\n") "<CAOp4FwSfmC=vLLSTxZYFbAbkh_j3eJJGqvwTg5R_bgzh9vyuEA@mail.gmail.com>" ("<CAOp4FwSfmC=vLLSTxZYFbAbkh_j3eJJGqvwTg5R_bgzh9vyuEA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15558 invoked by uid 550); 13 Jun 2018 19:10:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11382 invoked from network); 13 Jun 2018 19:07:31 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=7NUKPCc1AzYNtiyo7Sh23RBX31HT9kBxF0czfS6QPzY=;
        b=BJFYKKjob+mgY61jm0IkKEVSwczAIbUwYay5uWMfHx12AycX+qcswBuLisua7/E4i8
         VPfsBpuLpgBrt4bpAz2VIZiEWW34Wb/s1wBx8M8o+bhxPkBJft50ovxR9Nr//46iTMvR
         lCAn8B9OFDe1Z10zHABsNrndAuPd0nrgKlb65KutCFaFJP3pzN0DZXgspuAkRWuGVsGR
         fmcnuxxh8VDWC2MwVSxQoLDlqsViL3xapNHGclX29bE6TF6HUfjsNHwxqe5vObxqa8jd
         Legdj82fzyfQMmvuNC+THDPyeMs7A5infwBSamtISkN3fVEbJNdwArwG8confH5oPh5P
         sV+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=7NUKPCc1AzYNtiyo7Sh23RBX31HT9kBxF0czfS6QPzY=;
        b=ONeKQqjsXMhy1V3g449sG2k0UuXtaaOaKaqn0zFNtUxbpYmcs6lWGck/iSJZqz/WND
         5izPylYJhL4NbscGOGUdlSD2IXj8yOff2fL5CMJXdrdOpmFKYxhoPD6g+mQjunStP9JA
         dZHnOGM4v+7MDl5QmbWGn7juejmsLsqpLzUXM1cwBINrnqtfONk8ByxFLI5DbKSi/6Ye
         ADpaKiS/0t/47EZLghL7V82Zal1HK3tWzuC7SToKp2Dj2SF+rWx9n4mrefdFAQm2VKKd
         EMEB5APW05Ov/vbwBG9M8IRPMctKpYQqAXf/0UtKQTWwhu5ux1UvHb647bTxRl3hzPKM
         Cefg==
X-Gm-Message-State: APt69E1uG6kbfNQhz3U3MK9fhr6asy9Ix3sxhYzk8q0fN8r3HSMItKsk
	C6wyqAPE+LvZHA8Zte5isyr+4zh1QhBO4WaPOSUZcBGc
X-Google-Smtp-Source: ADUXVKIQkWuSG+SqheMlwes5C5kQ2jreq2mRjBIHu8U3WfhDWt/x6r/FqyD+L78rSjTdvU0oBwWtKeAtkGaKuXH2S0E=
X-Received: by 2002:a24:2bc1:: with SMTP id h184-v6mr5780455ita.84.1528916839079;
 Wed, 13 Jun 2018 12:07:19 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAOp4FwSfmC=vLLSTxZYFbAbkh_j3eJJGqvwTg5R_bgzh9vyuEA@mail.gmail.com>
References: <CAOp4FwSfmC=vLLSTxZYFbAbkh_j3eJJGqvwTg5R_bgzh9vyuEA@mail.gmail.com>
Message-ID: <CAOp4FwSb4wWUGL57msLTj1yNjzCtQP3zqKfLba8RME0L+4VWkg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Cc: secure@intel.com
Date: Wed, 13 Jun 2018 23:07:18 +0400
From: Loganaden Velvindron <loganaden@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Intel FP security issue
To: oss-security@lists.openwall.com

On Wed, Jun 13, 2018 at 7:34 PM, Loganaden Velvindron
<loganaden@gmail.com> wrote:
> Hi All,
>
> Both OpenBSD and DragonflyBSD have gone ahead and committed fixes for
> the rumored Intel FP issue:
>
> OpenBSD: https://marc.info/?l=openbsd-cvs&m=152818076013158&w=2
> DragonflyBSD: http://lists.dragonflybsd.org/pipermail/commits/2018-June/672324.html
>
> I think that the cat is already out of the bag, and releasing details
> of this security problem makes sense. Since this has gone public, Is
> there a reason to keep this under embargo ?
>

FreeBSD appears to be moving in this direction too:
https://svnweb.freebsd.org/base?view=revision&revision=335072


> Kind regards,
> //Logan
> C-x-C-c
