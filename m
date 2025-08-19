Received: (qmail 28638 invoked by uid 550); 19 Aug 2025 02:44:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 23806 invoked from network); 19 Aug 2025 02:24:32 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1755570263; x=1756175063; darn=lists.openwall.com;
        h=in-reply-to:from:content-language:references:cc:to:subject:reply-to
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=T1W8BxAh/snN6gEcx+nniUbeXc+6JY52Dm+UsFisn7I=;
        b=WrlEzrNIXSxOANjZGl8qQDBflgu945+gGOh7dW7l35cIXFzi3PE6159ZKDYKMfG7N2
         9edLwXajnLGoZ/oaZ0dwxCcr1r2Za6pdquC7KIPTzuro0ema8DjTbXu93d/jzyOOk0Fi
         3LmaU8N6Iddu0u2HlCWCOo5z1abBpGRY2QjssTt/XiPlP2KfEijOCDNFl7U8YQB3M5mE
         ksHhWrVIae0tERvczitxx2lnWx7UdcCwvYgD/XY8INtN2RB631slNd+CafE/Jq7DXiGn
         jmaXKs3cejEtRRnfYmoe3VvEIa6/JSSjhD0AnKUj2ZNsVmZZFgDXwoUpyaUkdqgNSLiX
         U2xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755570263; x=1756175063;
        h=in-reply-to:from:content-language:references:cc:to:subject:reply-to
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=T1W8BxAh/snN6gEcx+nniUbeXc+6JY52Dm+UsFisn7I=;
        b=FCX3gB//fZRqsgWSIYlealqkcnQFdX0h22E4Knqk728NUXyg4tZ2PjDoQKLe2ZOIjI
         rIzwUQU5HVLjh+AhHbq4hdqmMB+G3VMFhaIi98GT9zTEYEqRBlJ/N9NqsF1zrUN2vaGZ
         6ooIJV0cBGQ4PYBjZdRMSgsWavm/JdxM2r2CuZjlJs5QeM1f6ObS2NMgcR9HpA/iKPFV
         ZruWmoEnf22tXKLcm/j6bSgRDmw0sjYgygWLF8WF98PMwW5LCex/ljg5DCbl4ou4n592
         KO+x78nB0EESmM6qftAihjqldRjOmHB4P5d2qmTOXE/quCFIl+K3sW9nfXr+8ZthAjW0
         Nhng==
X-Gm-Message-State: AOJu0YwdLzHE2GBdXJubcsYysjC04bTexAC3LFMa4lHOkHdwEA5dbcB+
	EWqDUU+NFxi5NPDdxCx8daEdWCsu+pVBvY3A0tBMU6a3nqwhp1ner5nf3jKtbA==
X-Gm-Gg: ASbGncvLgEk8e2YJzXFOITQMR0rBXoO9DOvP2dhuMwteE7ptumsH32CGjuawwzPuit0
	Yg2GXV3N4wbsa69cHBVR46vFWKxcKBcCkbDPFQUn6V+3qydRoXlAIQmkoTVA1ul9b9SQb7HEXHT
	oKneA0Gc2jNolqXt06r5lW8k1abOEu4dRq6ZLwwjvWia5DQmnTEMcJQjliNFT7gzsLN3awCcCxl
	7/i+ULnCNpt0jtCHbrgMnmIrRNulmqNLrQEkDxihJlpM02qIPizJuhnx1PYXLSHtITLT5J8Rdhc
	f2bF2UfJYTYCUSeLvIGEd8FqkAH+rhWKF2m8DALIFUd4d2dwEoFetETlEimDicpb5OqKAOlQlqy
	ODVEzx/Fv6nfrYr7gN6A=
X-Google-Smtp-Source: AGHT+IEaBjuYue7U70PkqnSEYbecB17f3RG22csulaqzP188LXY/Pg2SpscigSYXlBdo9S2Owr+/jg==
X-Received: by 2002:a05:6820:1691:b0:61b:8f98:99e2 with SMTP id 006d021491bc7-61d91a1a248mr562781eaf.8.1755570262530;
        Mon, 18 Aug 2025 19:24:22 -0700 (PDT)
Content-Type: multipart/alternative;
 boundary="------------wfny12twm1aA0YyfSWhsI06X"
Message-ID: <a6370d77-36a6-4b26-85a8-4fc8d2354cf3@gmail.com>
Date: Mon, 18 Aug 2025 21:24:07 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com, "David A. Wheeler"
 <dwheeler@dwheeler.com>
Cc: Vincent Lefevre <vincent@vinc17.net>
References: <20250813203857.GA11693@unix-ag.uni-kl.de>
 <87a53zyugg.fsf@gmail.com> <20250817010958.GA607521@qaa.vinc17.org>
 <20250817140937.GA16226@unix-ag.uni-kl.de>
 <B13F08EE-9A89-4D37-AD66-0772C042781D@dwheeler.com>
