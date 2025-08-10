Received: (qmail 29998 invoked by uid 550); 10 Aug 2025 13:17:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 22454 invoked from network); 10 Aug 2025 05:55:36 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1754805326; x=1755410126; darn=lists.openwall.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=X0biIEQP/qvUhsqI2T7xBZ/0g6PGWmKDY35Gp+gMMJw=;
        b=hi7rKD/4q0cvaJdWZEUm8bCZr/gFsUlMQTixOmJY4hYY0O6PAwnNM4fqY9twbzcANh
         wOZg5ZGgvcOwqJWEj4KzYxoJ1TjypcgvsISLw3Dl24eraXBjUhf6kpruYSaZOkKs3UHn
         8FUbU9W8WdITgT9ocQZ5HaRJ3EnvLtCvJkBgLatV3uYeq8LnOhdRJmr54OsmsV5FvCQO
         qzMLKn99gjADJqQRYWnCuJsiIUfmHY299iSH0FX9PKL7+Az3lGQJuDEGSjcVwMGJi8fb
         eUUB5xLy573beuNCTPyYngTkYsPd+FrPEcPxvMrPKos2HloFexNIlTKbJ1GTeLuXETbY
         YREg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754805326; x=1755410126;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=X0biIEQP/qvUhsqI2T7xBZ/0g6PGWmKDY35Gp+gMMJw=;
        b=pRkCGmKqUx1lgbSY8+10PVAQptTKdY8i5deNxUflysE954Qre0X+bVPT2Qj/ig4NG0
         K/VhxKPEoo0ZgrobgYRZWGSiI6BWhanW0f5hY1hp2jp/j6xjk0mWhHPtKbEdvTVr1FSQ
         jnSZPIXOL1u6lhvn3xXdvjYo5ZfhT44uImDxHEpeR+HjiRHSdjiLR7ml9vBJVlKFpp6H
         KKNpQOqam+s+43GnBtad5OPsjZfSKLGJlJdXspxfS8366xTguXTVQ5bzf6mXds0ZxIvW
         ctJQtZpJ4iiaVVWECiiuw6TitIoIVOm2zlGs6khOSAA9cYF+qa7ZioKfMkk86SiaJM/d
         2QAg==
X-Gm-Message-State: AOJu0YzideLC2nNr4eTwKkAawxAWMpHF8NDrLJJM2rIK5Q1QcBX11RzS
	kVWWxB/+hChLC62pjktTPHiT5h+h0jH91hh3jZN6vIUMy8ftG/U/5mhc+cDhtiIu8iTYeYh+vKW
	e73+bCTlama0uNTNO0Wu9GhF2If+8f4HDvScA+no=
X-Gm-Gg: ASbGncthZg3X9OGaZNdoNaAkRYL7gcNYr5YxhCOqvV+4MkTZA/KixNefjScYUuk15NA
	dUzBi9aUiPob75OV75F3DqVIbHzNi1HWwocxaAaK3MdpgjbSg3/Ve9kRHIz2Q3hp9pdq27EW2ws
	TmHuY6AA23x0d+BidmFfgdtAE0nrkE+X27Z21MvKd9zbeZktxsec2VG4lJwMSSGxuXvbKORJ7+i
	0tK8OFkjSjSyEWXgRFCabGHsw==
X-Google-Smtp-Source: AGHT+IHHvgjR8JDVARFseJQe6zlEqXGpnBAiJkTPmdo8BE3VDttJ7J5Uc82YzuaqCNl7/PAYTuF+K2cXjLaVq9k4kgw=
X-Received: by 2002:a17:907:1c9a:b0:ae0:c976:cc84 with SMTP id
 a640c23a62f3a-af9c63a7e55mr690321066b.24.1754805325834; Sat, 09 Aug 2025
 22:55:25 -0700 (PDT)
MIME-Version: 1.0
References: <CAMqWyhi=xW2sq2+Hb2aJ=ta-zfi_Zay6CztQ9mvDqgjbKr1HpQ@mail.gmail.com>
 <a7169751-2b66-4123-b2b5-09e35623ff80@gmail.com>
