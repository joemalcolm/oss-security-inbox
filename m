Received: (qmail 11396 invoked by uid 550); 29 Sep 2025 16:58:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 26357 invoked from network); 29 Sep 2025 16:49:50 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759164581; x=1759769381; darn=lists.openwall.com;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0y2V0b6KOaSIETL3kI8Jv6i7z99vFsLiZFITwR+AFO8=;
        b=MUJs0xrap48YfQESM6YobVWDsjLTVpG+HKm1eMmbqulrtoqgo6q0tkFvESEVqz1fMD
         uJ7wIq7ll/1LHjs3be9Fd3idaDp2EB15kKOsJJdtEEJvdPkY3VjkF4j/X4E/1LzJIto2
         jK+2p5JNRPoCTAHntrIaJ9tPT+dd6g/lSbaAiUopOF6s+OgTZjK/nTQXIZD/yN0uhwyr
         TrMTw2YpLp+LFnXBlv4DuFzdMH+LAQGvySVRhBrFzb9Mamxs2/SxCHjbrlswS4PA7Els
         pX/CWVnJDtv6rd3UwFbe9Zl6Dfo1oxt74igZLiTCadlWYtnCpmgWHgjTMP8+NIVbPfxw
         G5RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759164581; x=1759769381;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0y2V0b6KOaSIETL3kI8Jv6i7z99vFsLiZFITwR+AFO8=;
        b=Q9UEJkINb5Gt87otWab8u+dKvFkQotuUANQ9zdzwLTwYwyb9a100gv+p28Eu8b+9xn
         DfsHJ+5Q7e7Rw3b89GBrQ9KRFTwco6dO58gUA8lbuRByYhjDazfw6TcoPdNL6SnxeGAg
         xFh63JySiDKcSIxgNxSKRjR4akaHGqKZ2ZOo6gqrW+DcSM1sHKyaCAcw2Wq5jLpIwROC
         YESHvbnx2KCELPBj+PRhWrC8xBwFDC5solJzmB6OCHiGis6QZWsoMoIhOtXrt0Sbwzig
         istTxA35DuV+qoGO2YQ4K/RcBakS8Wdund9O2VoeyJKSMjkT8iaVdZirbyVvNoIpwWxR
         uLrw==
X-Gm-Message-State: AOJu0YyPksjrIeHXQg3GwxXQmscOe05YCzNOEGc91M3f337AaBh//Kdw
	LDNBDqTabRhxKVXop2aQBRZPmnkv5KsNiaXCfTHURoSgIpZe+zOXQbk6ATKx18eoZFpw4XGaDHQ
	BtEdN32m4171d+ltWoadZUaoJtZc3ZVrzueok
X-Gm-Gg: ASbGncuQE2T+mbJSa75H7zBNU6LAsqtH2eGqDTF3fCSV7K66pMYT1mhTM7k2YFKUSW0
	1PxKW6zsqzOVeC8h7HGOw2CWNpohGJ4BfFaHZ8WyRvbYnUtYAqjEX6YjbT/MFwfXAYQ0flh5ddu
	ay0gaYo+oR4OJcMdE4CkzDty1o6vve71lpqLhMXCba0L1mqhF6tNjJnK2RXFK+p7jF9NaWpODHF
	1m88E9+CFjUhDKeT4KLWsqldvmza3PbJq9ulcH4
X-Google-Smtp-Source: AGHT+IEzcHN/wgFk9+Vq0k3YaA8L2lFD4t/EOP734BemKSx4AeGONqg+Ujk3QuARYrwNc9xYxBcJEK2DPJUJ5pvc+zo=
X-Received: by 2002:a05:690e:1552:10b0:636:d691:891c with SMTP id
 956f58d0204a3-636d6918a71mr13696287d50.53.1759164580227; Mon, 29 Sep 2025
 09:49:40 -0700 (PDT)
