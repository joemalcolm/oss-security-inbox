Received: (qmail 5358 invoked by uid 550); 11 Aug 2025 13:31:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 23620 invoked from network); 11 Aug 2025 04:04:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1754885067; x=1755489867; darn=lists.openwall.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ihDkJfWpHYKhfaKFl3VX1dDoiyxmt821Q1RwdjTvBgA=;
        b=SZb8Yqn7Y4bS7TKZsvegwX3iX/ESDKDAlHRjZ1iB2vwtV41Cs/zAiYZ/dA2NGwBO8u
         02xu4TkWhmGJBdPAUFObaf0lPsxAjsBBLb60bwMIubAmA2XnFKY+JzSDBEGdCk/MtpH6
         BjRr2c+4z0UdUHFT73GbUc+faVdrN9x4lzEapmP05q9VQVsDtI8PApOnH04nwzEpIzOr
         8JK/3P8kdgGkvwiW1BsPs8u8CEKGOtnG47DOB9i7Ant/t/vmYZ5ToTtCGnhWNPdMmT/M
         HqYVAYvtro6wOVTBF5vlfFRJt4sP0vbWz/bZbu6aiEHIY71NW2Rkt6UItMDc0E9CUhd2
         G8aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754885067; x=1755489867;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ihDkJfWpHYKhfaKFl3VX1dDoiyxmt821Q1RwdjTvBgA=;
        b=SsItcW9IvmpXZ/rEbtrgw499uXt5qbnviYVfIBjAo/Q1N+Os235eS6AhDhFqlXFLYu
         YtXPxtlD/0VUWkeqJYKorExnzMxy20xt2QClzSv1idVGSp3FWxFJAMqY4NKVzsg0URi5
         UIwQzv561ZD8XZrvMwliEBtapqcj8jBlRUBk/npjkrAKIpFuEQoIvjwzDIFSpLFSocgE
         z+iZaO2NUjV93KLd1U6W+KEkYdzhvA43Nyml+ikRv/7IcQT5CjeTX3452DDc3z6NK28U
         r/7KT8U8T1z9N+X8Pl5GkbSM/cyAqcMr5P+8EWl+0p2aPy3HJpEJN1By+WTYj2lk6yBI
         DoUw==
X-Gm-Message-State: AOJu0Yw41wjSs/FlxV1jGdJn2yPhvOVhp25F64ej0pDzjVmS0sYxE3DW
	tWpFxth1Vt4i2n0VEC972LbYeywTsRwG5yZWwLlJbV37DQHoZbKbFJt+Y8vA2fgw33g8BmqAsw7
	CDJ7n7jDwt3VPbA/9YTxY2jCatFrKJx5vZ/H2
X-Gm-Gg: ASbGnct3464Z2Lmm3F54bJdU0FTzd7a89bTVOFHfd/QWQXbtOF59h2WboUt+jz7VcbM
	2U292mjOF3dLhtnDV5ntTCFG0RMhhMofaU6sUzRlp86KSw4KuMMb09F/BGDCm/jHVVrBcMQ/KED
	TTMiQ9nWwsD4x4zkZ9s6ID101ePMCf4D0jsoEA1X6ovXYB0LWSdaIsLN5BqpSVz5ymPDYhQrrzu
	LvHFdDvPLTaXu3wjs+zEBUoAmphHF1DlVcm
X-Google-Smtp-Source: AGHT+IGL9LxjmzwmVhcnSfcZsC3JF0by/deHq4QGT1xNoQeOBKnL366z+qhQwrZHnNQc8K65Fe6Gp03I1Zk+llqrg6g=
X-Received: by 2002:a17:907:6e88:b0:ae3:5ff2:8ecd with SMTP id
 a640c23a62f3a-af9c64534abmr1111707366b.20.1754885067014; Sun, 10 Aug 2025
 21:04:27 -0700 (PDT)
MIME-Version: 1.0
References: <CAMqWyhi=xW2sq2+Hb2aJ=ta-zfi_Zay6CztQ9mvDqgjbKr1HpQ@mail.gmail.com>
 <a7169751-2b66-4123-b2b5-09e35623ff80@gmail.com> <CAMqWyhhFgATrYJtxFP-hGLR3FN2XhnvZLHVyNtxpWdAp6fFJNQ@mail.gmail.com>
 <5d16e4d9-a25d-4b5e-946b-4c5243a54bcb@gmail.com> <CAMqWyhgUK+4dW=jxztFYopDxv5apLYsGcWN=1sbfHmmUfePduw@mail.gmail.com>
 <13b2d236-d2cd-4c70-9040-328127a0a88e@gmail.com>
