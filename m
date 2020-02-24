X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3670" "Tuesday" "25" "February" "2020" "00:54:50" "+0500" "Alexander E. Patrakov" "patrakov@gmail.com" nil "86" nil "^Date:" nil nil "2" nil nil (number mark "        patrakov@gma Feb 25   86/3670  " thread-indent "\"Re: [oss-security] LPE and RCE in OpenSMTPD's default install (CVE-2020-8794)\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] LPE and RCE in OpenSMTPD's default install (CVE-2020-8794)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30211 invoked by uid 550); 24 Feb 2020 19:55:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30189 invoked from network); 24 Feb 2020 19:55:13 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=QVk+cTilGRsQt4fW6qRnUZDQXmg2M8hLXJzC01QZTJw=;
        b=hG5eXKV/Kptka0ZgFkK70+Vo3qKBXsxwqY/jYeSXbzqXwcUK77+ck0F7CjRma/kx+s
         HQpW7wG2f61Tla+w3KrM/s1BT1/Tx7nB8X79If9d1QgRWEiZt1dMaxOmHntfgEY4kSo6
         QQ2bABiVYxnyZo7IPLEn1N+dQbKOBKOBhaCq7qxkKcI8fiU3gt3DOddiYzSPSObFfHuF
         awraA4rIJGWTYBRjyUrUc8B71bt1G9fZCSS9F+khMA/WY0xOt/F8y++A8KSx9ULeu58u
         FwFBclq2LmJY7i3bl6vLbG04GgbqmiWP9ppzNalUM3BqrT99d7YT1decz1AfFfYrkIiU
         31oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=QVk+cTilGRsQt4fW6qRnUZDQXmg2M8hLXJzC01QZTJw=;
        b=Hu39lWm23+cRo2rgtGlCZf2ZJXN+vs8MVFv6Ru62AXNHWm8u/F3lcjLn6xXkMkAFCV
         uoXZb8i8ZxadybA+XOoe5D5yhAqUkFb9mE6Np10CINXw68jxaYsbRncsRzqR4YxnGUad
         ofvtt8m0z6JmQWZpV/SgrDjzhK6612o3UY8hy+J8D9YeEyRPw9jpBzF5qGFwL8LiB+W2
         UhqvNFyjoePwuR9UC+YGiWzf96ZGnzM0ra5X9utrHTTpX7p/efCtYqB8Lyi3Oc7A5Hb4
         5HAiQ68/XXyp5Xb3ddYpe1rSAqappmiErhqVsDlt+tT+0zuZG3xScJ9kzVwmx39xaxWg
         N+og==
X-Gm-Message-State: APjAAAUCh9vAruamyfo9ohPXK62c6CYrdZp5VY3t6t5OXel3IdV7WGnk
	DuDYyiTZnG96xkvSKeqHgILO7gRoCn3cho+BbyC94hvD4Eo=
X-Google-Smtp-Source: APXvYqy06P4FmY8fq7Sby+qUdojN40hRRBsEacRjEr+XpdeVp7tAiifUhpOk7VsjEIT5/QekbqF1TpQ3bJRIm8d40BQ=
X-Received: by 2002:a05:620a:135c:: with SMTP id c28mr26220542qkl.19.1582574101638;
 Mon, 24 Feb 2020 11:55:01 -0800 (PST)
MIME-Version: 1.0
References: <20200224184538.GF17396@localhost.localdomain>
In-Reply-To: <20200224184538.GF17396@localhost.localdomain>
Message-ID: <CAN_LGv3fr1pk3Xwp39Qv4mFv6b2xNw+pfo6Ban993FCQZoqfAA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Date: Tue, 25 Feb 2020 00:54:50 +0500
From: "Alexander E. Patrakov" <patrakov@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] LPE and RCE in OpenSMTPD's default install (CVE-2020-8794)
To: oss-security@lists.openwall.com

On Mon, Feb 24, 2020 at 10:55 PM Qualys Security Advisory
<qsa@qualys.com> wrote:
>
>
> Qualys Security Advisory
>
> LPE and RCE in OpenSMTPD's default install (CVE-2020-8794)
>
>
> ==============================================================================
> Contents
> ==============================================================================
>
> Summary
> Analysis
> ...
> Acknowledgments
>
>
> ==============================================================================
> Summary
> ==============================================================================
>
> We discovered a vulnerability in OpenSMTPD, OpenBSD's mail server. This
> vulnerability, an out-of-bounds read introduced in December 2015 (commit
> 80c6a60c, "when peer outputs a multi-line response ..."), is exploitable
> remotely and leads to the execution of arbitrary shell commands: either
> as root, after May 2018 (commit a8e22235, "switch smtpd to new
> grammar"); or as any non-root user, before May 2018.
>
> Because this vulnerability resides in OpenSMTPD's client-side code
> (which delivers mail to remote SMTP servers), we must consider two
> different scenarios:
>
> - Client-side exploitation: This vulnerability is remotely exploitable
>   in OpenSMTPD's (and hence OpenBSD's) default configuration. Although
>   OpenSMTPD listens on localhost only, by default, it does accept mail
>   from local users and delivers it to remote servers. If such a remote
>   server is controlled by an attacker (either because it is malicious or
>   compromised, or because of a man-in-the-middle, DNS, or BGP attack --
>   SMTP is not TLS-encrypted by default), then the attacker can execute
>   arbitrary shell commands on the vulnerable OpenSMTPD installation.
>
> - Server-side exploitation: First, the attacker must connect to the
>   OpenSMTPD server (which accepts external mail) and send a mail that
>   creates a bounce. Next, when OpenSMTPD connects back to their mail
>   server to deliver this bounce, the attacker can exploit OpenSMTPD's
>   client-side vulnerability. Last, for their shell commands to be
>   executed, the attacker must (to the best of our knowledge) crash
>   OpenSMTPD and wait until it is restarted (either manually by an
>   administrator, or automatically by a system update or reboot).
>
> We developed a simple exploit for this vulnerability and successfully
> tested it against OpenBSD 6.6 (the current release), OpenBSD 5.9 (the
> first vulnerable release), Debian 10 (stable), Debian 11 (testing), and
> Fedora 31. At OpenBSD's request, and to give OpenSMTPD's users a chance
> to patch their systems, we are withholding the exploitation details and
> code until Wednesday, February 26, 2020.
>
> Last-minute note: we tested our exploit against the recent changes in
> OpenSMTPD 6.6.3p1, and our results are: if the "mbox" method is used for
> local delivery (the default in OpenBSD -current), then arbitrary command
> execution as root is still possible; otherwise (if the "maildir" method
> is used, for example), arbitrary command execution as any non-root user
> is possible.

I would like a bit of clarification. We use OpenSMTPD as a dumb thing
that only relays mail to a central server and never delivers it
locally. The remote server is under our control.

=============
table credentials { smarthost.example.com=myuser:mypassword }

listen on 127.0.0.1

# No local mailboxes
action to_postfix relay host
smtp+tls://smarthost.example.com@smarthost.example.com auth
<credentials> helo myhostname.example.com
match from local for any action to_postfix
=============

Is the hole exploitable in this configuration?

-- 
Alexander E. Patrakov
