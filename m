Received: (qmail 26616 invoked by uid 550); 11 Aug 2025 13:31:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5237 invoked from network); 11 Aug 2025 00:04:46 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1754870678; x=1755475478; darn=lists.openwall.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=B+kl7iEHP4tJs3IlYqEsJj+tv2GMwQrKt0cHSiMQpqA=;
        b=jP7BmJNJpmygbWG3PJQLvlEP+iGpZk7J7QKoFi1JnjfvFO5DcUgxMVz0iIdjQx56XY
         3ty8GtbTEDkIzQmDaU/Rb8qEZv77TnT61IGjyb4BNqXwBkLIzxXb8w6Ginyy9zQM0N+J
         G8btsWydNmss6vEiNEprlMUNIuRWxwtPzGwlp4ZjTfCBEQ7GrTFvxjfJOgtungFL/f8+
         XqYQzLpoDrT2p1JWf9obdrrGDkLivpwtj4jKUvHGERfK6PxtmOdoXDUL9v5YzKFPRUlN
         wDL+Pjn8iNQct35scQxADllsnRd5K6qwQ00vFvYjj1OWMc6lrClHKH84WplFk3udhaSt
         B6Jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754870678; x=1755475478;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=B+kl7iEHP4tJs3IlYqEsJj+tv2GMwQrKt0cHSiMQpqA=;
        b=mcpZYnpx69sihUaifaBALllc0bVIBi1Xf+X8L9eTOrF7ofS6tQ4Cj2g9t1fNX7LguX
         tAixDk0xW3aAhO++v/e8cUC4fSRZR1uN4hI/dwkqzQ7YjhkzUlviTCIf+3gZM5PFpqpq
         Gb2Q6IvLeKuqTbbPHCE3YyEKfeCJjnX1aCPfqErRgvZXP5U8ADEcny7AET4CVRlWDBPX
         PgDP847XLvgkXKkAB/o2MdQ4A/Z7NQeqEUiv/7fzRSJGQdTXDxVNPKtv0+2pROOOMFEt
         bjhE0Bi9u0QBwfUGZzqe0bW2CXeF5Ue0xD2CZkRAeWvyFk3gx3I9jQpbzQmAER2Y3I0Q
         0Jwg==
X-Gm-Message-State: AOJu0YzVLkZ8+PuPkYGE0HsY/mguenHHYinAGcMGvP0mtFOzQHNmAp+x
	IDXUavmo+yGLg/58Mpav8KXrRv/+OLs38iYZmhzfl/04QT21TUx8yILL2TOztJ0l2hsgbs+HDSj
	fxAaYpCTsWHDS7B/BbLvvZhp0v3K+eJ2HMr9iO6A=
X-Gm-Gg: ASbGncutfncg3hT2FcmzQjeqoYq7dnMOR1O3yezxNyJsgAHtMoxIVZIs/A9+FAgEA1z
	OdSItM7m0YRP0bGWTPP1psOjTgB6O22JURAsr1SuCcnpA/I5ifuIE55xu4IAp8n6myVjxwFLnPt
	yDZ9rbbLXsDU1NQpqCH3V1wc4E/jUPNtRkYg601xD5VEZ4sYtvqOcmuydol+y6lp0Q7OGkXAsMM
	+T61GHyCCPPzo6j11V7O27UOQ==
X-Google-Smtp-Source: AGHT+IHXP51noOnbDEOmMjNnO4lhr1d5H6we/ORYknRJkcKJhq8KcnmUX35yXbBY2vjL3dlfshNz7G42miLE8CgcbFk=
X-Received: by 2002:a17:907:3f15:b0:ad8:914b:7d0b with SMTP id
 a640c23a62f3a-af9c634f6d9mr959200266b.11.1754870677439; Sun, 10 Aug 2025
 17:04:37 -0700 (PDT)
MIME-Version: 1.0
References: <CAMqWyhi=xW2sq2+Hb2aJ=ta-zfi_Zay6CztQ9mvDqgjbKr1HpQ@mail.gmail.com>
 <a7169751-2b66-4123-b2b5-09e35623ff80@gmail.com> <CAMqWyhhFgATrYJtxFP-hGLR3FN2XhnvZLHVyNtxpWdAp6fFJNQ@mail.gmail.com>
 <5d16e4d9-a25d-4b5e-946b-4c5243a54bcb@gmail.com>