In-Reply-To: <13b2d236-d2cd-4c70-9040-328127a0a88e@gmail.com>
From: lunbun <lunbun021@gmail.com>
Date: Sun, 10 Aug 2025 21:04:13 -0700
X-Gm-Features: Ac12FXx7IKlTYbUptwtcNb54cLLrQfnRrSVWPW6DDKVrzsgHtrrOU7lUjha2Mxo
Message-ID: <CAMqWyhjWUvG6+5Dj75r2buqROa7iH-ZMKXAtgd8JrakdZwndXg@mail.gmail.com>
To: jcb62281@gmail.com
Cc: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000000a8609063c0f05e6"
Subject: Re: [oss-security] CVE-2025-55188: 7-Zip: Arbitrary file write on
 extraction, may lead to code execution

--0000000000000a8609063c0f05e6
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

> This at least prevents this from being a "silent" attack in all but the
> most targeted scenarios---and in those cases, the attacker probably
> already has another way in.

I disagree that users are only at risk in the "most targeted scenarios." I
do agree that these error messages, in most cases, prevent a total brute
force. However, I believe that an attacker may reasonably guess that a user
will extract either one or two directories deep into their home directory
(e.g. `~/extract` or `~/Downloads/extract`) and be correct a decent
amount of the time.

I do not believe the overwrite `Y/n` prompts can entirely mitigate this
either. I looked at three Linux distros (Ubuntu Desktop, Debian, and Rocky
Linux), and found at least one potential target file for each of these
distros under the user's home directory that both leads directly to RCE and
does not exist by default.

> If the link cannot be overwritten (another entry in the fake archive
> with the same name?), then there are immediate indications pointing to
> everything the attacker planted.

Adding another entry with the same name could be used to overwrite the
link, but 7-Zip will display the overwrite `Y/n` prompt.

On Sun, Aug 10, 2025 at 6:16=E2=80=AFPM Jacob Bachmeyer <jcb62281@gmail.com=
> wrote:

> On 8/10/25 19:04, lunbun wrote:
> > > What does 7-Zip do if the symlink implies a nonexistent directory?
> > > (Example:  attack targeting ~/.ssh/authorized_keys is unpacked in
> > > ~/Downloads/foo/bar and unpacks a symlink to /proc/self/cwd/../../.ssh
> > > which maps to ~/Downloads/.ssh which probably does not exist.)
> >
> > If a symlink targets a nonexistent directory, the write will fail.
> > 7-Zip by default will print an error message, like:
> > ```
> > ERROR: Cannot open output file : errno=3D2 : No such file or directory :
> > ./malicious_link/file.txt
> > ```
> >
> > This applies similarly to other filesystem errors, like insufficient
> > permissions or unwritable directory.
> >
> > However, 7-Zip by default continues with extraction regardless of the
> > error, which is why an attacker can use this "shotgun" strategy. These
> > errors, though, would hopefully help notify the user that something
> > suspicious is happening.
>
> This at least prevents this from being a "silent" attack in all but the
> most targeted scenarios---and in those cases, the attacker probably
> already has another way in.
>
> > [...]
> >
> > > Can the malicious link be silently replaced or does extracting a
> > > malicious archive leave links to every directory that the attack hit?
> > > (That could at least make cleaning out the attack relatively
> > > straightforward.)
> >
> > I could be wrong, but I don't think there is any way for an attacker
> > to silently remove or replace a malicious link.
>
> If the link cannot be overwritten (another entry in the fake archive
> with the same name?), then there are immediate indications pointing to
> everything the attacker planted.
>
> Thank you for answering all of my questions.
>
> > I don't know what the general policy is for releasing exploit PoCs
> > after a patch is released. If it is okay, I can post one on this
> > thread (publicly) so you can play around with it.
>
> At the original announcement, you had basically released a PoC, there
> would be only a matter of programming to generate malicious fake archives.
>
>
> -- Jacob
>
>

