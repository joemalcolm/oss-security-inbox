Received: (qmail 29766 invoked by uid 550); 29 Dec 2022 19:24:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7727 invoked from network); 29 Dec 2022 18:37:15 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=XtQUB5mSlJkwArHkLItFtrPDFNHLb7UHAZYWLH6U8is=;
        b=C1jW58K23ZUjhkGZBemFZZ24NHybkJTEEbZ+WS7SajweHDTd4kH8/xaeqCS9oSluF9
         iFf4NobqD1dfuvr8Wq+KwvHZ8PidF1Mo+M+MtujgXEj9Fy8l5expuXnIOlIFyP5uHnF8
         o9W+wV/NsYcYJMpND2W0OrSgIaovF3NQj8coclLxEbabksfGLN+TnuACVLVBT0EJcodt
         RGf1gEWTAs5HF2Phgm+Z4f7SdIe330Lyi6Y5tCdSxMgbG7WpvT165Dn8391G8sc2Rshg
         of2F67E8wy0R8XYyWR8HgINP/ToEj34+w39eoLkLhoah//VXiPD1JX4y37NBtHvNc7nY
         PEsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XtQUB5mSlJkwArHkLItFtrPDFNHLb7UHAZYWLH6U8is=;
        b=xIygI1XEtf5TyzO8co6luHAzzTcjATcqUvUl3oje8Uxm3BDghsczR4E6aJK3sZSpv7
         x/Ppz/AFrh0V2eV5OV8ZeI52rABgG1mD5Q72TAxeWvyhTutRkel52x8qHR/S/FNIBIza
         hvUzNjOuExdUmI/TAfKjAI1YEAS6bBAnwGKRFYufzkTBZf4ywq8HpZxD0Zlr1/lzad5F
         zz6Fw+ihwY829xRWk7ru1RMtcRfcvxtcg6RQa4ee4m1A28UjBPTbdwhRmNVs7vgNqRhv
         ILjrorUxoZCPNLk5yJJaBsUfgliaJgEXEphN592vnPKLX3386L/h4m5BFjSBYwnEin5i
         qeLw==
X-Gm-Message-State: AFqh2kpzn2NIm36d5E0FqZNxObzjVLCLsw+jGFAdis953TypyUXeN07K
	wOldBFAAkH6Wm9p8ROUXYib4WiDidfoPyXqXz1Cii5W1
X-Google-Smtp-Source: AMrXdXsJXojpD/pyb/Oum0udg8PlEM6S1r/Q03JcHIZ/TPevgUzYhYkQhhMxFNikv8omavwt79a90yziZh1A7h3mTiE=
X-Received: by 2002:a05:6808:1649:b0:35e:d6ce:560f with SMTP id
 az9-20020a056808164900b0035ed6ce560fmr1478787oib.181.1672339023420; Thu, 29
 Dec 2022 10:37:03 -0800 (PST)
MIME-Version: 1.0
References: <Y6SJDbKBk471KE4k@p183> <Y6TUJcr/IHrsTE0W@codewreck.org>
 <1a1963aa1036ba07@orthanc.ca> <20221228152458.6xyksrxunukjrtzx@mutt-hbsd>
 <Y6xzIR9P+a6uaaEx@itl-email> <b31213da-5ea2-d1f8-dcb2-2917b787ce89@oracle.com>
 <90735C03-0C34-49ED-A79A-EC0165C274CC@dwheeler.com>
In-Reply-To: <90735C03-0C34-49ED-A79A-EC0165C274CC@dwheeler.com>
From: Jeffrey Walton <noloader@gmail.com>
Date: Thu, 29 Dec 2022 13:36:52 -0500
Message-ID: <CAH8yC8=p9a71AohbLtKGzb8d8yzBYyCADUJ1xthddQsyFbdSRA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] [patch] proc.5: tell how to parse /proc/*/stat correctly

On Thu, Dec 29, 2022 at 12:58 PM David A. Wheeler <dwheeler@dwheeler.com> wrote:
>
> > On Dec 29, 2022, at 11:43 AM, Alan Coopersmith <alan.coopersmith@oracle.com> wrote:
>
> Another solution is to escape bytes that might cause trouble in this field, e.g., using %xx hexadecimal.
> So space would be %20, ")" would be %41, control characters 1-31 would be %01 to %1f,
> and (of course) "%" would be encoded as %25.
> Basically, URL-encode / Percent-encode them. See: https://en.wikipedia.org/wiki/Percent-encoding

Would you need a full blown encoder?

I was thinking along those lines, but pick a delimiter and only encode
the delimiter when it is present in the data. For example, use the
pipe as a delimiter.

Encoding the space character alone when it is present in the data may
also work. Once a string is parsed based on whitespace, decode the
percent-encoded spaces in the field.

Using \0 as the delimiter would still require encoding of \0 when it
is present in the data.

I guess the question is, do parsers need control characters (<= 0x1f)
encoded or not? If existing parsers can currently handle control
characters, then a full blown encoder may not be needed.

> Technically this would be a userspace change, but only in cases where the system
> would probably have done the wrong thing previously. It's okay if we break *attacker* workflows
> as long as we don't break others'. An advantage of URL encoding is that,
> like JSON, it's a well-known format. I might do something different if this was a new system,
> but that seems like the least-impact approach while eliminating the problem.

I know David did not suggest JSON, but please, no JSON. Use a simple
encoder/decoder like URL-encoding. A URL encoder is easy to implement
in C. JSON is more complex, and developers would probably want/need a
third-party library to do it. There's no sense in gratuitously
broadening the dependency tree.

Jeff
