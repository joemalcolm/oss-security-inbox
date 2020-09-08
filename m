X-VM-v5-Data: ([nil nil nil nil nil nil t nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1931" "Monday" "7" "September" "2020" "21:11:00" "-0400" "Jeffrey Walton" "noloader@gmail.com" "<CAH8yC8ms56V7hAVKz1VQ7wX01H+ZC78GAPnNbd7tXRQgRxBt6A@mail.gmail.com>" "44" "Re: [oss-security] Open Source Tool | vPrioritization | Risk Prioritization Framework" "^Date:" nil nil "9" "2020090801:11:00" "[oss-security] Open Source Tool | vPrioritization | Risk Prioritization Framework" (number mark "  z     noloader@gma Sep  7   44/1931  " thread-indent "\"Re: [oss-security] Open Source Tool | vPrioritization | Risk Prioritization Framework\"\n") "<20200907165101.38058373@jabberwock.cb.piermont.com>" ("<CALv8orGS3m5i=WihK7PAfJLwNuCd9bMxcs7UVTYy1s3MSc5PRQ@mail.gmail.com>" "<20200905054704.1d90da6a@jabberwock.cb.piermont.com>" "<CALv8orEzf_P79a6gqk8cKL=Ow7ymmXdQY_qBfmL-t7enSn5SsA@mail.gmail.com>" "<20200907165101.38058373@jabberwock.cb.piermont.com>") nil nil nil nil nil nil nil "Re: [oss-security] Open Source Tool | vPrioritization | Risk Prioritization Framework" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 1001
X-Mozilla-Status2: 00000000
Received: (qmail 1588 invoked by uid 550); 8 Sep 2020 01:11:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1570 invoked from network); 8 Sep 2020 01:11:39 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to;
        bh=put+xpyiROK5YQFqBra38OuDZpAU0kY2ySy/Y5ouhlo=;
        b=oKziM2Wqjmxv6rEmhmMYLmH+9Oo/MwDRZwQYjuOg0BVJXH+hTceSegEQCooqFo2pco
         rWbfqitgreas+gpC4msK4f8J1jNS6wDcgihv5htMuceKupCCruApZRExYgV/R92Zuw1C
         SyQRrB6Q/4JbjSZDGrD26bAWzaLdWR6buxxMugzKAio6/D4e9ZrWV5lkq8PpyQu/mkS/
         EuDjmoFM8jzJNRR/SmzOp2EvlI1yUIdN1IaLzP1oZRRgo0hoEj9a3EWW5zqp7+52w4WO
         efa+5KlT21SNLTZtfYbAPwG454oJhmZV1DFfe7XbrWzPYze6nO9qNsHRxMb82pZ7HeAZ
         c1TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to;
        bh=put+xpyiROK5YQFqBra38OuDZpAU0kY2ySy/Y5ouhlo=;
        b=nKPllJ+C9WSlW8XeR3Ey21fcLAA/wPmuKPqGcUezf+1PZqI89RV3fgbOspykfu8pjf
         sexvglM+/qaPZP+iQaA0BUhXo4fA4md2r+J4bODB/gqC/PLKIdj0iXXk81IaASE5mw3l
         eqNEA4NOI5ZVhagEp9hSVP7umT3MBhgQJ7jDfwj1VV9jqDVzIQesxK+vuuMteOrY4Qt5
         7jWMdcqpAR7WytSYppPJZ+AUzelJK3+2HEAT7w1H3fyKfE0oiQsRGEW81RCP4/6YWctR
         qOTjLPo4TsXzjaSClCS5bbAsApaojpIk48h4kRuHA98Mkn0nCSBjlIZTliS7wOmx3ThM
         YYiA==
X-Gm-Message-State: AOAM531ZkV3gyHaV7jXE/S3nFQwZoz2WtCShNTq/GR1JupmPilL0+zfn
	FaLaypSvRfY+15lt8dmNaGgoxI6lTlbkSAjvUkOGK/us1+4CHg==
X-Google-Smtp-Source: ABdhPJxGPC5xtYfZoHdPqog+9DYeLl4m814T0I+S79NX1Iqq3BjL6Xt3wxhOuEJ/vY0gkoeF7C8+6b3tDVMi2VJNX+A=
X-Received: by 2002:a5d:9ed3:: with SMTP id a19mr19253682ioe.28.1599527487678;
 Mon, 07 Sep 2020 18:11:27 -0700 (PDT)
MIME-Version: 1.0
References: <CALv8orGS3m5i=WihK7PAfJLwNuCd9bMxcs7UVTYy1s3MSc5PRQ@mail.gmail.com>
 <20200905054704.1d90da6a@jabberwock.cb.piermont.com> <CALv8orEzf_P79a6gqk8cKL=Ow7ymmXdQY_qBfmL-t7enSn5SsA@mail.gmail.com>
 <20200907165101.38058373@jabberwock.cb.piermont.com>
In-Reply-To: <20200907165101.38058373@jabberwock.cb.piermont.com>
Message-ID: <CAH8yC8ms56V7hAVKz1VQ7wX01H+ZC78GAPnNbd7tXRQgRxBt6A@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Date: Mon, 7 Sep 2020 21:11:00 -0400
From: Jeffrey Walton <noloader@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Open Source Tool | vPrioritization | Risk
 Prioritization Framework
To: oss-security@lists.openwall.com

On Mon, Sep 7, 2020 at 4:52 PM Perry E. Metzger <perry@piermont.com> wrote:
>
> On Sun, 6 Sep 2020 13:18:34 +0530 Pramod Rana <varchashva@gmail.com>
> wrote:
> > Appreciate your comments.
> >
> > My two cents - Patch everything is far from reality to most (read
> > all) organizations
>
> "All" is clearly false; I know many organizations that patch
> all their hardware fast, and a few that do it essentially within
> hours (unless CI tests for the patched infra fail).

Yeah, I thought the same. I was hoping to see more about that comment.

Every US Federal agency I have worked with patches. The Social
Security Administration does it within 30 days, and the Treasury
Department does it in a matter of days. SSA is one of the largest
networks in the world with over 100,000 hosts. Treasury had over
40,000 hosts.

Microsoft did a study years ago and found most hosts that are
compromised failed to install vendor patches. Most patches were
available at least 60 days earlier. The one takeaway is, if you want
to get compromised, then don't patch the host. A script kiddie will be
happy to pwn you.

I also got to rebuild a few servers that were compromised due to lack
of updates. It is a lot easier to fix a broken database connection
then it is to rebuild the server and restore the database. Diagnosing
and fixing the database connection takes about 30 minutes. Rebuilding
and restoring the server takes about two days.

I'm such a firm believer in patching from experiences at SSA and
Treasury all machines under my control are patched immediately. I
apply all patches in case something is misclassified. I don't care if
it is a CVE or [benign?] memory error. I want the vector removed.
https://github.com/noloader/auto-update.

Also see Peter Herzog's
https://blogs.blackberry.com/en/2018/04/security-getting-off-the-patch
and https://blogs.blackberry.com/en/2018/05/security-getting-off-the-patch-the-shining-hope.

Jeff