In-Reply-To: <a7169751-2b66-4123-b2b5-09e35623ff80@gmail.com>
From: lunbun <lunbun021@gmail.com>
Date: Sat, 9 Aug 2025 22:55:14 -0700
X-Gm-Features: Ac12FXzExsg3SaqhTu8ARp42U6yHSFuhI6giVLJDnTytdwahYPCDNgX1vjqVIZA
Message-ID: <CAMqWyhhFgATrYJtxFP-hGLR3FN2XhnvZLHVyNtxpWdAp6fFJNQ@mail.gmail.com>
To: jcb62281@gmail.com
Cc: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="00000000000018b086063bfc7468"
Subject: Re: [oss-security] CVE-2025-55188: 7-Zip: Arbitrary file write on
 extraction, may lead to code execution

--00000000000018b086063bfc7468
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Jacob,

Thanks for asking.

For all of the following results, I have tested on 7-Zip 25.00 on Debian.

Yes, 7-Zip does not resolve `~` in file names/symlink targets.

Symlink targets are relative to the extraction directory, so if the user
extracts to somewhere in their home directory, an attacker could use the
.., ../.., ../../.., etc... strategy to reliably point to `~/.bashrc` or
`~/.ssh/authorized_keys`.

If, say, the archive is extracted to `/tmp` and the CWD is `/tmp`, then
yes, the best an attacker can do is guess the user's login name.

However, only specifying the extraction directory with `-o` cannot be used
to mitigate this as a malicious actor could use `/proc/self/cwd`. The CWD
also needs to be set to a safe directory.

Say that a malicious actor is able to point to `~/.bashrc`. By default, `7z
x` will present the user with a `Y/n` prompt asking if they want to
overwrite `.bashrc`. However, 7-Zip displays the path of `.bashrc` before
symlink resolution, so an attacker can hide every part of the path except
for the file basename. Here is a sample message:
```
Would you like to replace the existing file:
  Path:     ./malicious_link/.bashrc
  Size:     3526 bytes (4 KiB)
  Modified: 2025-04-18 22:47:34
with the file from archive:
  Path:     malicious_link/.bashrc
  Size:     5 bytes (1 KiB)
  Modified: 1970-01-01 00:00:00
? (Y)es / (N)o / (A)lways / (S)kip all / A(u)to rename all / (Q)uit?
```

Of course, this prompt is not displayed if the targeted file does not
already exist.

Similarly, for `7z l`, symlinks targets are not listed, so an attacker can
hide every part of the path except for the file basename.

On Sat, Aug 9, 2025 at 8:10=E2=80=AFPM Jacob Bachmeyer <jcb62281@gmail.com>=
 wrote:

> On 8/9/25 15:46, lunbun wrote:
> > [...]
> >
> > ## Details
> >
> > 7-Zip before 25.01 does not always properly handle symbolic links during
> > extraction. Prior to 25.01, it was possible for a maliciously-crafted
> > archive
> > to create an unsafe symbolic link. 7-Zip follows symbolic links when
> > extracting, so this leads to arbitrary file write.
> >
> > An attacker may leverage this arbitrary file write to achieve
> unauthorized
> > access/code execution, such as by overwriting a user's SSH keys or
> > .bashrc file
> > [1]. In one extraction, an attacker may attempt several times to
> > leverage this
> > vulnerability to write to sensitive files.
>
> How much does the attacker have to guess here?  Somehow I doubt that
> 7-Zip resolves "~" in file names or symlink targets.  (I understand that
> the attacker can simply pack multiple symlinks into the archive.)
>
> To target .bashrc or replace the SSH authorized_keys file, does the
> attacker need to know the user's login name, or is it possible to simply
> list relative symlink targets using .., ../.., ../../.., etc. and hope
> that the archive is being extracted somewhere below the user's home
> directory, as opposed to somewhere under /tmp?
>
> Does a malicious archive produce suspicious output when listed with `7z
> l`?  Is this more of a concern for systems that automatically extract
> archives and incautious users or is this actually a general problem?
>
>
> -- Jacob
>
>
>

