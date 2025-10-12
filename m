Received: (qmail 11597 invoked by uid 550); 12 Oct 2025 23:27:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 19815 invoked from network); 12 Oct 2025 22:59:49 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760309980; x=1760914780; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=J1yOLvNXAjS9vIfRe3EA/iWKhqn/5AqDoFaW8XjseyE=;
        b=g6ZVhfG/WVKTjEPMtKNS2qqjesIZcDkUC73NlzCEbQW645NoZK3e/5DyVPF8pHSnOk
         7r1e7JKxInE/euJRuEk0Wdt9LMtaEgQMrl9wDyjP7COi0604a8Bq8NKfGxVfXhb5DDjq
         WRPup/72wocxZxJrAfmoxO4jvYNJKlv29qEXV6NVUR+uKSNW2YeSG+ji+sEQVARgUaWB
         58lcBVGUTt403PdbUaEkcdwpINGjBBt4U5dKaMXinc2TSS1tk/ucNPZZ/hf8lDOSXGDm
         8PLSHABNFCtDP4OSDgUpQsW5v5MWccIi62UoSFuFaOGmQHC+pCx/1xQGtp6YHnyo8rHK
         SIsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760309980; x=1760914780;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=J1yOLvNXAjS9vIfRe3EA/iWKhqn/5AqDoFaW8XjseyE=;
        b=RvFqdAuoZSszGu3Ue9GP6n9/e6rioeZh4LXN4AA6jhxanIQoYTAQapF0+lPu0V5IIT
         3W/gWytLCk8D+fIncvHXbnWtvAJKcDI76wADgKHbc50ktoTZFzofEThkPei/iwTW6GpQ
         +twPBuPYN+RgqxWEzjUb3iECRI66yUFHBIAMiPKcdxI5bgUtdHd0eC5wecgqz1TIE8H+
         ePvbCFV6wN+HDBZESezF97jKyZIvg8HVM1JdbgSoeHYlirkBK3loT7oteJb7vYdY47vj
         DUMpVS0Up+GCgbUuHI2RCx8Rf7dKpZ3ALC3ZKwxWzy1dfr+LX1mSNQ5HLpVWnZOWUEAi
         qYXA==
X-Gm-Message-State: AOJu0YzePqYBXDv0fGNQa00BUuGd/ZhUJMIhmBkEm2YegRY9LJeT4gJA
	+IKeyJJIG+XZdVrikwxJD4tZIMDMTBs8trAbNqsNzpH5VBLjVaV/aCTutX2gOCO87lmIKbBaIQ4
	l5SEkPuy+liWIusK9zKJo2taS+JF72vnn69bJ4Cc=
X-Gm-Gg: ASbGncv1K4ggNWRAuClOWf4iog2fAjNN3IPYKZQwH1kL69Ru2vn7F38d9nuJczCV7VG
	7ayHw/bkVcXlllFw8UTkW9j/vWNdpVOIR30vFc6gc1Zv8QdYgCeE+QwVGcDeYALqt5s/TqmxNwV
	YXoOSbree5CT9DmEhPyF794HNQsWM3RXWqEGCs87K5uGk203NLYIQVmAAgNk0IqmC5+CPnug/nw
	48eKQTH+1ZngNkWXcFZMVqY2ZAuw3e2BwDLvpUdxyDbI9xQSnsa0nai1GY=
X-Google-Smtp-Source: AGHT+IHtIZ5zFhtlkI2dEZDDiRybP4Hi4NPjhyx9CoYyfQUa+50oDCvbGNdQqotwUau7TcKEDy9cxoNdCeKudR7nNd0=
X-Received: by 2002:a17:907:1b1f:b0:b3f:fcc7:6ed8 with SMTP id
 a640c23a62f3a-b50aae98249mr1873722166b.29.1760309980063; Sun, 12 Oct 2025
 15:59:40 -0700 (PDT)
