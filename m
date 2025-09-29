Received: (qmail 20464 invoked by uid 550); 29 Sep 2025 18:03:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 14200 invoked from network); 29 Sep 2025 18:03:05 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759168975; x=1759773775; darn=lists.openwall.com;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2qk+9YMM23agir2FnP7kTqh4WGJHXJk8h7RC6Sz8fSQ=;
        b=Y1aQSmtTznk/CKY7xYNMAgmqndysDDst6rcvXGpFLydtYQm8V94sZdDnmHlNiQw+Gv
         vIDI4O9gm/romJIzvZC1OC0ElGTJ99aK6dcjTgkEysZEJmKVN/LIiip3LPlWEkbFZ8hf
         35up2jUHcQhVIrCcEhP7nyUWKtz0GTXYPcNjP5u2l68sMjRchYjEEswcWBL88YOCrn+t
         ppVVtt/sUL25z3j4jSE1jJKlGncvq27BVXCsl7/8x9fmm4oOskouc1WMF+QgCyAag5Mh
         rhDydh3sEd6DUzAWv54REO0qZf7xV6HkMGd15Kq5sbFGl3YgahVFM6x+bAWPIXMTdGwW
         wxqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759168975; x=1759773775;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2qk+9YMM23agir2FnP7kTqh4WGJHXJk8h7RC6Sz8fSQ=;
        b=P1whgoawQxNro/ZV3jhYfLAOq28TH9R1W7lvNsseKeI7z2HiUHMRvy2MrF/5j7XZFk
         sJzwCTqwzJ9eIPf7aDmtL2jQlVGN95mJSrKcicl2cpCwluAqWG7hbUawre+JbViwYKez
         SDWbDX8N5g/tTS9ajs7K5pLm4D47LnlYwBM+Vq+gE1UAxeqTdtI39rnn2giAV72HeIsh
         qooT8p2ZwE96skU7eLW1U8XVjxa3rdUN3X9dkI+LQ8XLSiInrBpiIFmaCSCVBo8i9W3E
         y1uPciZOCEsGEb6Mmx31iHeMD7DZ56jka8I14vTKAsT6/xLnrHT07IVE0iIj/Eq2CmSR
         rlXw==
X-Gm-Message-State: AOJu0YwPNxbiLwHkm1X38q0us7CIqHp8L8NN5j+n8Tt3EIK5I1xS1JRh
	kq78o13LFWSKqjEgCTVMIyo/nvWUzQsuzCtOZwryS7p/xCLDK0IyOqzMriR9cmKsHZ67c4ctbD7
	3xrEGl+6rSflLX28ffLCiGwkygm9v6t7jdQ==
X-Gm-Gg: ASbGncuUWUQwjoRo4G9e5ZN5oC2LWpTuGxY+RuSy+1xo/C82iknbPNnM//cE8i2oJrq
	2lhhjnYwTs9OMIZ/UaB7UOyQIPgZqxWTsDQNVw7V8WYymmWGcFeubR6AU0RS/hJ5qxYEc+enrlH
	ww3DKbA/IdbEw/Hc6dU0Mo9yxnPkXwyn3WzGEROYrYiOhYwhybNflIDc1FzQ9JQbaGuqo07/CPH
	ZJpv3SlxL/xIRaW3hYbv2+sjUqkgmqmxM5YYFyB
X-Google-Smtp-Source: AGHT+IFU0dqPCdZ/VL2k3wwOFyLnUgmJVyQL/F8gSS6lMglgyi5qgDT0EJWu4n8vPgKSMlLAnh5rSCXGV+SRsaFFOVg=
X-Received: by 2002:a05:690e:d51:b0:635:4ecf:bdd2 with SMTP id
 956f58d0204a3-6361a8d5b94mr17734356d50.52.1759168974988; Mon, 29 Sep 2025
 11:02:54 -0700 (PDT)
