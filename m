Received: (qmail 16298 invoked by uid 550); 29 Sep 2025 14:17:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 17686 invoked from network); 29 Sep 2025 03:31:46 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759116698; x=1759721498; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bdokonfLLzKpgEta91n68jvD+nQUJ8QqSPWKidXMKYI=;
        b=E2bFaFVIBgzC4ZRXGYk7wd0xWo377+Zks2J6DJoJ3ex+Nddm37jY1gShOITyjLtqp/
         bKogzcbybseaXIbg2ANjHQiIQkE2TX8o8DKzkMlcugfNvuuIRSCBDnDdjOEQDAurDx/D
         FVsUVLCbKPAMDQtM5QRGZg4EGqsHdELlEUNcAr7VXJVfF5NdygPPIFDfpSqWtpYJhGJ0
         sytamRuTOt5VdV+i89NA1r528RrfoAzSg4GjTBp76oFWwm/b5L5GnDb2+8lGzWlvVHJi
         SXbnD/RnGlaWRB8Adv7SrQlJX5FGpCrZuViQCHHW7ehPi8xcpMvRAt2LJ7XNhPddgvs+
         ol7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759116698; x=1759721498;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bdokonfLLzKpgEta91n68jvD+nQUJ8QqSPWKidXMKYI=;
        b=ExSn/TrvSzjCKoD3EksRrdcZdcnfWe0Cna3vL94mnMyez9qNY1OzqlffmCWHO8l/yX
         1b1RaIGhVh552ubx+WjCvL0aTt1LumgIfcCf4cIzd8SvOGsIYNdosX0FvWxND7IBsRly
         ucBToidyVPRJZWSpnBAd4DEFWEjY41CILk6Z4SI8JUrofPFTYsZuugWlPoE8vmSuUucQ
         +K53eR3HTSNt6RRCiT5p9tk67yxkNzECqN+MbMQT/XJnuxNA5mfRYiShNFlAv5BZOTWK
         t7OH0IV3a2z/LRvkOOBV7i78k4yfPwNAPRsxL7iVoeSY4mh79LCigNldTAMiNFGz+/xQ
         Y9yA==
X-Gm-Message-State: AOJu0YyTnpFc+AUMHjv6aXuvVRrx5ALW6ME6+D2vi40VRXmjEyO0Vlq7
	wDrPn5W509O7r8hWfxI3bJ9PMuhSlyQlDWjNO+l0sGF8ywY/uSDC3KZNwbC+li/Q09DLTsNLK88
	dt/6pj7ByPnOnkeRvv7CTN/omoRpN9iFE6I7HEPCvPg==
X-Gm-Gg: ASbGncv51c3ytfeGfMyhyzOR3a13N2vfpk51cRUfq3eGQSTO6nWqaNYAs/tRJztfUtO
	N44Wu0cRqXa2lzqwvgsKSV9aWbROTPoYO7JnbI6UgvjTSLKicAvfm2u+GyU7XVt/1Gtt/hvkGQ4
	0XF6Y6rljdAI0rZGp6X4eo8fx8uSFpSVhb0IuQ9ybrcbdrPSaSDaLANPiMUmhXiJG4Wee2RCUe2
	rwssAO4vmSCFGqKceC1TjenSLAtH+Rw2RSru+oS7Q==
X-Google-Smtp-Source: AGHT+IGRnNWzV1D01EgEHkXhfATM9xIB0tU3tKb25m68WfFWQ71LIbXlGxQ3Rt0YyMui1vZ7/bALLtmjEPWCNyrSBcU=
X-Received: by 2002:a05:690e:134e:b0:5fc:992:6206 with SMTP id
 956f58d0204a3-6361a840f13mr17353783d50.29.1759116698008; Sun, 28 Sep 2025
 20:31:38 -0700 (PDT)
MIME-Version: 1.0
References: <CAFf+5ziKPTBLFmDAffWTH+MCnOp5NHhZNM803PsemVLRuQoCaQ@mail.gmail.com>
 <20250927214013.GA9163@openwall.com> <CAFf+5ziVBQ-xk=VQdrbnhgzdu1gu==ZQSrhBGj7PEq6mcOVVAw@mail.gmail.com>
 <CAH8yC8mQBVE5TZ_N8Cc1FkVGrqgV9rhNeAxoMi2wit5C26weFg@mail.gmail.com>