MIME-Version: 1.0
References: <CAMqWyhi=xW2sq2+Hb2aJ=ta-zfi_Zay6CztQ9mvDqgjbKr1HpQ@mail.gmail.com>
 <a7169751-2b66-4123-b2b5-09e35623ff80@gmail.com> <CAMqWyhhFgATrYJtxFP-hGLR3FN2XhnvZLHVyNtxpWdAp6fFJNQ@mail.gmail.com>
 <5d16e4d9-a25d-4b5e-946b-4c5243a54bcb@gmail.com> <CAMqWyhgUK+4dW=jxztFYopDxv5apLYsGcWN=1sbfHmmUfePduw@mail.gmail.com>
 <aJxWPAv5ew3BCm+O@adhil>
In-Reply-To: <aJxWPAv5ew3BCm+O@adhil>
From: lunbun <lunbun021@gmail.com>
Date: Sun, 12 Oct 2025 15:59:27 -0700
X-Gm-Features: AS18NWCocNUL2qe4fd8jihdyyLzMzYjGJWXbI81p6q7RxfXNE070vqgrWPnzUBo
Message-ID: <CAMqWyhgY=k3h8mKmjPiy-K6mBHjmjW_gMbJ+yn9H=YLyKKHrsA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000000e6de20640fe1bfd"
Subject: Re: [oss-security] CVE-2025-55188: 7-Zip: Arbitrary file write on
 extraction, may lead to code execution

--0000000000000e6de20640fe1bfd
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi all,

Does anyone know how might I get the CVSS score of this vulnerability
(CVE-2025-55188) increased?