--0000000000000a8609063c0f05e6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">&gt; This at least prevents this from being a &quot;silent=
&quot; attack in all but the<br>&gt; most targeted scenarios---and in those=
 cases, the attacker probably<br>&gt; already has another way in.<div><br><=
/div><div>I disagree that=C2=A0users are only at risk in the &quot;most tar=
geted scenarios.&quot; I do agree that these error messages, in most cases,=
 prevent a total brute force. However, I believe that an attacker may reaso=
nably guess that a user will extract either one or two directories deep int=
o their home directory (e.g. `~/extract` or `~/Downloads/extract`) and be c=
orrect a decent amount=C2=A0of the time.=C2=A0</div><div><br></div><div>I d=
o not believe the overwrite `Y/n` prompts can entirely mitigate this either=
. I looked at three Linux distros (Ubuntu Desktop, Debian, and Rocky Linux)=
, and found at least one potential target file for each of these distros un=
der the user&#39;s home directory that both=C2=A0leads directly to RCE and =
does not exist by default.</div><div><br></div><div>&gt; If the link cannot=
 be overwritten (another entry in the fake archive<br>&gt; with the same na=
me?), then there are immediate indications pointing to<br>&gt; everything t=
he attacker planted.</div><div><br></div><div>Adding another entry with the=
 same name could be used to overwrite the link, but 7-Zip will display the =
overwrite `Y/n` prompt.</div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Sun, Aug 10, 2025 at 6:16=E2=80=AFPM Jacob=
 Bachmeyer &lt;<a href=3D"mailto:jcb62281@gmail.com" target=3D"_blank">jcb6=
2281@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex">On 8/10/25 19:04, lunbun wrote:<br>
&gt; &gt; What does 7-Zip do if the symlink implies a nonexistent directory=
?<br>
&gt; &gt; (Example: =C2=A0attack targeting ~/.ssh/authorized_keys is unpack=
ed in<br>
&gt; &gt; ~/Downloads/foo/bar and unpacks a symlink to /proc/self/cwd/../..=
/.ssh<br>
&gt; &gt; which maps to ~/Downloads/.ssh which probably does not exist.)<br>
&gt;<br>
&gt; If a symlink targets a nonexistent directory, the write will fail. <br>
&gt; 7-Zip by default will print an error message, like:<br>
&gt; ```<br>
&gt; ERROR: Cannot open output file : errno=3D2 : No such file or directory=
 : <br>
&gt; ./malicious_link/file.txt<br>
&gt; ```<br>
&gt;<br>
&gt; This applies similarly to other filesystem errors, like insufficient <=
br>
&gt; permissions or unwritable directory.<br>
&gt;<br>
&gt; However, 7-Zip by default continues with extraction regardless of the =
<br>
&gt; error, which is why an attacker can use this &quot;shotgun&quot; strat=
egy. These <br>
&gt; errors, though, would hopefully help notify the user that something <b=
r>
&gt; suspicious is happening.<br>
<br>
This at least prevents this from being a &quot;silent&quot; attack in all b=
ut the <br>
most targeted scenarios---and in those cases, the attacker probably <br>
already has another way in.<br>
<br>
&gt; [...]<br>
&gt;<br>
&gt; &gt; Can the malicious link be silently replaced or does extracting a<=
br>
&gt; &gt; malicious archive leave links to every directory that the attack =
hit?<br>
&gt; &gt; (That could at least make cleaning out the attack relatively<br>
&gt; &gt; straightforward.)<br>
&gt;<br>
&gt; I could be wrong, but I don&#39;t think there is any way for an attack=
er <br>
&gt; to silently remove or replace a malicious link.<br>
<br>
If the link cannot be overwritten (another entry in the fake archive <br>
with the same name?), then there are immediate indications pointing to <br>
everything the attacker planted.<br>
<br>
Thank you for answering all of my questions.<br>
<br>
&gt; I don&#39;t know what the general policy is for releasing exploit PoCs=
 <br>
&gt; after a patch is released. If it is okay, I can post one on this <br>
&gt; thread (publicly) so you can play around with it.<br>
<br>
At the original announcement, you had basically released a PoC, there <br>
would be only a matter of programming to generate malicious fake archives.<=
br>
<br>
<br>
-- Jacob<br>
<br>
</blockquote></div>

--0000000000000a8609063c0f05e6--
