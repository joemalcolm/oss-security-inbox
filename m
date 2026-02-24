Received: (qmail 11610 invoked by uid 550); 24 Feb 2026 16:40:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 14061 invoked from network); 24 Feb 2026 09:57:55 -0000
ARC-Seal: i=1; a=rsa-sha256; t=1771927065; cv=none;
        d=google.com; s=arc-20240605;
        b=XaulZcmeQxfXTpfK6zhRoLe2afCPNqrZghngULdjFGzfwQPkXeRh89hi4OG5hpjraB
         znZi3yPkX7quIIZUyfIEjpxtN+/nDGl6uxWiSmrEhcw5fVCc4eTlVd9oDZ61K1Vrdf63
         Lra/WuRbmIscrTiNt2iP2PmrCF9H/Iu0nmArAmayl8Vl1+VDjUP6Dx+R69Yojr+xkvJ4
         4b8kB4R9lE1RavqatBX/wEnc6bxrGd4xQ/y6ojQkdLyqWTfnecPBwyqnqoxc0l7hmtoh
         JlOgfZwG8gycgg3GDkZxhywUxfHO1UpQHEgPxto/4fOUtDKGAATHxe8c6k1McVT/lR+P
         +LGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=jEcp+wBzl3N5tR49SCU4Rt/nNEZroiK4E76aWJ77Fhw=;
        fh=o8J4zPx4wIk4Lky0peT/mqR8S0mfqhrqu28uxaoKsxA=;
        b=dCgvetNOfdR82/O/n0kxBfkvrhNkzWjHn1mv3JzFCQ8b9zEV2FKSKcpBObQW4Wv3Xq
         r5hJlHio254tHb+Bp7uxz7uBJsDA3YMupHuDa/LBLOHdRsXTpRqLdDAlhpUpn01yG61J
         vPYgiD98uYQRodBF/lmCLhwagEdQwGIsLnF7MauWv8qScf5oDtpU07Vp9xWE1TGc5+6f
         oA3J7UrpMs5eWqW4gIvBQ92V4Ou/GqXuZ8RlZiwdo76o5asNCPlaGK+NtIY+PnnWX/bK
         kWXPRs+3oPQDSw22abSdM67h7brX8fJbVcRzgcSr9ArQBeuotgrObFTj+rdHpm430ve+
         Ot9g==;
        darn=lists.openwall.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=safebreach.com; s=google; t=1771927064; x=1772531864; darn=lists.openwall.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=jEcp+wBzl3N5tR49SCU4Rt/nNEZroiK4E76aWJ77Fhw=;
        b=QyY9HJWzlJapuzoztX6J8yzEHB507WFwxhUBE1MT5P0khZbkB0MBAFt1Gute2+QcFZ
         8JjA4Ll4ZhbZ2R9PTne5y4xx1un1rIRHnlSYkh8oJJx7t2Eb92hMNuZsUHdXaZzLQRAG
         VU4aQPLyr3x96EL7YTIGr+Y8NuFHlC1aczMfI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771927064; x=1772531864;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jEcp+wBzl3N5tR49SCU4Rt/nNEZroiK4E76aWJ77Fhw=;
        b=aqGGs/JeImgIzYw421Gm004NxpTqJdH5wmmPFlUnv6P7RT10981NgTBg4PaRiCU6d5
         K+Ki/WwuPmtP4JSis5BNvu3MZ6RBWKLLat2IR6K3jTUIBz4UxUF01np/yxa9ufED8Jw7
         lbjzWToo7QxpF40PRrTOaDeVpGRRNFKwB8cmKt44+1WRjMm3voolbdRycU1d0r+OaTEE
         u52NBw9FwcS30iuAayEn2oj3tgIyV9GTYhb3EoqldzdmJsbAoc1GaKbWZUHcCyfhJWpF
         +XTcPxsJM6Nuzoxe2uZTc/wGm48NOI5LY1HYxmtY/O8pamskXDnYXpVosGd2+oEncnzN
         ++ww==
X-Forwarded-Encrypted: i=1; AJvYcCXUhwe6x4aaX1fgVIKl4pXwnfTSI9zmSLh0tCj0bU+xmptwKf5P6BRWdgN8A08dHArFDOxKYn3Ik/x6crM=@lists.openwall.com
X-Gm-Message-State: AOJu0YzYGwVCcSorIu/Lx/A0hEI6ht1Oa4G0upGjY+wM2iUmv9fy5iXr
	yQ42WA8sBdZHt2ZjU6HQIEoPAEDjHnY2rw9899yG+GtvBG0oyLFPps0ulawA5ouOoecSrUwB+JC
	PtVkxJMwEREZCKjHdW++L8M28/G51Y3IZ7OQ3bkRsCtPYM2SQLQDiE3E=