I recently saw an advisory for CVE-2025-11001, a very similar
arbitrary file write in 7-Zip due to symbolic links
(https://www.zerodayinitiative.com/advisories/ZDI-25-949/).

However, CVE-2025-11001 is clearly different from CVE-2025-55188,
as the advisory states that CVE-2025-11001 was patched in 25.00.
My proof-of-concept symbolic link attack for CVE-2025-55188 works in
version 25.00.

I am concerned that due to the low CVSS score of CVE-2025-55188, most users
do not realize that 25.00 is still vulnerable to symbolic link attacks.

I've already tried contacting MITRE 8 times to update the description
and CVSS score. I've only received one response, and that was that
not enough public information was available.

I then published a proof-of-concept and vulnerability explanation
(https://github.com/lunbun/CVE-2025-55188 and
https://lunbun.dev/blog/cve-2025-55188/), but MITRE is still unresponsive
to my update requests.

I suspect that MITRE is just busy with a huge backlog of CVE requests,
but I am not sure what to do here. If anyone could offer any advice,
I'd greatly appreciate it.

Thanks,
lunbun

On Wed, Aug 13, 2025 at 3:00=E2=80=AFAM Jens-Wolfhard Schicke-Uffmann <
drahflow@gmx.de> wrote:

> On Sun, Aug 10, 2025 at 05:04:24PM -0700, lunbun wrote:
> > If a symlink targets a nonexistent directory, the write will fail. 7-Zip
> by
> > default will print an error message, like:
> > ```
> > ERROR: Cannot open output file : errno=3D2 : No such file or directory =
: ./
> > malicious_link/file.txt
> > ```
> >
> > This applies similarly to other filesystem errors, like insufficient
> > permissions or unwritable directory.
> >
> > However, 7-Zip by default continues with extraction regardless of the
> error,
> > which is why an attacker can use this "shotgun" strategy. These errors,
> though,
> > would hopefully help notify the user that something suspicious is
> happening.
> Never forget terminal escape codes. At least the 7-Zip my debian
> has dumps the raw filename in those error messages. This allows an attack=
er
> to clean the specific error lines after they have been output (with
> another, later filename containing the required escapes).
>
> With some fantasy, it might also be possible to massage the overwrite
> prompts (they're also unescaped) into suggesting to choose "(A)lways",
> e.g. by good cursor movement and setting a scroll region far above for
> the real prompt.
>
>
> Regards,
>   Drahflow
>

--0000000000000e6de20640fe1bfd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,<br><br>Does anyone know how might I get the CVSS s=
core of this vulnerability<br>(CVE-2025-55188) increased?<br><br>I recently=
 saw an advisory for CVE-2025-11001, a very similar<br>arbitrary file write=
 in 7-Zip due to symbolic links<br>(<a href=3D"https://www.zerodayinitiativ=
e.com/advisories/ZDI-25-949/">https://www.zerodayinitiative.com/advisories/=
ZDI-25-949/</a>).<br><br>However, CVE-2025-11001 is clearly different from =
CVE-2025-55188,<br>as the advisory states that CVE-2025-11001 was patched i=
n 25.00.<br>My proof-of-concept symbolic link attack for CVE-2025-55188 wor=
ks in<br>version 25.00.<br><br>I am concerned that due to the low CVSS scor=
e of CVE-2025-55188, most users<br>do not realize that 25.00 is still vulne=
rable to symbolic link attacks.<br><br>I&#39;ve already tried contacting MI=
TRE 8 times to update the description<br>and CVSS score. I&#39;ve only rece=
ived one response, and that was that<br>not enough public information was a=
vailable.<br><br>I then published a proof-of-concept and vulnerability expl=
anation<br>(<a href=3D"https://github.com/lunbun/CVE-2025-55188">https://gi=
thub.com/lunbun/CVE-2025-55188</a> and <br><a href=3D"https://lunbun.dev/bl=
og/cve-2025-55188/">https://lunbun.dev/blog/cve-2025-55188/</a>), but MITRE=
 is still unresponsive<br>to my update requests.<br><br>I suspect that MITR=
E is just busy with a huge backlog of CVE requests,<br>but I am not sure wh=
at to do here. If anyone could offer any advice,<br>I&#39;d greatly appreci=
ate it.<br><br>Thanks,<br>lunbun</div><br><div class=3D"gmail_quote gmail_q=
uote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Aug 13, 2025 =
at 3:00=E2=80=AFAM Jens-Wolfhard Schicke-Uffmann &lt;<a href=3D"mailto:drah=
flow@gmx.de">drahflow@gmx.de</a>&gt; wrote:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">On Sun, Aug 10, 2025 at 05:04:24PM -0700, lunbu=
n wrote:<br>
&gt; If a symlink targets a nonexistent directory, the write will fail. 7-Z=
ip by<br>
&gt; default will print an error message, like:<br>
&gt; ```<br>
&gt; ERROR: Cannot open output file : errno=3D2 : No such file or directory=
 : ./<br>
&gt; malicious_link/file.txt<br>
&gt; ```<br>
&gt; <br>
&gt; This applies similarly to other filesystem errors, like insufficient<b=
r>
&gt; permissions or unwritable directory.<br>
&gt; <br>
&gt; However, 7-Zip by default continues with extraction regardless of the =
error,<br>
&gt; which is why an attacker can use this &quot;shotgun&quot; strategy. Th=
ese errors, though,<br>
&gt; would hopefully help notify the user that something suspicious is happ=
ening.<br>
Never forget terminal escape codes. At least the 7-Zip my debian<br>
has dumps the raw filename in those error messages. This allows an attacker=
<br>
to clean the specific error lines after they have been output (with<br>
another, later filename containing the required escapes).<br>
<br>
With some fantasy, it might also be possible to massage the overwrite<br>
prompts (they&#39;re also unescaped) into suggesting to choose &quot;(A)lwa=
ys&quot;,<br>
e.g. by good cursor movement and setting a scroll region far above for<br>
the real prompt.<br>
<br>
<br>
Regards,<br>
=C2=A0 Drahflow<br>
</blockquote></div>

--0000000000000e6de20640fe1bfd--