In-Reply-To: <CAH8yC8mQBVE5TZ_N8Cc1FkVGrqgV9rhNeAxoMi2wit5C26weFg@mail.gmail.com>
From: Amit <amitchoudhary0523@gmail.com>
Date: Mon, 29 Sep 2025 09:01:26 +0530
X-Gm-Features: AS18NWCfHs7QRIgOeCgjCgw6RiiBdw1xuGwDyLbLCN64RPi01b18RXYdiVptDmg
Message-ID: <CAFf+5zhE2d_4TfbXH25PCLeRLTQPH832c9TwkH9FaS6E0t0qKQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000e73f9f063fe84522"
Subject: Re: [oss-security] How to do secure coding and create secure software

--000000000000e73f9f063fe84522
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 29 Sept 2025 at 01:21, Jeffrey Walton <noloader@gmail.com> wrote:

> On Sun, Sep 28, 2025 at 10:53=E2=80=AFAM Amit <amitchoudhary0523@gmail.co=
m> wrote:
> >
> >
> > On Sun, 28 Sept 2025 at 03:11, Solar Designer <solar@openwall.com>
> wrote:
> >>
> >>
> >> You claim that "If functions/methods are secure then the whole software
> >> is secure."  If we talk C where main() is also a function, and limit t=
he
> >> definition of "whole software" to one program, then I'd agree - your
> >> claim can as well directly say "if [all functions including] main() are
> >> secure then the whole software [meaning this one program only] is
> >> secure."  While true, under those definitions this isn't a useful clai=
m.
> >>
> >> However, if in "functions/methods are secure" you refer only to smaller
> >> building blocks, then no, the program built from them may still be
> >> insecure.  Also "the whole software" isn't necessarily just one progra=
m.
> >
> > [...]
> > But the point is that this is what people have said and this is all
> theoretical.
> >
> > Can someone give an example as to how a software made up of secure
> functions can be hacked?
>
> Authenticated Encryption.  You might have a module that performs AES
> encryption, and another module that performs MAC'ing using SHA-256.
> But if you combine them incorrectly, you have an insecure system.  If
> interested, the way to combine them so they are provably secure is
> Encrypt-then-Authenticate (EtA) as used in IPSec.
>
> And the counterexamples... The way SSH combines them is insecure, and
> the way TLS combines them is insecure.  SSH and TLS combine them in a
> way that sets up an oracle.  In crypto engineering speak, SSH and TLS
> are _not_ IND-CCA2.  (IND-CCA2 is a strong notion of security).
>
> And it gets worse.  Some developers use encryption alone -- they do
> not provide an authentication tag.  That is, the developer completely
> omits the MAC step.  So all cipher texts are vulnerable to tampering.
>
> Also see Hugo Krawczyk's paper "The Order of Encryption and
> Authentication for Protecting Communications" (2001),
> <https://www.iacr.org/archive/crypto2001/21390309.pdf>.
>
>
To sum it all up, people have raised two points:

1. Secure functions can't secure the software if the logic inside the
function is not secure or if there is a bug.
2. Wrong ordering of secure function calls can lead to insecure software.

The above point number 1 is already addressed in my article. I will copy
paste the lines that handle this issue:

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
2. The function body should also be secure. After writing code, you should
review your code for security issues and also get it peer reviewed for
security
issues. In general, you should always get your code peer reviewed for
security
issues, bugs, company coding guidelines, etc.
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

So, it looks like people didn't read this point.

So, now point number 1 is addressed.

Also, if I say that a function should be secure then it definitely implies
that the whole function should be secure and the function body should also
be secure.

If the function's body is not secure then we can't call it a secure
function.

If a function's body has bugs that will lead to hacking then obviously we
can't call that function a secure function.

Secure function means secure function in all respects. I don't understand
why people are thinking that a secure function can have bugs, insecure
logic, etc.

If someone tells me that a function is secure then I will assume that the
function is secure in all respects - checking arguments, no bugs in body,
etc. and I have already made this clear in point 2 of my article.

Now, coming to the above point number 2:

An example of openssh is given that it first does authentication and then
it does encryption and this is insecure. I will investigate this and reply
later.

---------------------------------------------------------------------------=
-------------------------------------

