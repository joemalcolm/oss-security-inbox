Received: (qmail 20172 invoked by uid 550); 7 Aug 2022 15:58:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5405 invoked from network); 7 Aug 2022 15:40:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc;
        bh=+BTLhx0VnpjsdYKzRlHf03EOlWm4xI2b6lCios+sboc=;
        b=nFwsRBy4KsR9v2Le/QavCp06oH2EmK/O1R3dcCCHhGzR8F5yrWxIuNvJ9DtbxnO2Dg
         ymaWOp2WIj0Li3Ex8rLUuSkhWDh0G6MrtsZjxCrGVyXA4/7nnMfghTPOJB02qT3Dn2DC
         PfKppbiFvW7goNTcw2ZHs7gH7TuircmyX280k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc;
        bh=+BTLhx0VnpjsdYKzRlHf03EOlWm4xI2b6lCios+sboc=;
        b=HqFUwxZIuO1uMGV7u5NmwmmV+cInlxJ/Xxdk4mda9+7uFVzrP1Pc3ycXHd/wwzBKhJ
         zFg5Qmr/VkuWI7TDwgctx3HS6lGCjTnwbrxOSca30E03O8OCbG4W6XRjtctCYxggeAwD
         V3jcnngkD7M5ah47HtO0ir6ihQvGS/vo1mr3ibFpjggGV16+en3quzjFvhdhGclg7pwq
         tb6kwf/Q3wXGl3MQh/jNGW3L6gRUd+S2AZfPGqNGHH46ixXv+ChvOsiIuNTQr4k1Wveh
         SvfAB9rICkW5sUFmWEZxbGkHNh5SxB2TPuP5F8pUPBHmcfY8A/i5MjYwLsdp8UNqi6/K
         I6OA==
X-Gm-Message-State: ACgBeo2STLcI7rIMVTBr2zgxkI2V/WAW4QOiB/SfyIVVaJR5UjhLuFV1
	kXQPbuP04E9bWpSNvM9B+M80GXFdPvwp4vWSiUnrfvWqYv3Pvw==
X-Google-Smtp-Source: AA6agR50a0aFuiPn1L5NfFbBkbmdSfCfrUHt5+3h5MG1qGvvHnX4yZdzjQPFbAL/YKQLj8+MwOwEYWJF+366R0WwN5g=
X-Received: by 2002:a25:a428:0:b0:671:ca87:710c with SMTP id
 f37-20020a25a428000000b00671ca87710cmr12884872ybi.4.1659886810027; Sun, 07
 Aug 2022 08:40:10 -0700 (PDT)
MIME-Version: 1.0
References: <2dc37111-fd35-e10e-0162-1bdad2e80f5e@vulndisco.cc> <Yu7WIlgb9y4tGUDQ@gentoo.org>
In-Reply-To: <Yu7WIlgb9y4tGUDQ@gentoo.org>
From: Roxana Bradescu <roxabee@chromium.org>
Date: Sun, 7 Aug 2022 08:39:59 -0700
Message-ID: <CAB=ivF95gmkRr74nu5+_XmNkQKdGd==4hB+9N8EmaELQz+vHxQ@mail.gmail.com>
To: oss-security@lists.openwall.com, security@exim.org
Content-Type: multipart/alternative; boundary="000000000000adef8205e5a8833c"
Subject: Re: [oss-security] Exim < 4.95 heap overflow

--000000000000adef8205e5a8833c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Adding the Exim security folks to this thread to shed some light on the
original report and CVE discussion.

Per their
https://github.com/Exim/exim/wiki/SecurityReleaseProcess they email this
group and distros to notify of security issues. They will also issue CVEs.
However I don=E2=80=99t actually see any CVE issued since 2019
https://github.com/Exim/exim/wiki/EximSecurity

=E2=80=94-
Regards, Roxana

On Sun, Aug 7, 2022 at 6:49 AM John Helmert III <ajak@gentoo.org> wrote:

> On Sat, Aug 06, 2022 at 10:46:42PM +0300, Evgeny Legerov wrote:
> > Hi,
> >
> >
> > Here is another bug which has been silently fixed in Exim.
> >
> > It has not been recognized as a security issue, many distros still don't
> > have this patch.
>
> Why do you say it hasn't been recognized as a security issue? Distros
> don't usually have a way of knowing about a vulnerability that needs
> patching without a CVE. Have you requested a CVE?
>
> > Original report + patch  is here -
> >
> https://github.com/Exim/exim/commit/d4bc023436e4cce7c23c5f8bb5199e178b4cc=
743
>
> That commit does not seem like an original report.
>
> > Analysis of the bug  - https://github.com/ivd38/exim_overflow
> >
> > I don't post here because it is huge snippet of code.
> >
> >
> > regards,
> >
> > -e
> >
> >
> >
>

--000000000000adef8205e5a8833c--
