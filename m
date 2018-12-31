X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3692" "Monday" "31" "December" "2018" "14:38:17" "-0500" "Jeffrey Walton" "noloader@gmail.com" "<CAH8yC8=-Lt0_p2sTnqhJOWjapJ84LNR=8zJFF5oWs=-4xgxigg@mail.gmail.com>" "78" "[oss-security] Re: Asserts considered harmful (or GMP spills its sensitive information)" "^Date:" nil nil "12" "2018123119:38:17" "[oss-security] Re: Asserts considered harmful (or GMP spills its sensitive information)" (number mark "        noloader@gma Dec 31   78/3692  " thread-indent "\"[oss-security] Re: Asserts considered harmful (or GMP spills its sensitive information)\"\n") "<20181231191642.GB7238@zira.vinc17.org>" ("<CAH8yC8m90KssanbHt+YmVt7iLOiwWHASDqRYW5TQGeNV2zWXDw@mail.gmail.com>" "<20181231191642.GB7238@zira.vinc17.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 4059 invoked by uid 550); 31 Dec 2018 19:58:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15530 invoked from network); 31 Dec 2018 19:39:01 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to;
        bh=6mx55bD/STj0099xhMENeKD3tTgtubgBSanMe8KMTp4=;
        b=M0WqQYMiZZvzu/G8CzvUNT/nj1qs3zGtf4/FhOdLlOd+J4Ixp5Yb1yIDuniuVhQIrH
         5wCPsai8TR7pyCWhNsKuZzGOMoyHfL9UNsRz2j23In6A61T7N2rwRp6++OQQ3H1GfmQe
         34tQMct79PjGgRncEGfVMEHsiXNg6NXt9GlLptIYQ3G8nVjfAZC0XpJVLY9EAhyJuh5C
         JRErVleZNQfeSHY2SM1x05XCyOVCWL3rC6O7kL5RdCFSS5NahECN7+QsFcJC/jqyJnPP
         C2jU7h3gxyk9ixcNRIjG79koZgScDQgNevrvL+oFXs2/t9HmpMmx02JkxLgm/1t7n9B+
         yu/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to;
        bh=6mx55bD/STj0099xhMENeKD3tTgtubgBSanMe8KMTp4=;
        b=uDLJukpRViakTnjbz6iwiayU6wCELUc4B2yeJ3iEg2y8qP6Pj4X+Cy4qNuW0dQSWt6
         +/8Kwv6z2yRFqlWtDU2llqv9PJz3DTKTFnrpH7oFmmbyZtvBraTPuFPId56hW6qMIj/I
         LtNCFehKZrWJ/RLaJF45hfGI2ev/oiI19Arh6+XhXY4VrDEMGkYu8qYrQm3aq49scK2n
         9kQd/+29oTxBA1G0LQ8yTZ/KYDInR5lrswN77y9jcjS27lZXQhZZqUVZ/3XJOAJ0Vc4n
         NE64d8XlwsrhOrHYSvsLt1665Dtoq3NVhCczdgH5yJK0sE/8LgrqmJ7jPACx+rE6JWvP
         erIg==
X-Gm-Message-State: AA+aEWae9NQGIFKwN7ZTvnRrTX3SJzIrP0cDIpOd3FmbMrNcjjQRJ3pm
	hAPSimkD+T0A1om4DFpOxAj+kCX+Wp6dlAUZDMg=
X-Google-Smtp-Source: AFSGD/Xot37qE+XwHU66vaDeIAMkAjMurPIdj5ONojdvXa4aspZsYmRXzteuZlvVQQSXuuBWpBfCxMo4rYreBVKwnxM=
X-Received: by 2002:a02:410e:: with SMTP id x14mr23901800jaa.36.1546285128954;
 Mon, 31 Dec 2018 11:38:48 -0800 (PST)
MIME-Version: 1.0
References: <CAH8yC8m90KssanbHt+YmVt7iLOiwWHASDqRYW5TQGeNV2zWXDw@mail.gmail.com>
 <20181231191642.GB7238@zira.vinc17.org>
In-Reply-To: <20181231191642.GB7238@zira.vinc17.org>
Message-ID: <CAH8yC8=-Lt0_p2sTnqhJOWjapJ84LNR=8zJFF5oWs=-4xgxigg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Date: Mon, 31 Dec 2018 14:38:17 -0500
From: Jeffrey Walton <noloader@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Asserts considered harmful (or GMP spills its sensitive information)
To: Jeffrey Walton <noloader@gmail.com>, oss-security@lists.openwall.com, 
	gmp-bugs@gmplib.org

On Mon, Dec 31, 2018 at 2:16 PM Vincent Lefevre <vincent@vinc17.net> wrote:
>
> On 2018-12-31 13:03:27 -0500, Jeffrey Walton wrote:
> > The GMP library uses asserts to crash a program at runtime when
> > presented with data it did not expect. The library also ignores user
> > requests to remove asserts using Posix's -DNDEBUG. Posix asserts are a
> > deugging aide intended for developement, and using them in production
> > software ranges from questionable to insecure.
>
> That's much better than letting the program run erratically, with
> possible memory corruption and/or sensitive information leakage
> to unauthorized users. You'd better fix bugs in your program.

To play devil's advocate for this particular example, GMP could have
validated the parameters and refused to process the data. That is, the
function could have returned failure and avoided the potential
information leak.

> > Many programs can safely use assert to crash a program at runtime.
> > However, the prequisite is, the program cannot handle sensitive
> > information like user passwords, user keys or sensitive documents.
> >
> > High integrity software, like GMP and Nettle, cannot safely use an
> > assert to crash a program. To understand why the data flow must be
> > examined. First, when an assert fires, a SIGABRT is eventually sent to
> > the program on Unix and Linux
> > (http://pubs.opengroup.org/onlinepubs/009695399/functions/assert.html).
> >
> > Second, the SIGABRT terminates the process and can write a core file.
>
> That's the default behavior, but you can trap SIGABRT if you want.
> Of course, there is no guarantee because the memory may already be
> in an inconsistent state.

To play devil's advocate again, that strategy requires every developer
to have the knowledge and implement the sigtrap. On the other hand,
developers are usually pretty good about checking return values at a
call site.

> > This is the first point of unwanted data egress. Sensitive information
> > like user passwords and keys can be written to the filesystem
> > unprotected.
>
> This can occur with any program, even not using asserts, e.g. due to
> a segmentation fault (which may happen as a consequence of not using
> asserts, with possibly worse consequences).
>
> If you don't want a core file, then you can instruct the kernel not
> to write a core file. See getrlimit.

To play devil's advocate again, that strategy requires every user to
have the knowledge. If RTFM was going to worked, It should have
happened in the last 50 years or so.

Refusing to process the data and failing the API call requires no
knowledge on the user's part.

> > Third, the dump is sometimes sent to an error reporting service like
> > Apple Crash Report, Android Crash Report, Ubuntu Apport, and Windows
> > Error Reporting. This is the second point of unwanted data egress.
> > Sensitive information can be sent to the error reporting service. The
> > platform provider like Apple, Google, Microsoft and Ubuntu gain access
> > to the sensitive information, in addition to the developer.
>
> If you don't like them, do not use these services. Not using asserts
> can also yield a crash, which will have the same consequences.

I hope I don't sound too argumentative, but the summary seems to
conflate what's happening. You seem to be arguing all crashes are
outside the programs control. That holds sometimes but not always.

In this instance the library did not validate parameters and return an
error code. Instead it choose to crash. The library was not an
innocent victim of a memory corruption. It was a willing participant
in the data egress. Instigator may be a better term than participant
in this case.

Jeff