X-Gm-Gg: ATEYQzz+Tdda5GZHHBnLqbhjsEOjkBKLQMHw9yJnXPEXJ069PVaOQV/hJwcNTyIbQne
	t6lpwwdkp7dCr9f9ixM6d3rD3yRmV6rE7q41jsMBNU8gLjHPSI0bACtpygRrfZBD5LcALu2350n
	uQQf0IuBBELvTfZo0eOmjGPWl/Folp4zfKXYgeMuFFmw1bmGidC0OrsJyGHgH/k7d4QRB5MJzK4
	Ec4R/hqeq7S+H/Ntof67eB3fq4MjmuS4yPok9UOmdm7t7Si5mCFihv0xDasiPUN/ck71YyGBUIL
	laumQLcSg5ddxxyTIUojj1O6ZP0TQYvn+FV86vas76boB17kbfiaqJyaaV1RJvzfmbQpWC7b2m8
	L9NyDoOKR
X-Received: by 2002:a05:690e:120e:b0:64c:9fe1:38db with SMTP id
 956f58d0204a3-64c9fe13979mr753662d50.3.1771927064525; Tue, 24 Feb 2026
 01:57:44 -0800 (PST)
MIME-Version: 1.0
References: <CAB1hGqQwnSzEqtrefwqAxD+rWGu_EXVDmu-btMrNYqMzkzc9Kw@mail.gmail.com>
 <20260206172730.GA12303@unix-ag.uni-kl.de> <877bso8mhf.fsf@josefsson.org> <20260224011702.27987-1-justin.swartz@risingedge.co.za>
In-Reply-To: <20260224011702.27987-1-justin.swartz@risingedge.co.za>
From: Ron Ben Yizhak <ron.benyizhak@safebreach.com>
Date: Tue, 24 Feb 2026 11:57:34 +0200
X-Gm-Features: AaiRm53xoYKv6GcDc67VL7zESBg0TCG_8UDRiP45qDeSlwqgDPg7Rnk7sCb5bjY
Message-ID: <CAB1hGqSJPOQwc8h7g4u4WXjtDSupwkA8HjzEyU2gzbL5uavneg@mail.gmail.com>
To: Justin Swartz <justin.swartz@risingedge.co.za>
Cc: bug-inetutils@gnu.org, oss-security@lists.openwall.com, 
	simon@josefsson.org, auerswal@unix-ag.uni-kl.de
Content-Type: multipart/alternative; boundary="0000000000003fcaaa064b8eeb17"
Subject: [oss-security] Re: Telnetd Vulnerability Report

--0000000000003fcaaa064b8eeb17
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi all,

I=E2=80=99d like to ensure we follow the standard CVE process here. Standard
practice dictates that a CVE is issued per individual fix. Generally, once
a fix is merged and released, it is assigned its own CVE. Even if that fix
is later bypassed, the original merge stands as a unique event in the
codebase, meaning we should issue two separate CVEs rather than grouping
them.

Justin - Thank you for emphasizing what I already noted previously in this
thread:

"In my opinion the proposed fix will stop this exploit, but the main issue
stays. The issue exists as long as unauthenticated clients can set
arbitrary environment variables in the memory of telnetd and its sub
processes.
The best solution will be that the environment variables set by the client
will only apply on the shell process and only after the client has already
authenticated. No process running as root should run with any environment
variables set by the client."

In spite of this opinion, it seems that the decision of the developers was
to first release something quick that will as least start by mitigating the
specific exploit that I shared, even though the main issue remains. I guess
that a concrete exploit that utilizes different environment variables might
change the prioritization for implementing an "AcceptEnv-like" logic in GNU
telnetd, but they might choose to just unset the environment variables that
you find as exploitable.

Best regards,
Ron Ben Yizhak

On Tue, Feb 24, 2026 at 3:16=E2=80=AFAM Justin Swartz <
justin.swartz@risingedge.co.za> wrote:

> Greetings,
>
> I have been reviewing the recent vulnerability report by Ron Ben Yizhak
> regarding CREDENTIALS_DIRECTORY, as well as commit 4db2f19f which
> introduces unsetenv("CREDENTIALS_DIRECTORY") to address the problem.
>
> After becoming aware of CVE-2026-24061 (telnetd in GNU Inetutils through
> 2.7 allows remote authentication bypass via a "-f root" value for the USER
> environment variable), I was curious to find out whether there'd also been
> a potential regression of CVE-1999-0073, described as: telnet allows a
> remote client to specify environment variables including LD_LIBRARY_PATH,
> allowing an attacker to bypass the normal system libraries and gain root
> access. I can confirm that this is still an issue 27 years later, despite
> attempts at blacklisting environment variables by prefix or full name.
>
> The problem stems from telnetd executing /bin/login in a root-to-root
> context, which means that AT_SECURE is set to 0 by the kernel in the
> process's auxiliary vector. When AT_SECURE holds a positive value, it
> informs the dynamic linker (ld-linux.so) and libc to enter a
> "secure-execution mode" where a bunch of interesting environment variables
> are discarded or, at least, defanged if present. In other words, the
> responsibility is on telnetd itself to ensure that none of those
> potentially interesting, and attacker controlled, variables make their way
> to /bin/login.
>
> While using unsetenv() negates a user's ability to exploit the
> login.noauth vector, the possibility still exists for the inclusion of
> variables of interest to GNU gettext (such as OUTPUT_CHARSET or LANGUAGE)
> and glibc (such as GCONV_PATH) via the telnet protocol itself.
>
> For example, by injecting OUTPUT_CHARSET and LANGUAGE, an attacker can
> persuade gettext that a character set conversion is necessary. This forces
> gettext to call libc's iconv_open(), and because AT_SECURE is 0,
> iconv_open() will use an injected GCONV_PATH in its quest for a
> gconv-modules file. Assuming the attacker already has a local unprivileged
> account, or at least a means of uploading files to the host (and knowing
> the location of the uploaded files), a custom gconv-modules file will all=
ow
> arbitrary shared objects to be loaded soon after /bin/login attempts to
> print a localized prompt.
>
> For proof of concept, I've declared a broad selection of LANGUAGE codes
> for the best chance of matching an installed locale. An attacker with loc=
al
> access could simply determine what's actually installed and select only o=
ne
> that doesn't match the system's default locale instead. Similarly,
> OUTPUT_CHARSET has been chosen as a deliberate mismatch against the very
> common choice of UTF-8:
>
>   abuser@prospecton.hyperama:~$ ls -al .gconv
>   total 184
>   drwxr-xr-x 2 abuser abuser   4096 Jan  1  1970 .
>   drwxr-x--- 5 abuser abuser  36864 Jan  1  1970 ..
>   -rw-r--r-- 1 abuser abuser    256 Jan  1  1970 gconv-modules
>   -rw-r--r-- 1 abuser abuser  15568 Jan  1  1970 libcash2trash.so
>
>
>   abuser@prospecton.hyperama:~$ telnet -l abuser
>   telnet> environ define GCONV_PATH /home/abuser/.gconv
>   telnet> environ export GCONV_PATH
>   telnet> environ define LANGUAGE fr:de:es:it:pt:nl:sv:pl:uk:ru:zh_CN:ko:=
ja
>   telnet> environ export LANGUAGE
>   telnet> environ define OUTPUT_CHARSET ISO-8859-1
>   telnet> environ export OUTPUT_CHARSET
>   telnet> open 127.0.0.1
>   Trying 127.0.0.1...
>   Connected to 127.0.0.1.
>   Escape character is '^]'.
>
>   Linux (localhost) (pts/6)
>
>   Connection closed by foreign host.
>
>
>   abuser@prospecton.hyperama:~$ ls -al .gconv
>   total 184
>   drwxr-xr-x 2 abuser abuser   4096 Jan  1  1970 .
>   drwxr-x--- 5 abuser abuser  36864 Jan  1  1970 ..
>   -rw-r--r-- 1 abuser abuser    256 Jan  1  1970 gconv-modules
>   -rw-r--r-- 1 abuser abuser  15568 Jan  1  1970 libcash2trash.so
>   -rwsr-sr-x 1 root   root   125640 Jan  1  1970 trash
>
>
>   abuser@prospecton.hyperama:~$ .gconv/trash -p
>   # id
>   uid=3D1001(abuser) gid=3D1002(abuser) euid=3D0(root) egid=3D0(root)
> groups=3D0(root),1002(abuser)
>
>
> Once the telnet connection opens, /bin/login tries to print the localized
> prompt but gettext recognizes the encoding mismatch and calls iconv_open()
> to parse the gconv-modules file in the directory referenced by the inject=
ed
> path before loading the shared object that turns cash ($) to trash (#). T=
he
> connection drops because I included a call to exit() once the payload has
> executed. As illustrated above, the payload effectively asserts root
> privilege and makes a copy of /bin/sh with SUID/SGID permissions. Note th=
at
> no authentication via telnetd was required, nor performed, for this
> privilege escalation trick to occur. Also note that this is just one of
> many possible methods that may be used to exploit this condition.
>
> In my opinion, to fix this issue and finally put the ghost of
> CVE-1999-0073 to rest: telnetd must drop the blacklist approach and adopt
> the OpenSSH AcceptEnv-style approach suggested by Simon Josefsson [1],
> which amounts to preparing a brand new environment for /bin/login based on
> a strict whitelist of variables names considered to be "safe", and perhaps
> a healthy dose of input sanitization for their respective values.
>
> In terms of the CVE that Ron Ben Yizhak had asked about earlier in the
> thread: I think it might make the most sense to co-ordinate a single CVE
> for "Improper environment sanitization in telnetd" that comprehensively
> covers both the CREDENTIALS_DIRECTORY vector and this dynamic linker esca=
pe.
>
> I'm happy to share the intentionally redacted payload privately with the
> maintainers should any help be required to reproduce the proof of concept.
>
> Regards,
> Justin
>
> ---
>
> [1] https://lists.gnu.org/archive/html/bug-inetutils/2026-02/msg00002.html
>

--0000000000003fcaaa064b8eeb17--
