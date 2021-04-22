X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["570" "Thursday" "22" "April" "2021" "18:49:15" "+0100" "Mark Steward" "marksteward@gmail.com" nil "15" "Re: [oss-security] Malicious commits to Linux kernel as part of university study" nil nil nil "4" nil nil (number mark "U       marksteward@ Apr 22   15/570   " thread-indent "\"Re: [oss-security] Malicious commits to Linux kernel as part of university study\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Malicious commits to Linux kernel as part of university study" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13510 invoked by uid 550); 22 Apr 2021 17:54:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9774 invoked from network); 22 Apr 2021 17:49:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=AbvMFj0TAkl8zPXD+c8CasyvtJvtoyz9/9yjYxUhVi0=;
        b=dqU6d3vCSJTMkhAPQU7DiV4qx5LFji8GlmZIrvuySHrd9kFnWEMDk4XUEdoRTUtLes
         PUrEA3YSC4UMpTWryQCeOCNp3PfrA56OwhyDu30pNyvgUW65dcf+r3LcKxuLUu9pNxlK
         aI++p5XvMHyLl2pQeJq1STdwQwelL9eJgkMTUGRmbvrrDUIvQT74ZNr+r983CKvo4ap7
         ISDLF1Wix066IChhdtBLbet/pOSNKiQqJS8S5qkPCS2RgXnP7CeYMhnimTuEcUFhAFyj
         nfj9CdxyjpYmYP1ZJ5F8iSDDfsz5LklDowPaVpMX5rpgPFKVydK1PFKvqgSiXbEsLAGg
         Cr3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=AbvMFj0TAkl8zPXD+c8CasyvtJvtoyz9/9yjYxUhVi0=;
        b=kpy0penkti3F55DsbtxKHXsmlfOMhc+Mpmio5+xVgw1GiKpgksvpkiD5jkheQQf/fp
         /Dd2BfT6Z9/FyK2ekaFw1LnJCVzNrpXrGplrld4FRtQmxAYS60EBdPT5g5YjyeGUdaC3
         gYsKlOUK/5SBsW5K6BqV0QM2Y+ChIMuqBPPiEOTo+mx3lUOkWRate7lRKbODREDGFEnv
         r8YmHIDztrnkrQ0BpwA4aJULDFdpnAJOCFvIHkZ+8yzEyIXfwGhXj4pBCSxD436AY5xG
         UyU02QqtoxxTwHUpiY1FiZTMzMt7GU/NB2mLlY7/wA/qDLShWSpCBusjItfAbx3jjzwq
         tKzA==
X-Gm-Message-State: AOAM530PdS/35Ad0Lmu6Z7veHMqrv0ZQ7CqbH7fs5+14kXX9cekCbNHP
	JlrdxT8K+eDHaJKowi2uXRRkqSQxD2yndsGRaeGyF5c4tEGrjA==
X-Google-Smtp-Source: ABdhPJw/2KGoHYky4N5EQw/w+HE8BFNqrok3St0a9RFBURSUkcDDl9zWj2ezxNNcfKEyTqlbwwPKEWHIKgyuC21nOBQ=
X-Received: by 2002:a1c:c3d4:: with SMTP id t203mr5118879wmf.32.1619113766842;
 Thu, 22 Apr 2021 10:49:26 -0700 (PDT)
MIME-Version: 1.0
References: <20210422065959.GI13079@scully.more-magic.net> <CAEo4CePqice09K5PPhmxwwF3jg=USrqRqM5FgVX_jCB8sZfDeA@mail.gmail.com>
 <20210422095945.GA2495@scully.more-magic.net> <4DCB6EF3-73EE-4038-8437-FEB339F20F90@dwheeler.com>
 <627170ea-4e1e-1a3d-8291-494eac38c9b@dereferenced.org>
In-Reply-To: <627170ea-4e1e-1a3d-8291-494eac38c9b@dereferenced.org>
From: Mark Steward <marksteward@gmail.com>
Date: Thu, 22 Apr 2021 18:49:15 +0100
Message-ID: <CAPyX2neD99tn_FY3FZ9WO5HaB2WXSgvSOejOiOE_9QHxqRjpdA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] Malicious commits to Linux kernel as part of
 university study

On Thu, Apr 22, 2021 at 6:23 PM Ariadne Conill <ariadne@dereferenced.org> wrote:
...
> By mining the LKML archive, it may be possible to find the original set of
> patch submissions by searching for similar keywords as the messages from
> Aditya.  If somebody can do that, then we would be able to determine at
> least some of the emails likely to have originated the patches.
>

This looks like a good guess to me, and if correct, means none of the
submissions in the paper were successful:

  https://lore.kernel.org/linux-nfs/YIEqt8iAPVq8sG+t@sol.localdomain/


Mark
