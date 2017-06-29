X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["820" "Thursday" "29" "June" "2017" "07:31:33" "-0700" "Nick Kralevich" "nnk@google.com" "<CAFJ0LnFGD0+stET2NvNzQ2tR47Yk3cbUcWuUOLWqfRKvyBsA4A@mail.gmail.com>" "22" "Re: [oss-security] TIOCSTI not going away" "^Date:" nil nil "6" "2017062914:31:33" "[oss-security] TIOCSTI not going away" (number mark "        nnk@google.c Jun 29   22/820   " thread-indent "\"Re: [oss-security] TIOCSTI not going away\"\n") "<20170629142346.GA30874@openwall.com>" ("<20170603165813.GA20708@openwall.com>" "<20170629142346.GA30874@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26177 invoked by uid 550); 29 Jun 2017 14:34:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24091 invoked from network); 29 Jun 2017 14:31:47 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=XRE559gFtqqsG3W4dC+kKWQH5fPwI6N6VZuDaJViqPw=;
        b=O29/TVWfHMXFVgIGdoxpZOU/CF+G4n2zgd6vHWD1BceJoTsY6TFQhVY2X8QdXlpE+2
         WUpsPe9j4O4rxZN3cyelmyaGsf+ydoMetMbyFwzSTCSWBqm7NQDYeOTKP+hK8hjv+3zd
         XEFfpeVny0zjQoW49SaqlicfYqR07OHs8ivptQmjXddzvB4leorbcC6FAr5nuoqxWqiq
         C0QNBE30BXsRkwjs768GYy2NJJArfvkIsMhnnyYJHFVUF8KGIFpHk9836w0qenBo93UO
         UI3gvvD4r0wGAUs/8fed1X/Vh1H9YZinBp++EbLW9YqO2vexBY+hPPjIq6imde6NHzTk
         cCjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=XRE559gFtqqsG3W4dC+kKWQH5fPwI6N6VZuDaJViqPw=;
        b=SNfCA/0YrgXDPTszf/JBYrLiC1TR2z8jfe6DPznBM7dmVLI5gOpoFybvF6XAxfnzUk
         XtKeRiTTRh2yt6Wbtp22JqMJaEjID5TIOD1q0C5Vqqwv1OTbQZbdmHodm8gOpDUyXW4G
         i3l++eBtxxeXopChJM8GDi5uO8nPbA2vThVil2V7H5MsNGSQ66YipiND9x3qC35v7TcQ
         lVCMCM4fNJZTL/8xZsSZMoyODPER9FCqbXcksUsPjLM6PKD1TkZmK9H5uWQHHyP1cqcH
         1k7nK+FusBjZHd9jODwwv9jGiOFZqt4uEOiWqVy9s1n8h1Foeg6LjjG6zv2b6LZj7qol
         CMxw==
X-Gm-Message-State: AKS2vOyhcqbf2I21PKfcjdLjMhmRZC9xqa32IH1LzicbFd1XPDJAFp2H
	7bo+SMpXZCngRUmlpEFNhrOsTadRhKytODWReA==
X-Received: by 10.28.10.76 with SMTP id 73mr2408571wmk.93.1498746695063; Thu,
 29 Jun 2017 07:31:35 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20170629142346.GA30874@openwall.com>
References: <20170603165813.GA20708@openwall.com> <20170629142346.GA30874@openwall.com>
Message-ID: <CAFJ0LnFGD0+stET2NvNzQ2tR47Yk3cbUcWuUOLWqfRKvyBsA4A@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Date: Thu, 29 Jun 2017 07:31:33 -0700
From: Nick Kralevich <nnk@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] TIOCSTI not going away
To: oss-security@lists.openwall.com

In addition to OpenBSD, Android has chosen to drop TIOCSTI (and a
bunch of other tty ioctls) in the Android 8.0 release. See
https://android-review.googlesource.com/306278

-- Nick

On Thu, Jun 29, 2017 at 7:23 AM, Solar Designer <solar@openwall.com> wrote:
> While TIOCSTI is apparently not going away on Linux, it is on OpenBSD,
> and here's some analysis of the apparently almost non-existent impact
> this will have on Emacs (which was one of the primary examples cited for
> keeping TIOCSTI on Linux):
>
[...]
>
> Whatever happens (or doesn't happen) for upstream Linux, there will be
> system(s) dropping TIOCSTI or at least introducing a way to disable it,
> so reducing userspace programs' dependencies on TIOCSTI makes sense.
>
> Alexander

-- 
Nick Kralevich | Android Security | nnk@google.com | 650.214.4037