MIME-Version: 1.0
References: <CAFf+5ziKPTBLFmDAffWTH+MCnOp5NHhZNM803PsemVLRuQoCaQ@mail.gmail.com>
 <20250927214013.GA9163@openwall.com> <CAFf+5ziVBQ-xk=VQdrbnhgzdu1gu==ZQSrhBGj7PEq6mcOVVAw@mail.gmail.com>
 <CAH8yC8mQBVE5TZ_N8Cc1FkVGrqgV9rhNeAxoMi2wit5C26weFg@mail.gmail.com>
 <CAFf+5zhE2d_4TfbXH25PCLeRLTQPH832c9TwkH9FaS6E0t0qKQ@mail.gmail.com> <CAEoi9W6M=x-mnZQBC8t6WYpO9FfghCECT=PBabYJ2_0je66kxg@mail.gmail.com>
In-Reply-To: <CAEoi9W6M=x-mnZQBC8t6WYpO9FfghCECT=PBabYJ2_0je66kxg@mail.gmail.com>
From: Dan Cross <crossd@gmail.com>
Date: Mon, 29 Sep 2025 14:02:17 -0400
X-Gm-Features: AS18NWBsRCcZaku-x3htXFMo4E8mzwhJL0HZ1wFToK3jJNDtUCWNjt8Ka7Baeq8
Message-ID: <CAEoi9W7U8DymJtorgkpoeTZhw2KqAhwJjaaj+M16pK9rXw_m8w@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] How to do secure coding and create secure software

On Mon, Sep 29, 2025 at 12:49=E2=80=AFPM Dan Cross <crossd@gmail.com> wrote:
> [snip]
> For example, in your original email, you mention validating the length
> of a 0-terminated C string. You suggest that one may use the `strnlen`
> function to do this, since there's no guarantee that an input buffer
> actually contains a 0 terminator (i.e., it may not be a string).
> Further you say, "For example, you can specify that the minimum length
> of a string argument should be 1 and the maximum length of the string
> argument should be 1024." You then write, "The code will be 'len =3D
> strnlen(str, 1025); if (len =3D=3D 1025) { return error; }'".  Well, now
> we have an ambiguity; C defines "the string" as containing the 0
> terminating byte (cf eg C18, sec 7.1.1 para 1: "A string is a
> contiguous sequence of characters terminated by and including the
> first null character"). `strlen`, on the other hand, returns the
> number of characters before the terminating zero, which is not the
> same thing.  Did you really mean the maximum length of the string, or
> did you mean its size?
>
> Suppose that you truly meant that the maximum length, e.g., as would
> be returned by `strlen`, should be 1024; then that string's _size_
> could be up to 1025, as for a maximally sized string the terminating
> null character would be the 1025'th char. But this code returns an
> error on the value 1025; clearly this rejects a maximum length string.

Oops, and I'm off by one myself here: if b[1024]=3D=3D0, then the return
value of `strnlen` is 1024, not 1025. But regardless, the subsequent
point stands: the function, as written, is ambiguous with respect to
length and size.

        - Dan C.

> Reading between the lines, it appears what you mean is that the
> string's maximum _size_ is 1024, as the code clearly intends to find
> the terminating zero within the first 1024 characters, which would
> yield a maximum length of 1023, not 1024.  But in that case, you're
> looking at up to 1025 characters, one beyond the size of the string:
> consider what happens in the case of a pointer that points to 1024
> bytes of validly mapped memory, but those 1024 bytes end on a page
> boundary, and the subsequent page is unmapped.
>
> In either case, your example code appears to exhibit a classic
> off-by-one error, and can be tricked into either looking beyond the
> end of a valid memory object (if max len =3D=3D 1023 and max size =3D=3D
> 1024), or failing to properly accept valid strings (if max len =3D=3D 1024
> and max size =3D=3D 1025). The error here is in assuming that the return
> value of `strnlen`, as you have used it, is enough to robustly
> establish that the string ends within the acceptable bounds.
>
> Sure, this is easy enough to fix in this case (hint: read up on the
> `memchr` function). But beyond that simple error, C provides you with
> _no way_ to determine whether a given `char *`, when provided as an
> argument to an arbitrary function, points into a valid object of your
> arbitrarily chosen length. So already your advice is impossible to
> follow in the general case.
>
> > Now, coming to the above point number 2:
> >
> > An example of openssh is given that it first does authentication and th=
en it does encryption and this is insecure. I will investigate this and rep=
ly later.
>
> Another area you don't touch on at all are TOCTOU bugs.
>
> I suggest, perhaps, studying a bit more.
>
>         - Dan C.
