X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3514" "Sunday" "1" "March" "2020" "07:47:15" "+0500" "Alexander E. Patrakov" "patrakov@gmail.com" "<CAN_LGv2vhWw6hPL+71GHbRMF8HC8K+0yMjocjXu46pET8zYzNg@mail.gmail.com>" "78" "Re: [oss-security] LPE and RCE in OpenSMTPD's default install (CVE-2020-8794)" "^Date:" nil nil "3" "2020030102:47:15" "[oss-security] LPE and RCE in OpenSMTPD's default install (CVE-2020-8794)" (number mark "        patrakov@gma Mar  1   78/3514  " thread-indent "\"Re: [oss-security] LPE and RCE in OpenSMTPD's default install (CVE-2020-8794)\"\n") "<20200226202819.GA1051@localhost.localdomain>" ("<20200224184538.GF17396@localhost.localdomain>" "<20200226202819.GA1051@localhost.localdomain>") nil nil nil nil nil nil nil "Re: [oss-security] LPE and RCE in OpenSMTPD's default install (CVE-2020-8794)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 23974 invoked by uid 550); 1 Mar 2020 02:47:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23956 invoked from network); 1 Mar 2020 02:47:39 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=64BKELz3UUSEHZPgHT983crs8E4uXWtkQ8oPaWRBsq0=;
        b=pb+OefCIiGSJw38P1jGhIQkk+Xf2iKLIYPwjIN8Kwek1Hy+4+1stuNP1mwlGr1gVju
         fxjn4zhX2TBxYV7qzGPCJXqfjRAlt9h+QrTVakjCYoFckA0ThgpGxpey2Z0VEiUTjjm3
         QSKc4DL+ofVuynyyElXm6NOmUCV6fAJdwkm54akQ6Le0TuttpTsJatMb1H+LpRcQdrBf
         N4MViRpAlQw04DfYARQMCrKRGE9VoYcjvGFZ8p9kZyW1K7hXULZEQToe+OgKE9ywrPa0
         Ph9t/MV/eI8oo4lCu9fY+veAr6rlB5/Eq/1BYat2hKkWBlHMCOTnRyAXofearBuHavHt
         L7Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=64BKELz3UUSEHZPgHT983crs8E4uXWtkQ8oPaWRBsq0=;
        b=AU0hebAW6VTOs5MQsJfKnzz6yMEFGJpLKxs9pin3e5kBx4zbcaFS2JgQuhcCtyYLi3
         mjCKcRY8gRRgmoywP4lEFRGwPlxw0lVi4MVvQYcGIgRF1ed5/XAIFkwQ/oOsIOWSy36B
         G+piA6lcKpOrh2F1DSMW0asYXc54xq1ZaeJPytGZWVIgFND5IIdkGNmOZXHYGmJS9XE1
         9kZG2iawhCG5kUn+XV20hzKpIWSsJ4kKnp7JwxxZYHfVZNLxNliN5xVhroIjI2y1/Ul/
         jmheCI4mCgoXlELIMk84A9RqmoAJW8aDrcJY1LW8+LV3+qOuc8lBYZ4BdE84CjbKipj8
         NuLw==
X-Gm-Message-State: APjAAAX0aGdadRYGxI6Hzc12Dap/GgFHK4pesIfbzBK0LLmiP9yUhHR1
	p/AS7SS8y+/JrmaeJO51aWgEooesa4z7wep8jVXML3am3w4=
X-Google-Smtp-Source: APXvYqygbgSZbv9nV1ohwqL3Jvw1nWfc47+kj4XyxYqspCp2lBqP+2WYFt0jFKw4L5ckDxJwpir0y8Lcsp5dUIEWGRg=
X-Received: by 2002:a05:620a:15f4:: with SMTP id p20mr10530380qkm.272.1583030846643;
 Sat, 29 Feb 2020 18:47:26 -0800 (PST)
MIME-Version: 1.0
References: <20200224184538.GF17396@localhost.localdomain> <20200226202819.GA1051@localhost.localdomain>
In-Reply-To: <20200226202819.GA1051@localhost.localdomain>
Message-ID: <CAN_LGv2vhWw6hPL+71GHbRMF8HC8K+0yMjocjXu46pET8zYzNg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Date: Sun, 1 Mar 2020 07:47:15 +0500
From: "Alexander E. Patrakov" <patrakov@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] LPE and RCE in OpenSMTPD's default install (CVE-2020-8794)
To: oss-security@lists.openwall.com

On Thu, Feb 27, 2020 at 12:38 AM Qualys Security Advisory
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
> Client-side exploitation (new grammar)
> Server-side exploitation (new grammar)
> Old-grammar exploitation
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

Just in case, I would like to complain here that my Fedora 31 systems
have not received an update.

There is indeed something in testing, but it is (mistakenly?) marked
as a bugfix release and not as a security update:

https://bodhi.fedoraproject.org/updates/?packages=opensmtpd

-- 
Alexander E. Patrakov
