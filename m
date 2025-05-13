Received: (qmail 16161 invoked by uid 550); 13 May 2025 18:37:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9259 invoked from network); 13 May 2025 17:43:08 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747158178; x=1747762978; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7mgUfweAqye/J2AJXj/oJE+z+GcSvtwU6JT5tPS3Bb8=;
        b=TIjF1WBwChYjtnNhFgvfybUQIw42Ji1NCGBdNsfQCvR4m4qNgOx2ZdPWFGBWDU6Zyo
         LxDj0JsSMvfr4SACNpT/UhNo9BeqsoUHshZqMzwgO9gTp5OB+4nuNz2FDV813KVqSNvT
         m3kLk3CRnHVtqxfGuXmcK4x83qpO++gFZALTF29iYravfUlbQPD5y2HYKj0xM7mcpxq9
         5bKZRbjr1iYUXCCtqm1oB5akoxW9VCI8NWAxlYro9Zk+ze78OBhiywEcWStUfEkNUN1u
         dh3oLHI2b+aGhjhQyhNXwNWWnROgrydveNIjFXELUK7h/uNP3+AOzS6W8H5z1fapHWj+
         Fu7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747158178; x=1747762978;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7mgUfweAqye/J2AJXj/oJE+z+GcSvtwU6JT5tPS3Bb8=;
        b=CXwIHrWPQqVyxE4Wz46AQgT4xq2oY8WbjjdeBVGNVeypo3bWA0yYvTyk0TkQnrcdHC
         KKb6eGM8C7PvGsghLGFj33AcAD4Xh5aHWruyMtH9c3JYYs41AlAM1nqmjX6ABQcTz+qW
         G93qKsWz0VZEyNrfLh9Fp23gRatKCk3J+mPcFG2T7saG/XTjO7umAu4MnH9eqhSdpp8L
         7kFIBBhM7i9bg5q72t3RisDnsmZbJYZBCXf+2UT+ltxbYBCxJlZ9Mp/gG2FYcMoUnWlB
         Ge8UeIRSeze9vnPxa0hYz986EdHICuKVfqB7ilnM6e3guLm9OaJUiWrV5PSarcgrbngF
         pgTA==
X-Gm-Message-State: AOJu0YzUCnEfuRHqusRRYhWlnC98NjZrgebERrUn+Jn2QdSqhRPb/9a1
	/A4B7uRGQbmZYgFfFCcFwqiLexvN7LcY/NgqmrGQelFzI/lajaSdRJJIKUj8PHdyDYiWqUhU1hZ
	w/RDg0gFgeaEPlC1vMStBcmcESwkWi/5sheQ=
X-Gm-Gg: ASbGncv4rs7msUgASxXglQnSRujnH42bgJ2bEGhYFLHh79YB1CGYkD4XEgLldI3tG28
	8IoM/iUnGdkvyCs/k4+krbu/0ZJcG94CXQJM5h0mPntD14fAH3q4/Gdi4+zqBeEYP56memGtoq4
	aJI2qlOZl7TRNP33ER/qbKZWO/M7C8fsCNd4T0M+8OFA==
X-Google-Smtp-Source: AGHT+IGdoHtxCoNT3PxCXFU2VaSen99qTWMZMR37Fxp7zmYpnzsbz0+A6U8it1O+OPL9ZV+hlNmvSri/8tlMGkdyOmE=
X-Received: by 2002:a92:ca06:0:b0:3d9:64e7:959f with SMTP id
 e9e14a558f8ab-3db6f7f951bmr5735235ab.21.1747158177685; Tue, 13 May 2025
 10:42:57 -0700 (PDT)
MIME-Version: 1.0
References: <23c5cd0c-2a9b-4caa-a936-381210400cc2@oracle.com>
 <42b72ad8-61d2-48f6-9d29-0774149e344e@gmail.com> <f4a0fa7f299ca02b5cf46a805d9c989c@ucc.asn.au>
In-Reply-To: <f4a0fa7f299ca02b5cf46a805d9c989c@ucc.asn.au>
From: Dave Hart <davehart@gmail.com>
Date: Tue, 13 May 2025 17:42:46 +0000
X-Gm-Features: AX0GCFvqJj8XHH-622HFB6ip1clF6Pj1NoTNBHgS4mTby2vBlSQAAbgWipqt7Nw
Message-ID: <CAMbSiYA6wz-5BjFvwJ9os8Fi3PWMi4vNP7o8rThm_zi7fE06Dg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000008c2298063507f684"
Subject: Re: [oss-security] Dropbear SSH 2025.88 fixes CVE-2025-47203

--0000000000008c2298063507f684
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

You are probably already aware, but Cloudflare is throwing error 525 pages
for Dropbear-related sites failing to establish connections to the origin
servers:

https://matt.ucc.asn.au/dropbear/dropbear.html
https://lists.ucc.gu.uwa.edu.au/pipermail/dropbear/2025q2/002385.html

No need to follow up with me, just FYI.


Cheers,
Dave Hart


On Tue, May 13, 2025 at 5:56=E2=80=AFAM Matt Johnston <matt@ucc.asn.au> wro=
te:

> Hi Albert,
>
> 2024.86 is affected.
>
> On 2025-05-13 2:47 am, Albert Veli wrote:
>
> > I'm currently triaging CVE-2025-47203 to determine whether an embedded
> > system we maintain is actually affected. It runs 2024.86, and is built
> > with DROPBEAR_CLI_PROXYCMD and DROPBEAR_CLI_MULTIHOP enabled.
> >
> > However, despite attempting various multihop hostname inputs
> > containing shell metacharacters (e.g. semicolons, backticks, pipes,
> > $(cmd)), I=E2=80=99ve been unable to trigger any shell execution or com=
mand
> > injection. All such inputs are interpreted literally as hostnames.
> >
> > I have two main questions:
> >
> > 1. Is there a reliable way to confirm from the command line whether
> > I'm vulnerable?
>
> dbclient 'localhost,|touch 123 '
>
> stdout is captured, stderr isn't.
>
> > 2. Both dbclient and ssh are symlinks to the same dropbear binary.
> > Does this CVE apply equally to both, or is it specific to dbclient?
>
> It applies to both.
>
> Cheers,
> Matt
>

--0000000000008c2298063507f684--