MIME-Version: 1.0
References: <CAFf+5ziKPTBLFmDAffWTH+MCnOp5NHhZNM803PsemVLRuQoCaQ@mail.gmail.com>
 <20250927214013.GA9163@openwall.com> <CAFf+5ziVBQ-xk=VQdrbnhgzdu1gu==ZQSrhBGj7PEq6mcOVVAw@mail.gmail.com>
 <CAH8yC8mQBVE5TZ_N8Cc1FkVGrqgV9rhNeAxoMi2wit5C26weFg@mail.gmail.com> <CAFf+5zhE2d_4TfbXH25PCLeRLTQPH832c9TwkH9FaS6E0t0qKQ@mail.gmail.com>
In-Reply-To: <CAFf+5zhE2d_4TfbXH25PCLeRLTQPH832c9TwkH9FaS6E0t0qKQ@mail.gmail.com>
From: Dan Cross <crossd@gmail.com>
Date: Mon, 29 Sep 2025 12:49:04 -0400
X-Gm-Features: AS18NWB4tdUdjrEJ_vER8bubtn4r_kfccTcbx-1ixIr2FA-d1-rUKSR1QihNdiM
Message-ID: <CAEoi9W6M=x-mnZQBC8t6WYpO9FfghCECT=PBabYJ2_0je66kxg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] How to do secure coding and create secure software

On Mon, Sep 29, 2025 at 11:51=E2=80=AFAM Amit <amitchoudhary0523@gmail.com>=
 wrote:
> On Mon, 29 Sept 2025 at 01:21, Jeffrey Walton <noloader@gmail.com> wrote:
>> On Sun, Sep 28, 2025 at 10:53=E2=80=AFAM Amit <amitchoudhary0523@gmail.c=
om> wrote:
>> > On Sun, 28 Sept 2025 at 03:11, Solar Designer <solar@openwall.com> wro=
te:
>> >> You claim that "If functions/methods are secure then the whole softwa=
re
>> >> is secure."  If we talk C where main() is also a function, and limit =
the
>> >> definition of "whole software" to one program, then I'd agree - your
>> >> claim can as well directly say "if [all functions including] main() a=
re
>> >> secure then the whole software [meaning this one program only] is
>> >> secure."  While true, under those definitions this isn't a useful cla=
im.
>> >>
>> >> However, if in "functions/methods are secure" you refer only to small=
er
>> >> building blocks, then no, the program built from them may still be
>> >> insecure.  Also "the whole software" isn't necessarily just one progr=
am.
>> >
>> > [...]
>> > But the point is that this is what people have said and this is all th=
eoretical.
>> >
>> > Can someone give an example as to how a software made up of secure fun=
ctions can be hacked?
>>
>> Authenticated Encryption.  You might have a module that performs AES
>> encryption, and another module that performs MAC'ing using SHA-256.
>> But if you combine them incorrectly, you have an insecure system.  If
>> interested, the way to combine them so they are provably secure is
>> Encrypt-then-Authenticate (EtA) as used in IPSec.
>>
>> And the counterexamples... The way SSH combines them is insecure, and
>> the way TLS combines them is insecure.  SSH and TLS combine them in a
>> way that sets up an oracle.  In crypto engineering speak, SSH and TLS
>> are _not_ IND-CCA2.  (IND-CCA2 is a strong notion of security).
>>
>> And it gets worse.  Some developers use encryption alone -- they do
>> not provide an authentication tag.  That is, the developer completely
>> omits the MAC step.  So all cipher texts are vulnerable to tampering.
>>
>> Also see Hugo Krawczyk's paper "The Order of Encryption and
>> Authentication for Protecting Communications" (2001),
>> <https://www.iacr.org/archive/crypto2001/21390309.pdf>.
>
> To sum it all up, people have raised two points:
>
> 1. Secure functions can't secure the software if the logic inside the fun=
ction is not secure or if there is a bug.
> 2. Wrong ordering of secure function calls can lead to insecure software.
>
> The above point number 1 is already addressed in my article. I will copy =
paste the lines that handle this issue:
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> 2. The function body should also be secure. After writing code, you should
> review your code for security issues and also get it peer reviewed for se=
curity
> issues. In general, you should always get your code peer reviewed for sec=
urity
> issues, bugs, company coding guidelines, etc.
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> So, it looks like people didn't read this point.