--000000000000e73f9f063fe84522
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>On Mon, 29 Sept 2025 at 01:21, Jeffr=
ey Walton &lt;<a href=3D"mailto:noloader@gmail.com">noloader@gmail.com</a>&=
gt; wrote:</div></div><div class=3D"gmail_quote gmail_quote_container"><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex">On Sun, Sep 28, 2025 at 10:53=
=E2=80=AFAM Amit &lt;<a href=3D"mailto:amitchoudhary0523@gmail.com" target=
=3D"_blank">amitchoudhary0523@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt;<br>
&gt; On Sun, 28 Sept 2025 at 03:11, Solar Designer &lt;<a href=3D"mailto:so=
lar@openwall.com" target=3D"_blank">solar@openwall.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; You claim that &quot;If functions/methods are secure then the whol=
e software<br>
&gt;&gt; is secure.&quot;=C2=A0 If we talk C where main() is also a functio=
n, and limit the<br>
&gt;&gt; definition of &quot;whole software&quot; to one program, then I&#3=
9;d agree - your<br>
&gt;&gt; claim can as well directly say &quot;if [all functions including] =
main() are<br>
&gt;&gt; secure then the whole software [meaning this one program only] is<=
br>
&gt;&gt; secure.&quot;=C2=A0 While true, under those definitions this isn&#=
39;t a useful claim.<br>
&gt;&gt;<br>
&gt;&gt; However, if in &quot;functions/methods are secure&quot; you refer =
only to smaller<br>
&gt;&gt; building blocks, then no, the program built from them may still be=
<br>
&gt;&gt; insecure.=C2=A0 Also &quot;the whole software&quot; isn&#39;t nece=
ssarily just one program.<br>
&gt;<br>
&gt; [...]<br>
&gt; But the point is that this is what people have said and this is all th=
eoretical.<br>
&gt;<br>
&gt; Can someone give an example as to how a software made up of secure fun=
ctions can be hacked?<br>
<br>
Authenticated Encryption.=C2=A0 You might have a module that performs AES<b=
r>
encryption, and another module that performs MAC&#39;ing using SHA-256.<br>
But if you combine them incorrectly, you have an insecure system.=C2=A0 If<=
br>
interested, the way to combine them so they are provably secure is<br>
Encrypt-then-Authenticate (EtA) as used in IPSec.<br>
<br>
And the counterexamples... The way SSH combines them is insecure, and<br>
the way TLS combines them is insecure.=C2=A0 SSH and TLS combine them in a<=
br>
way that sets up an oracle.=C2=A0 In crypto engineering speak, SSH and TLS<=
br>
are _not_ IND-CCA2.=C2=A0 (IND-CCA2 is a strong notion of security).<br>
<br>
And it gets worse.=C2=A0 Some developers use encryption alone -- they do<br>
not provide an authentication tag.=C2=A0 That is, the developer completely<=
br>
omits the MAC step.=C2=A0 So all cipher texts are vulnerable to tampering.<=
br>
<br>
Also see Hugo Krawczyk&#39;s paper &quot;The Order of Encryption and<br>
Authentication for Protecting Communications&quot; (2001),<br>
&lt;<a href=3D"https://www.iacr.org/archive/crypto2001/21390309.pdf" rel=3D=
"noreferrer" target=3D"_blank">https://www.iacr.org/archive/crypto2001/2139=
0309.pdf</a>&gt;.<br><br></blockquote><div><br></div><div>To sum it all up,=
 people have raised two points:</div><div><br></div><div>1. Secure function=
s can&#39;t secure the software if the logic inside the function is not sec=
ure or if there is a bug.</div><div>2. Wrong ordering of secure function ca=
lls can lead to insecure software.</div><div><br></div><div>The above point=
 number 1 is already addressed in my article. I will copy paste the lines t=
hat handle this issue:</div><div><br></div><div>=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</div><div>2. The function body s=
hould also be secure. After writing code, you should<br>review your code fo=
r security issues and also get it peer reviewed for security<br>issues. In =
general, you should always get your code peer reviewed for security<br>issu=
es, bugs, company coding guidelines, etc.</div><div>=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</div><div><br></div><div>S=
o, it looks like people didn&#39;t read this point.=C2=A0</div><div><br></d=
iv><div>So, now point number 1 is addressed.</div><div><br></div><div>Also,=
 if I say that a function should be secure then it definitely implies that =
the whole function should be secure and the function body should also be se=
cure.</div><div><br></div><div>If the function&#39;s body is not secure the=
n we can&#39;t call it a secure function.</div><div><br></div><div>If a fun=
ction&#39;s body has bugs that will lead to hacking then obviously we can&#=
39;t call that function a secure function.</div><div><br></div><div>Secure =
function means secure function in all respects. I don&#39;t understand why =
people are thinking that a secure function can have bugs, insecure logic, e=
tc.</div><div><br></div><div>If someone tells me that a function is secure =
then I will assume that the function is secure in all respects - checking a=
rguments, no bugs in body, etc. and I have already made this clear in point=
 2 of my article.</div><div><br></div><div>Now, coming to the above point n=
umber 2:=C2=A0</div><div><br></div><div>An example of openssh is given that=
 it first does authentication and then it does encryption and this is insec=
ure. I will investigate this and reply later.</div><div><br></div><div>----=
---------------------------------------------------------------------------=
---------------------------------</div><div><br></div></div></div>

--000000000000e73f9f063fe84522--
