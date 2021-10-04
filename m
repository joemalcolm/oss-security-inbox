X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1820" "Monday" "4" "October" "2021" "12:04:33" "-0400" "Alex Gaynor" "alex.gaynor@gmail.com" nil "40" "Re: [oss-security] 3 new CVE's in vim" nil nil nil "10" nil nil (number mark "U       alex.gaynor@ Oct  4   40/1820  " thread-indent "\"Re: [oss-security] 3 new CVE's in vim\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] 3 new CVE's in vim" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19951 invoked by uid 550); 4 Oct 2021 16:04:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19930 invoked from network); 4 Oct 2021 16:04:57 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=nmX1wxXPdDfGV2Vw023YPDdp+WvJTVsVyYrQ3Negnb0=;
        b=YG3t5jl3YKNylJMw1/Bh6u29gGCRa91wRL8u9VztwCN16OtKrNcJQ+Z3CgPiWTHdYa
         C8nfrVv/QSfV9UnCoYcbFVeveMmVT4OKQ9kXYiKBcogohlRAjpVv99APzs2Kq7MITtAs
         3zj6+Rfw8NkKNuATYgPcx9nQDK8/4IIv78LJLQ+XPJ7aow8nKes0Wil7mCq0BZJh5Viv
         RkCwJaBuUhSdlStf/bj2I2teOq/afMDbT68/kdKt0jSLk3xo2+wnT9tduTqYfOsVIWdF
         rMW08NCGKTW5GJ7avoTFqsIbQMPkCucz1kWGEk+RfeW5mpCl9H5D1gV2zyh3fwCkOg5g
         tlzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=nmX1wxXPdDfGV2Vw023YPDdp+WvJTVsVyYrQ3Negnb0=;
        b=R0fLS5tGcZmKghrngXyePmiGesj0OMzMmxsaLgGbzCQZTHuxfdMmcc7j+FUpc9RUCZ
         Q5eSUTFX1x9aJkCySeOEQ9B7nmjNi2a3KoV6DXR7x6NxFvPHok1ESSsNK4mLjiZatkgb
         4qRlZ//Wmi7ltDbjzhb3UNX3fpCOughdIHxvN2FL7FFoGinZv3WTa48/THVC/VNSooYb
         f/ETrSYSC2AruFENCfDprjtdksQV95mcrIYz387ralMm2io2nmdgkE5mlDh00sdIdeOw
         mg7M0m9XvqpIyQ6TaiedhKfY1bAqdwco/loVzw1bhqOJAzWJD9IqwyaSgN0fOlrj1Z0z
         3+Cg==
X-Gm-Message-State: AOAM53197cdAGAru54GGYbNq6LeqMUaH4zdH1C5Mht/DneclP9jBBk+5
	YaOI1689XRQlSyZGbWb7fJnpoYrXZcIvmQOQUhcsCUun
X-Google-Smtp-Source: ABdhPJw1F3KaVNHM+MB1BrTiWL/MG0bkXFuIcTBdxxFu3JZZE7LtL2PhZ3jjCxWNpCBX8Iw5d/hkrGkdko1lGiaH7Fk=
X-Received: by 2002:a05:6a00:2389:b0:44c:434:6c5d with SMTP id
 f9-20020a056a00238900b0044c04346c5dmr22525370pfc.29.1633363484886; Mon, 04
 Oct 2021 09:04:44 -0700 (PDT)
MIME-Version: 1.0
References: <51bbd9bf-fa31-a1ac-a667-7b4b9b425623@oracle.com> <102a76f4-b371-8c54-7dcd-78010b428849@oracle.com>
In-Reply-To: <102a76f4-b371-8c54-7dcd-78010b428849@oracle.com>
From: Alex Gaynor <alex.gaynor@gmail.com>
Date: Mon, 4 Oct 2021 12:04:33 -0400
Message-ID: <CAFRnB2XvL8zOW9oW6sAMuDcCRfp3d7MFbS6GVTskNghY4U4P9Q@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] 3 new CVE's in vim

It seems a bit like huntr.dev makes an incentive, that has always
existed, explicit: There are rewards for getting CVEs issued. Folks
put them on their resumes, include them in audit reports they do, etc.
At least they're paying for fixes as well!

Alex

On Mon, Oct 4, 2021 at 11:50 AM Alan Coopersmith
<alan.coopersmith@oracle.com> wrote:
>
> On 9/30/2021 7:39 PM, Alan Coopersmith wrote:
> > I haven't seen these make it to the list yet, but three CVE's were
> > recently assigned for bugs in vim.  [I personally don't see how
> > there's a security boundary crossed in normal vim usage here, but
> > could see issues if someone had configured vim to run with raised
> > privileges for editing system/application configuration files or
> > similar.]
>
> I do note all three of these were submitted via huntr.dev, which offers
> bounties for both reporting & fixing security bugs.  As a maintainer of
> an upstream open source project which is struggling with finding people
> to fix reported security bugs [1], I do appreciate the additional
> incentive to provide fixes here.  But as a maintainer of a distro, I see
> a mismatch with the incentives here, as you get bounties for accepting
> everything as a security bug and not pushing back, and flooding the
> distros with CVE's - even if your distro policy isn't to handle every
> CVE that applies, security auditors will often make your users query
> about every CVE that they think applies, costing your time to respond.
>
> [1] https://indico.freedesktop.org/event/1/contributions/28/
> https://www.youtube.com/watch?v=IU3NeVvDSp0
>
> --
>        -Alan Coopersmith-               alan.coopersmith@oracle.com
>         Oracle Solaris Engineering - https://blogs.oracle.com/alanc



-- 
All that is necessary for evil to succeed is for good people to do nothing.