No, people read it, but from the replies I have seen, no one (who
responded, anyway) was particularly convinced of the veracity of the
statement.

> So, now point number 1 is addressed.

That's not addressed.  You may _think_ something is secure, it may
even _be_ secure in a specific context. But that doesn't mean that it
_is_ secure, or will remain so if it is, should the surrounding
context change.

> Also, if I say that a function should be secure then it definitely implie=
s that the whole function should be secure and the function body should als=
o be secure.
>
> If the function's body is not secure then we can't call it a secure funct=
ion.

As has been pointed out, this is a tautology. But as advice for actual
programming, it is reductive to the point of uselessness.

> If a function's body has bugs that will lead to hacking then obviously we=
 can't call that function a secure function.
>
> Secure function means secure function in all respects. I don't understand=
 why people are thinking that a secure function can have bugs, insecure log=
ic, etc.

Perhaps it doesn't.  But such a secure function does, generally, not
exist in isolation; things _around_ the "secure function" may render
the overall system insecure.  For example, there was a time when DES
was considered secure; now it's not. So a function that used DES and
was considered "secure" 40 years ago is no longer secure.

> If someone tells me that a function is secure then I will assume that the=
 function is secure in all respects - checking arguments, no bugs in body, =
etc. and I have already made this clear in point 2 of my article.

Define "bugs in body", though.

For example, in your original email, you mention validating the length
of a 0-terminated C string. You suggest that one may use the `strnlen`
function to do this, since there's no guarantee that an input buffer
actually contains a 0 terminator (i.e., it may not be a string).
Further you say, "For example, you can specify that the minimum length
of a string argument should be 1 and the maximum length of the string
argument should be 1024." You then write, "The code will be 'len =3D
strnlen(str, 1025); if (len =3D=3D 1025) { return error; }'".  Well, now
we have an ambiguity; C defines "the string" as containing the 0
terminating byte (cf eg C18, sec 7.1.1 para 1: "A string is a
contiguous sequence of characters terminated by and including the
first null character"). `strlen`, on the other hand, returns the
number of characters before the terminating zero, which is not the
same thing.  Did you really mean the maximum length of the string, or
did you mean its size?

Suppose that you truly meant that the maximum length, e.g., as would
be returned by `strlen`, should be 1024; then that string's _size_
could be up to 1025, as for a maximally sized string the terminating
null character would be the 1025'th char. But this code returns an
error on the value 1025; clearly this rejects a maximum length string.

Reading between the lines, it appears what you mean is that the
string's maximum _size_ is 1024, as the code clearly intends to find
the terminating zero within the first 1024 characters, which would
yield a maximum length of 1023, not 1024.  But in that case, you're
looking at up to 1025 characters, one beyond the size of the string:
consider what happens in the case of a pointer that points to 1024
bytes of validly mapped memory, but those 1024 bytes end on a page
boundary, and the subsequent page is unmapped.

In either case, your example code appears to exhibit a classic
off-by-one error, and can be tricked into either looking beyond the
end of a valid memory object (if max len =3D=3D 1023 and max size =3D=3D
1024), or failing to properly accept valid strings (if max len =3D=3D 1024
and max size =3D=3D 1025). The error here is in assuming that the return
value of `strnlen`, as you have used it, is enough to robustly
establish that the string ends within the acceptable bounds.

Sure, this is easy enough to fix in this case (hint: read up on the
`memchr` function). But beyond that simple error, C provides you with
_no way_ to determine whether a given `char *`, when provided as an
argument to an arbitrary function, points into a valid object of your
arbitrarily chosen length. So already your advice is impossible to
follow in the general case.

> Now, coming to the above point number 2:
>
> An example of openssh is given that it first does authentication and then=
 it does encryption and this is insecure. I will investigate this and reply=
 later.

Another area you don't touch on at all are TOCTOU bugs.

I suggest, perhaps, studying a bit more.

        - Dan C.
