Received: (qmail 26534 invoked by uid 550); 28 Sep 2025 14:51:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30478 invoked from network); 28 Sep 2025 03:35:35 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759030527; x=1759635327; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=EThvQSEsdZASVxNngwA6EkJ6cLFqefdGwup77fJirPM=;
        b=XcIGJI0LyQO75ZPjSf8X0Nsyh3c6LxorxUu8xKL1If5QCyG2tvUJuctB9EKuvbwnZ5
         Opm+xu2slQ6DdWYOhW+G1FCqHFKwpzOZkddSlfrgvG3BdkDJaxUFAu1etSN0ILzlOu+1
         2EEitO/avsw7A1KANZvWAyJOCuGlkh0/ee+9CbAVgzK2R0ZTskODcH+++Vjt85UlMnu0
         Yn/xbUis/RQtumwz3CIXQbXkOZApoLaQefsHidxghLK4HbuFHRkRAWznNau9d58KZOwe
         p4FXFQbLXGF9tZiJ71OE4SDLUQl8VFU9rIQiExphGjX2B09anx05f3c+OoMFvlGL2S+W
         RTCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759030527; x=1759635327;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EThvQSEsdZASVxNngwA6EkJ6cLFqefdGwup77fJirPM=;
        b=bn5FcCuhECTIP+WljM1Km1spRunIomQUpZ2QbAv2nLojkfdQbelsfqaJ8nodKSBSEv
         KL6vujd9cjNNaXZFtNe7DzcBzG69B+TTh9Nd9kTggNTDa3dLZZFwViD+Y2uogEz8UPtR
         I2fR7eXgNqJDTmim91luRBsu48xlD1rNojVmLttHdIrRgkQ3OOdSQRE8nYYhl0iEsx1S
         +4/Wuk0Z2J+PCXeQ7vieu9/+tbAW864frJwLBrHVCgZ3Y6UGH48xJnntO34iUOfiyq6v
         nuIdla6QeOFJ73HBuEWsNke/0F62TDhY4rkp7u05/DyxyoxBlwvaOM6pU6/7jbhU/soJ
         U0EA==
X-Gm-Message-State: AOJu0YxEfgAguiloXKLUUzcetl6AOiGiHymH1Ss1aKhJd32vQw2QFvSI
	bL0Mj4+sulJf4yTItOU2EfnWpMxo5oHmSWaNLem+SybGlqrOMPVHP4Df5Z7LiY2/8Al+qiXvhaG
	kb/jQA4yPL4XzNBKVVKkfrW1DQYGpfS/KQSEU
X-Gm-Gg: ASbGncuFcIgrfI/fofRZInDE1MjciBjAIgU4dmqzU+gm4MBf/vbtR1khLc2Y+PXY9Mz
	PKNemFhj5Oe8IF9NTEGRA5AAGbAIGiWOI+CujbW75OFbh8qyBcLSp+53jUx8fWLFJ/eD9s/gYuC
	fL9wrBuells2FeEyftv4Jt5BwOv24bcGPNb6sQdRhk37pXXP7Li3WEOiV0JVo2qoH7D4d4uF15F
	C5BLvP7LW1Vp5MGqHKaeBHtdRuu030Ymh8A3TYpBg==
X-Google-Smtp-Source: AGHT+IGOIly3AHC2o5VcwrbxT3RMMqBkMmseRqRkMQJAtsCg5xhGjJ+zebQSCFWmnP/gYRP5gtJtCEY6BxmT6TNTNVw=
X-Received: by 2002:a05:690e:1a9e:b0:635:4ece:20ad with SMTP id
 956f58d0204a3-6361a8734dcmr10094990d50.50.1759030526453; Sat, 27 Sep 2025
 20:35:26 -0700 (PDT)
MIME-Version: 1.0
References: <CAFf+5ziKPTBLFmDAffWTH+MCnOp5NHhZNM803PsemVLRuQoCaQ@mail.gmail.com>
 <20250927214013.GA9163@openwall.com>