--00000000000018b086063bfc7468
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Jacob,<br><br>Thanks for asking.<br><br>For all of the =
following results, I have tested on 7-Zip 25.00 on Debian.<br><br>Yes, 7-Zi=
p does not resolve `~` in file names/symlink targets.<br><br>Symlink target=
s are relative to the extraction directory, so if the user extracts to some=
where in their home directory, an attacker could use the .., ../.., ../../.=
., etc... strategy to reliably point to `~/.bashrc` or `~/.ssh/authorized_k=
eys`.<br><br>If, say, the archive is extracted to `/tmp` and the CWD is `/t=
mp`, then yes, the best an attacker can do is guess the user&#39;s login na=
me.<br><br>However, only specifying the extraction directory with `-o` cann=
ot be used to mitigate this as a malicious actor could use `/proc/self/cwd`=
. The CWD also needs to be set to a safe directory.<br><br>Say that a malic=
ious actor is able to point to `~/.bashrc`. By default, `7z x` will present=
 the user with a `Y/n` prompt asking if they want to overwrite `.bashrc`. H=
owever, 7-Zip displays the path of `.bashrc` before symlink resolution, so =
an attacker can hide every part of the path except for the file basename. H=
ere is a sample message:<br>```<br>Would you like to replace the existing f=
ile:<br>=C2=A0 Path: =C2=A0 =C2=A0 ./malicious_link/.bashrc<br>=C2=A0 Size:=
 =C2=A0 =C2=A0 3526 bytes (4 KiB)<br>=C2=A0 Modified: 2025-04-18 22:47:34<b=
r>with the file from archive:<br>=C2=A0 Path: =C2=A0 =C2=A0 malicious_link/=
.bashrc<br>=C2=A0 Size: =C2=A0 =C2=A0 5 bytes (1 KiB)<br>=C2=A0 Modified: 1=
970-01-01 00:00:00<br>? (Y)es / (N)o / (A)lways / (S)kip all / A(u)to renam=
e all / (Q)uit?<br>```<br><br>Of course, this prompt is not displayed if th=
e targeted file does not already exist.<br><br>Similarly, for `7z l`, symli=
nks targets are not listed, so an attacker can hide every part of the path =
except for the file basename.</div><br><div class=3D"gmail_quote gmail_quot=
e_container"><div dir=3D"ltr" class=3D"gmail_attr">On Sat, Aug 9, 2025 at 8=
:10=E2=80=AFPM Jacob Bachmeyer &lt;<a href=3D"mailto:jcb62281@gmail.com">jc=
b62281@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex">On 8/9/25 15:46, lunbun wrote:<br>
&gt; [...]<br>
&gt;<br>
&gt; ## Details<br>
&gt;<br>
&gt; 7-Zip before 25.01 does not always properly handle symbolic links duri=
ng<br>
&gt; extraction. Prior to 25.01, it was possible for a maliciously-crafted =
<br>
&gt; archive<br>
&gt; to create an unsafe symbolic link. 7-Zip follows symbolic links when<b=
r>
&gt; extracting, so this leads to arbitrary file write.<br>
&gt;<br>
&gt; An attacker may leverage this arbitrary file write to achieve unauthor=
ized<br>
&gt; access/code execution, such as by overwriting a user&#39;s SSH keys or=
 <br>
&gt; .bashrc file<br>
&gt; [1]. In one extraction, an attacker may attempt several times to <br>
&gt; leverage this<br>
&gt; vulnerability to write to sensitive files.<br>
<br>
How much does the attacker have to guess here?=C2=A0 Somehow I doubt that <=
br>
7-Zip resolves &quot;~&quot; in file names or symlink targets.=C2=A0 (I und=
erstand that <br>
the attacker can simply pack multiple symlinks into the archive.)<br>
<br>
To target .bashrc or replace the SSH authorized_keys file, does the <br>
attacker need to know the user&#39;s login name, or is it possible to simpl=
y <br>
list relative symlink targets using .., ../.., ../../.., etc. and hope <br>
that the archive is being extracted somewhere below the user&#39;s home <br>
directory, as opposed to somewhere under /tmp?<br>
<br>
Does a malicious archive produce suspicious output when listed with `7z <br>
l`?=C2=A0 Is this more of a concern for systems that automatically extract =
<br>
archives and incautious users or is this actually a general problem?<br>
<br>
<br>
-- Jacob<br>
<br>
<br>
</blockquote></div>

--00000000000018b086063bfc7468--
