Received: (qmail 30136 invoked by uid 550); 2 Oct 2023 10:34:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20378 invoked from network); 2 Oct 2023 07:48:42 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696232910; x=1696837710; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+G3h1gEk89fd1oEjt39zZlUWjuhsrQPIVATehEO6VQE=;
        b=BkwH4TrjzEwiV8t7wnWE2gZGgMplPTvZ5cCmb9ABSwfZ6sN0GYSXjJsqW/J+DOCEsU
         ZNJvSiF9j/S817KFKfGpq2cIn1HBY48x0FOX8vqJMT90V7E4kJQjzFSvS6DvszNSfTgg
         dELufIGkOlxjXi9yvPcm0JwuY/0GLQ7b/9uUW7FOQP/quiknRVl4U6D2Gm2237jyG8if
         FwKErplfltmpzKiPXfwkjP7ev9CFWEBxR0kjwRwK0e7cIniIUMknhhELQWDLCxrRPATk
         ilomXvzEfp5IviSjtatMks6MwwVK+ysI1PgnTiwJ70OaRZDSW+lIex9U4Bi5zgEyvdYr
         aLYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696232910; x=1696837710;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+G3h1gEk89fd1oEjt39zZlUWjuhsrQPIVATehEO6VQE=;
        b=UerC/fBPq7AMeq2GI4JIGRZe5Za1jytQB4kU1sdcfq8GTnQZod2ZSbX6AI6TC7xEqk
         DWM68SQXzfbB0Lua7VjZL8HkbjcDtjSZ78N+Fytc5GOnLlAq1mkdD6zf4hbZ/lBYGkC8
         9pzAwKJ4TDR6Iy9osyHHAi3UreBoFcg9r4uHe3UDiOMF78BJcOWCZegm8LGjn0Y7OdeM
         +oMr1sATReMnrv+zBoWgBGIxVHmDiGQ+dcFFa3LKdeFkStSvK/8on6tCNVie2irp6Drc
         1SALWstyovP+cs2LGrwpoqFTfBMgrGXtI6E0HnC/RYXGNLnr2Bbof8XdGTiMFQhwyxtr
         eAAw==
X-Gm-Message-State: AOJu0Yxyl7PzdPz2ceLoDhga43+S1/L9Q/W0J8XLnB7erpURY003KKyA
	LzvWipj45/uibvQV8LCfyIPLM3E7mzjFbgQ4/3nZ1Y/H
X-Google-Smtp-Source: AGHT+IFZ2T/Sw9XSWok9XERSEwFLn/yuGIDRTz6OUzeubqRCF/AMpO6KUPgJp29MMUu5smdEcikwa1n5oBGzM0XW0OQ=
X-Received: by 2002:a2e:9e4d:0:b0:2b6:fa3f:9230 with SMTP id
 g13-20020a2e9e4d000000b002b6fa3f9230mr7653015ljk.46.1696232909812; Mon, 02
 Oct 2023 00:48:29 -0700 (PDT)
MIME-Version: 1.0
References: <20231001191303.GA8910@openwall.com> <2023100203-narrow-reliant-2560@gregkh>
In-Reply-To: <2023100203-narrow-reliant-2560@gregkh>
From: Loganaden Velvindron <loganaden@gmail.com>
Date: Mon, 2 Oct 2023 11:48:15 +0400
Message-ID: <CAOp4FwSbzz9EgZoCjPG_0=-in3y7RpWaLmvQgFzAPGk7K8M48A@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] "Linux Kernel security demistified"

On Mon, 2 Oct 2023 at 11:10, Greg KH <greg@kroah.com> wrote:
>
> On Sun, Oct 01, 2023 at 09:13:03PM +0200, Solar Designer wrote:
> > There's also an upcoming Webinar:
> >
> > https://www.linuxfoundation.org/webinars/demystifying-the-linux-kernel-security-process
> >
> > > Demystifying the Linux Kernel Security Process
> > > October 3, 2023 | 07:00 AM PDT (UTC-7)
> > >
> > > Join an interactive, complimentary Mentorship Session exploring
> > > Demystifying the Linux Kernel Security Process with Greg Kroah-Hartman,
> > > Kernel Maintainer & Fellow, The Linux Foundation
> > >
> > > There is a lot of misunderstanding about how the Linux kernel deals with
> > > security vulnerabilities.  This talk will go into how the Linux kernel
> > > security team works, how changes are propagated out to the public, and
> > > how users must take advantage of these changes in order to have a secure
> > > system.
>
> It's going to be much the same talk, with only minor tweaks as I forgot
> some points I wanted to make in the first one.
>
> Thanks for the link to my slides and presentation, glad to see that
> information get spread wider!
>
It was a very insightful talk. However, I'm not sure whether companies
would even be willing to start a conversation with an open source
community without
an NDA being signed.

Coming from a developing country in Africa, we are building cloud
services in our new data centers for local businesses.
We wish we could offer the same level of security as large cloud
services if the large hardware companies
were willing to open a channel to us despite us being still at the
early stage ...



> greg k-h