In-Reply-To: <5d16e4d9-a25d-4b5e-946b-4c5243a54bcb@gmail.com>
From: lunbun <lunbun021@gmail.com>
Date: Sun, 10 Aug 2025 17:04:24 -0700
X-Gm-Features: Ac12FXyYnz8IlOCpmRSsFJybtPmnX_-dF6MFQgBeo7G0UQpzK-MCbB5bY3Lh-R0
Message-ID: <CAMqWyhgUK+4dW=jxztFYopDxv5apLYsGcWN=1sbfHmmUfePduw@mail.gmail.com>
To: jcb62281@gmail.com
Cc: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000005b08b6063c0bab4f"
Subject: Re: [oss-security] CVE-2025-55188: 7-Zip: Arbitrary file write on
 extraction, may lead to code execution

--0000000000005b08b6063c0bab4f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

> What does 7-Zip do if the symlink implies a nonexistent directory?
> (Example:  attack targeting ~/.ssh/authorized_keys is unpacked in
> ~/Downloads/foo/bar and unpacks a symlink to /proc/self/cwd/../../.ssh
> which maps to ~/Downloads/.ssh which probably does not exist.)

If a symlink targets a nonexistent directory, the write will fail. 7-Zip by
default will print an error message, like:
```
ERROR: Cannot open output file : errno=3D2 : No such file or directory :
./malicious_link/file.txt
```

This applies similarly to other filesystem errors, like insufficient
permissions or unwritable directory.

However, 7-Zip by default continues with extraction regardless of the
error, which is why an attacker can use this "shotgun" strategy. These
errors, though, would hopefully help notify the user that something
suspicious is happening.

> Do I gather correctly that the malicious link must point to the
> directory (e.g. ~ or ~/.ssh) that is to contain the attacker's file
> rather than the file itself?

Yes, the malicious link must point to the directory that contains the
attacker's file/directory.

> Can the malicious link be silently replaced or does extracting a
> malicious archive leave links to every directory that the attack hit?
> (That could at least make cleaning out the attack relatively
> straightforward.)

I could be wrong, but I don't think there is any way for an attacker to
silently remove or replace a malicious link.

I don't know what the general policy is for releasing exploit PoCs after a
patch is released. If it is okay, I can post one on this thread (publicly)
so you can play around with it.

On Sun, Aug 10, 2025 at 4:13=E2=80=AFPM Jacob Bachmeyer <jcb62281@gmail.com=
> wrote:

> On 8/10/25 00:55, lunbun wrote:
> > Hi Jacob,
> >
> > Thanks for asking.
> >
> > For all of the following results, I have tested on 7-Zip 25.00 on Debia=
n.
> >
> > [...]
> >
> > Symlink targets are relative to the extraction directory, so if the
> > user extracts to somewhere in their home directory, an attacker could
> > use the .., ../.., ../../.., etc... strategy to reliably point to
> > `~/.bashrc` or `~/.ssh/authorized_keys`.
>
> What does 7-Zip do if the symlink implies a nonexistent directory?
> (Example:  attack targeting ~/.ssh/authorized_keys is unpacked in
> ~/Downloads/foo/bar and unpacks a symlink to /proc/self/cwd/../../.ssh
> which maps to ~/Downloads/.ssh which probably does not exist.)
>
> > If, say, the archive is extracted to `/tmp` and the CWD is `/tmp`,
> > then yes, the best an attacker can do is guess the user's login name.
>
> That would at least limit this to targeted attacks.  Suppose the
> attacker guesses wrong or tries a "shotgun" approach.  What does 7-Zip
> do if the symlink points to a nonexistent directory that cannot be
> created?  (Example:  /home/alice on Bob's computer or /home/bob on
> Alice's computer.)
>
> What does 7-Zip do if the symlink points to an unwritable directory?
> (Example:  one "../" too many while aiming for ~/.bashrc and the symlink
> resolves to /home.)
>
> > However, only specifying the extraction directory with `-o` cannot be
> > used to mitigate this as a malicious actor could use `/proc/self/cwd`.
> > The CWD also needs to be set to a safe directory.
> >
> > Say that a malicious actor is able to point to `~/.bashrc`. By
> > default, `7z x` will present the user with a `Y/n` prompt asking if
> > they want to overwrite `.bashrc`. However, 7-Zip displays the path of
> > `.bashrc` before symlink resolution, so an attacker can hide every
> > part of the path except for the file basename. Here is a sample message:
> > ```
> > Would you like to replace the existing file:
> >   Path:     ./malicious_link/.bashrc
> >   Size:     3526 bytes (4 KiB)
> >   Modified: 2025-04-18 22:47:34
> > with the file from archive:
> >   Path:     malicious_link/.bashrc
> >   Size:     5 bytes (1 KiB)
> >   Modified: 1970-01-01 00:00:00
> > ? (Y)es / (N)o / (A)lways / (S)kip all / A(u)to rename all / (Q)uit?
> > ```
> >
> > Of course, this prompt is not displayed if the targeted file does not
> > already exist.
>
> Fortunately, ".bashrc" and "authorized_keys" are (or should be) highly
> suspicious basenames, but an inattentive user could miss that detail.
> However, ~/.ssh/authorized_keys is not likely to exist on a system not
> normally accessed using SSH, such as a user's desktop, so the attacker
> gets to drop it "free" in that typical situation.  Add that
> distributions often run sshd by default and... well... is there a
> firewall blocking inbound port 22?
>
> Do I gather correctly that the malicious link must point to the
> directory (e.g. ~ or ~/.ssh) that is to contain the attacker's file
> rather than the file itself?
>
> Can the malicious link be silently replaced or does extracting a
> malicious archive leave links to every directory that the attack hit?
> (That could at least make cleaning out the attack relatively
> straightforward.)
>
> > Similarly, for `7z l`, symlinks targets are not listed, so an attacker
> > can hide every part of the path except for the file basename.
>
> This should probably be considered a bug in 7-Zip, although it is
> excusable due to 7-Zip's origin on Windows, which did not have symlinks
> when 7-Zip was invented.
>
>
> -- Jacob
>
>

--0000000000005b08b6063c0bab4f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">&gt; What does 7-Zip do if the symlink implies a nonexiste=
nt directory? <br>&gt; (Example: =C2=A0attack targeting ~/.ssh/authorized_k=
eys is unpacked in<br>&gt; ~/Downloads/foo/bar and unpacks a symlink to /pr=
oc/self/cwd/../../.ssh<br>&gt; which maps to ~/Downloads/.ssh which probabl=
y does not exist.)<br><br>If a symlink targets a nonexistent directory, the=
 write will fail. 7-Zip by default will print an error message, like:<br>``=
`<br>ERROR: Cannot open output file : errno=3D2 : No such file or directory=
 : ./malicious_link/file.txt<br>```<br><br>This applies similarly to other =
filesystem errors, like insufficient permissions or unwritable directory.<b=
r><br>However, 7-Zip by default continues with extraction regardless of the=
 error, which is why an attacker can use this &quot;shotgun&quot; strategy.=
 These errors, though, would hopefully help notify the user that something =
suspicious is happening.<br><br>&gt; Do I gather correctly that the malicio=
us link must point to the<br>&gt; directory (e.g. ~ or ~/.ssh) that is to c=
ontain the attacker&#39;s file<br>&gt; rather than the file itself?<br><br>=
Yes, the malicious link must point to the directory that contains the attac=
ker&#39;s file/directory.<br><br>&gt; Can the malicious link be silently re=
placed or does extracting a<br>&gt; malicious archive leave links to every =
directory that the attack hit? <br>&gt; (That could at least make cleaning =
out the attack relatively<br>&gt; straightforward.)<br><br>I could be wrong=
, but I don&#39;t think there is any way for an attacker to silently remove=
 or replace a malicious link.<br><br>I don&#39;t know what the general poli=
cy is for releasing exploit PoCs after a patch is released. If it is okay, =
I can post one on this thread (publicly) so you can play around with it.<br=
></div><br><div class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr=
" class=3D"gmail_attr">On Sun, Aug 10, 2025 at 4:13=E2=80=AFPM Jacob Bachme=
yer &lt;<a href=3D"mailto:jcb62281@gmail.com">jcb62281@gmail.com</a>&gt; wr=
ote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On 8/10/25 =
00:55, lunbun wrote:<br>
&gt; Hi Jacob,<br>
&gt;<br>
&gt; Thanks for asking.<br>
&gt;<br>
&gt; For all of the following results, I have tested on 7-Zip 25.00 on Debi=
an.<br>
&gt;<br>
&gt; [...]<br>
&gt;<br>
&gt; Symlink targets are relative to the extraction directory, so if the <b=
r>
&gt; user extracts to somewhere in their home directory, an attacker could =
<br>
&gt; use the .., ../.., ../../.., etc... strategy to reliably point to <br>
&gt; `~/.bashrc` or `~/.ssh/authorized_keys`.<br>
<br>
What does 7-Zip do if the symlink implies a nonexistent directory?=C2=A0 <b=
r>
(Example:=C2=A0 attack targeting ~/.ssh/authorized_keys is unpacked in <br>
~/Downloads/foo/bar and unpacks a symlink to /proc/self/cwd/../../.ssh <br>
which maps to ~/Downloads/.ssh which probably does not exist.)<br>
<br>
&gt; If, say, the archive is extracted to `/tmp` and the CWD is `/tmp`, <br>
&gt; then yes, the best an attacker can do is guess the user&#39;s login na=
me.<br>
<br>
That would at least limit this to targeted attacks.=C2=A0 Suppose the <br>
attacker guesses wrong or tries a &quot;shotgun&quot; approach.=C2=A0 What =
does 7-Zip <br>
do if the symlink points to a nonexistent directory that cannot be <br>
created?=C2=A0 (Example:=C2=A0 /home/alice on Bob&#39;s computer or /home/b=
ob on <br>
Alice&#39;s computer.)<br>
<br>
What does 7-Zip do if the symlink points to an unwritable directory?=C2=A0 =
<br>
(Example:=C2=A0 one &quot;../&quot; too many while aiming for ~/.bashrc and=
 the symlink <br>
resolves to /home.)<br>
<br>
&gt; However, only specifying the extraction directory with `-o` cannot be =
<br>
&gt; used to mitigate this as a malicious actor could use `/proc/self/cwd`.=
 <br>
&gt; The CWD also needs to be set to a safe directory.<br>
&gt;<br>
&gt; Say that a malicious actor is able to point to `~/.bashrc`. By <br>
&gt; default, `7z x` will present the user with a `Y/n` prompt asking if <b=
r>
&gt; they want to overwrite `.bashrc`. However, 7-Zip displays the path of =
<br>
&gt; `.bashrc` before symlink resolution, so an attacker can hide every <br>
&gt; part of the path except for the file basename. Here is a sample messag=
e:<br>
&gt; ```<br>
&gt; Would you like to replace the existing file:<br>
&gt; =C2=A0 Path: =C2=A0 =C2=A0 ./malicious_link/.bashrc<br>
&gt; =C2=A0 Size: =C2=A0 =C2=A0 3526 bytes (4 KiB)<br>
&gt; =C2=A0 Modified: 2025-04-18 22:47:34<br>
&gt; with the file from archive:<br>
&gt; =C2=A0 Path: =C2=A0 =C2=A0 malicious_link/.bashrc<br>
&gt; =C2=A0 Size: =C2=A0 =C2=A0 5 bytes (1 KiB)<br>
&gt; =C2=A0 Modified: 1970-01-01 00:00:00<br>
&gt; ? (Y)es / (N)o / (A)lways / (S)kip all / A(u)to rename all / (Q)uit?<b=
r>
&gt; ```<br>
&gt;<br>
&gt; Of course, this prompt is not displayed if the targeted file does not =
<br>
&gt; already exist.<br>
<br>
Fortunately, &quot;.bashrc&quot; and &quot;authorized_keys&quot; are (or sh=
ould be) highly <br>
suspicious basenames, but an inattentive user could miss that detail.=C2=A0=
 <br>
However, ~/.ssh/authorized_keys is not likely to exist on a system not <br>
normally accessed using SSH, such as a user&#39;s desktop, so the attacker =
<br>
gets to drop it &quot;free&quot; in that typical situation.=C2=A0 Add that =
<br>
distributions often run sshd by default and... well... is there a <br>
firewall blocking inbound port 22?<br>
<br>
Do I gather correctly that the malicious link must point to the <br>
directory (e.g. ~ or ~/.ssh) that is to contain the attacker&#39;s file <br>
rather than the file itself?<br>
<br>
Can the malicious link be silently replaced or does extracting a <br>
malicious archive leave links to every directory that the attack hit?=C2=A0=
 <br>
(That could at least make cleaning out the attack relatively <br>
straightforward.)<br>
<br>
&gt; Similarly, for `7z l`, symlinks targets are not listed, so an attacker=
 <br>
&gt; can hide every part of the path except for the file basename.<br>
<br>
This should probably be considered a bug in 7-Zip, although it is <br>
excusable due to 7-Zip&#39;s origin on Windows, which did not have symlinks=
 <br>
when 7-Zip was invented.<br>
<br>
<br>
-- Jacob<br>
<br>
</blockquote></div>

--0000000000005b08b6063c0bab4f--