Content-Language: en-US
From: Jacob Bachmeyer <jcb62281@gmail.com>
In-Reply-To: <B13F08EE-9A89-4D37-AD66-0772C042781D@dwheeler.com>
Subject: Re: [oss-security] blocking weird file names (was: xterm terminal
 crash due to malicious character sequences in file name)

--------------wfny12twm1aA0YyfSWhsI06X
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 8/17/25 20:44, David A. Wheeler wrote:
> [...]
>
> I proposed forbidding such characters to POSIX. They *did* add a few mechanisms to POSIX
> to make it somewhat easier to handle filenames with control characters
> (e.g., find -print0 and xargs -0). However, although they do not *require*
> that operating systems allow these filenames, they are not forbidden either.

My understanding is that POSIX allows almost any syscall to return EPERM.

> I have a draft Linux Security Module (LSM) that lets you determine
> what kind of filenames are allowed to be created. By default it would require
> non-control-chars, no leading '-', no trailing ' ', and UTF-8 encoding,
> but it would let you configure further. I intend to go back to that
> to finish it off & propose it. My original proposal merely prevented creation;
> it would be possible to hide them entirely, but that comes with its own issues.

If you do that, please make absolutely certain that any processes 
running from files that would be hidden (and therefore blocked from 
exec(2)) are killed when the policy becomes effective.  I once (years 
ago) cleaned out a backdoor that was named 'syslogd ' (with the trailing 
space).  (Clever, except that the real syslogd does not open a raw 
socket and *does* open the log files...)

Also, if you want to block trailing whitespace, please do not forget the 
various *other* Unicode space characters and their UTF-8 forms.

Could you allow those files to appear in directory listings (including 
stat(2)) but open(2)/exec(2)/etc. would return EPERM? I suggest that 
unlink(2) should be unrestricted, and perhaps also open(..., O_WRONLY) 
(to allow such files to be shredded if the admin desires).

Would a per-process category be feasible?  This would allow an admin to 
"unlock" any such files found for a limited subset of processes 
(presumably the admin's shell) to facilitate forensic collection and/or 
secure deletion.

Does this need to be an entirely new module or could it be an extension 
to SELinux?


-- Jacob


--------------wfny12twm1aA0YyfSWhsI06X
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <div class="moz-cite-prefix">On 8/17/25 20:44, David A. Wheeler
      wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:B13F08EE-9A89-4D37-AD66-0772C042781D@dwheeler.com">
      <pre wrap="" class="moz-quote-pre">[...]

I proposed forbidding such characters to POSIX. They *did* add a few mechanisms to POSIX
to make it somewhat easier to handle filenames with control characters
(e.g., find -print0 and xargs -0). However, although they do not *require*
that operating systems allow these filenames, they are not forbidden either.</pre>
    </blockquote>
    <p>My understanding is that POSIX allows almost any syscall to
      return EPERM.<span style="white-space: pre-wrap">
</span></p>
    <blockquote type="cite"
      cite="mid:B13F08EE-9A89-4D37-AD66-0772C042781D@dwheeler.com">
      <pre wrap="" class="moz-quote-pre">I have a draft Linux Security Module (LSM) that lets you determine
what kind of filenames are allowed to be created. By default it would require
non-control-chars, no leading '-', no trailing ' ', and UTF-8 encoding,
but it would let you configure further. I intend to go back to that
to finish it off &amp; propose it. My original proposal merely prevented creation;
it would be possible to hide them entirely, but that comes with its own issues.</pre>
    </blockquote>
    <p>If you do that, please make absolutely certain that any processes
      running from files that would be hidden (and therefore blocked
      from exec(2)) are killed when the policy becomes effective.  I
      once (years ago) cleaned out a backdoor that was named 'syslogd '
      (with the trailing space).  (Clever, except that the real syslogd
      does not open a raw socket and *does* open the log files...)</p>
    <p>Also, if you want to block trailing whitespace, please do not
      forget the various *other* Unicode space characters and their
      UTF-8 forms.</p>
    <p>Could you allow those files to appear in directory listings
      (including stat(2)) but open(2)/exec(2)/etc. would return EPERM? 
      I suggest that unlink(2) should be unrestricted, and perhaps also
      open(..., O_WRONLY) (to allow such files to be shredded if the
      admin desires).</p>
    <p>Would a per-process category be feasible?  This would allow an
      admin to "unlock" any such files found for a limited subset of
      processes (presumably the admin's shell) to facilitate forensic
      collection and/or secure deletion.</p>
    <p>Does this need to be an entirely new module or could it be an
      extension to SELinux?<br>
    </p>
    <p><br>
    </p>
    <p>-- Jacob<br>
    </p>
    <p><br>
    </p>
  </body>
</html>

--------------wfny12twm1aA0YyfSWhsI06X--