In-Reply-To: <20250927214013.GA9163@openwall.com>
From: Amit <amitchoudhary0523@gmail.com>
Date: Sun, 28 Sep 2025 09:05:15 +0530
X-Gm-Features: AS18NWDzp-Jla2no79RU6wz2-2DAhu7S3ow8H0y2wMFcb1195FsHRxOc09CeJd8
Message-ID: <CAFf+5ziVBQ-xk=VQdrbnhgzdu1gu==ZQSrhBGj7PEq6mcOVVAw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000adadf7063fd435c1"
Subject: Re: [oss-security] How to do secure coding and create secure software

--000000000000adadf7063fd435c1
Content-Type: text/plain; charset="UTF-8"

On Sun, 28 Sept 2025 at 03:11, Solar Designer <solar@openwall.com> wrote:

>
> You claim that "If functions/methods are secure then the whole software
> is secure."  If we talk C where main() is also a function, and limit the
> definition of "whole software" to one program, then I'd agree - your
> claim can as well directly say "if [all functions including] main() are
> secure then the whole software [meaning this one program only] is
> secure."  While true, under those definitions this isn't a useful claim.
>
> However, if in "functions/methods are secure" you refer only to smaller
> building blocks, then no, the program built from them may still be
> insecure.  Also "the whole software" isn't necessarily just one program.
>
>
Everyone has said more or less the same thing that even if in a software
all functions are secure then this doesn't mean that the software will be
secure.

But the point is that this is what people have said and this is all
theoretical.

Can someone give an example as to how a software made up of secure
functions can be hacked?

Let's assume that there are 2 (or more) different software and all the
functions in all the software are secure and these software are interacting
with each other. Then how can they be hacked? Can someone give an example.

I don't agree with theoretical assumptions.

Someone also mentioned that secure functions having limits on arguments can
result in DoS. In my opinion, DoS is better than getting hacked.

But still, the main point is that can someone give an example of how a
software made up of all secure functions be hacked? I request for an
example (not theoretical statements).

Or, some example that happened in the past in the real world? I will
analyze that.

Amit

--000000000000adadf7063fd435c1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><div class=3D"gmail_quote gmail=
_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Sun, 28 Sept 202=
5 at 03:11, Solar Designer &lt;<a href=3D"mailto:solar@openwall.com">solar@=
openwall.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex"><br>
You claim that &quot;If functions/methods are secure then the whole softwar=
e<br>
is secure.&quot;=C2=A0 If we talk C where main() is also a function, and li=
mit the<br>
definition of &quot;whole software&quot; to one program, then I&#39;d agree=
 - your<br>
claim can as well directly say &quot;if [all functions including] main() ar=
e<br>
secure then the whole software [meaning this one program only] is<br>
secure.&quot;=C2=A0 While true, under those definitions this isn&#39;t a us=
eful claim.<br>
<br>
However, if in &quot;functions/methods are secure&quot; you refer only to s=
maller<br>
building blocks, then no, the program built from them may still be<br>
insecure.=C2=A0 Also &quot;the whole software&quot; isn&#39;t necessarily j=
ust one program.<br><br></blockquote><div><br></div><div>Everyone has said =
more or less the same thing that even if in a software all functions are se=
cure then this doesn&#39;t mean that the software will be secure.</div><div=
><br></div><div>But the point is that this is what people have said and thi=
s is all theoretical.</div><div><br></div><div>Can someone give an example =
as to how a software made up of secure functions can be hacked?</div><div><=
br></div><div>Let&#39;s assume that there are 2 (or more) different softwar=
e and all the functions in all the software are secure and these software a=
re interacting with each other. Then how can they be hacked? Can someone gi=
ve an example.</div><div><br></div><div>I don&#39;t agree with theoretical =
assumptions.</div><div><br></div><div>Someone also mentioned that secure fu=
nctions having limits on arguments can result in DoS. In my opinion, DoS is=
 better than getting hacked.</div><div><br></div><div>But still, the main p=
oint is that can someone give an example of how a software made up of all s=
ecure functions be hacked? I request for an example (not theoretical statem=
ents).</div><div><br></div><div>Or, some example that happened in the past =
in the real=C2=A0world? I will analyze that.</div><div><br></div><div>Amit<=
/div><div><br></div></div></div>

--000000000000adadf7063fd435c1--
