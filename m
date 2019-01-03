X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5363" "Thursday" "3" "January" "2019" "15:42:09" "-0500" "Jeffrey Walton" "noloader@gmail.com" "<CAH8yC8n8053uxvN94L=ZbeFvNGEmW5BrxwF=XPQVjukA54=kTg@mail.gmail.com>" "126" "[oss-security] Re: Asserts considered harmful (or GMP spills its sensitive information)" "^Cc:" nil nil "1" "2019010320:42:09" "[oss-security] Re: Asserts considered harmful (or GMP spills its sensitive information)" (number mark "        noloader@gma Jan  3  126/5363  " thread-indent "\"[oss-security] Re: Asserts considered harmful (or GMP spills its sensitive information)\"\n") "<a09d0918aa33cc80afea69c8d5bdfda7.squirrel@student-web1.dm.unipi.it>" ("<CAH8yC8m90KssanbHt+YmVt7iLOiwWHASDqRYW5TQGeNV2zWXDw@mail.gmail.com>" "<a09d0918aa33cc80afea69c8d5bdfda7.squirrel@student-web1.dm.unipi.it>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24429 invoked by uid 550); 3 Jan 2019 20:55:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11785 invoked from network); 3 Jan 2019 20:43:01 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=kqfU2VbJ9awApataZPBLarBiIqp9pjv1iOVaC32LPVg=;
        b=pGPLPjZjUNJ35MRvnuU2UI+QGhKbQDGXGPVdGZy6I7E4zuVXQuJ1GguPxZ3DeyZRGn
         u1iEauBoi8OopFH2xhodBXpFOFefqVk/O8zKuK/TMket313IJECOPTXYdob//l0xLmBj
         ZfiUPrhCh/QcIHbKU3S8j6GygT6WVUAg9IsBmpqJb8qhR7HWRfYcXD/Eq9gEgCI3Mbnk
         S1BxEIT1eUg09uvoVBkN4QADEbRqL1kDT+/Vhv+yi3tzd2Nh6H2d8S3KBDNgvqjUtSdg
         c5YxW17JRnCiSe1NdilcYSHHxprp5oUsW5kjapXLqchMcg856t/UeLFtyUi649kN4MFj
         CCWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=kqfU2VbJ9awApataZPBLarBiIqp9pjv1iOVaC32LPVg=;
        b=cpA5t8hmDFtt6sWibGS5uuCdrtdtxTnXrhdQ05496lbHunvAMqUQtBNzMU+ax88pk1
         EFrTqCNpMPYyqhC0is70DcuiY0Wes2LhAtHrNj5XcsfflCYSCOtGLs1w7wuNgWQUwutz
         x/vSBDBDNO1PF2p20pzBVc3FF3G4qvhh9cnd5+YipsA/WT2GrhZBiQzlIDP7jyMGHg1Q
         bDX7eD9yN4x1/e4oMgvUtfmuaZLZe1W0cVviBiv9BuUPsChkKF6M7pIT1KP1z5wK1Zge
         9zt8vzAYVq0GK0QaYyX5rz1uiU3huLdv2fM3m9SeL0MJe/EMhbzj07adAh249lEIEBaA
         ZKqg==
X-Gm-Message-State: AJcUukcNytgbwiFj+ka9YZ9E6ADjrOjXX/XE3FFzVxZ8zJ50H7U92pQH
	dHVcvsFawSk1QE5sgVD7jkqUKOYEtYLwTspclZ9aZ2LM
X-Google-Smtp-Source: ALg8bN4IyUKkrmmBpzRyT5UTGztArtb09aSIXlk2Tc51qBfppyIPfr3D9leelDwyzY4gH1aRVnQy+X7Q5JCicBKVaUo=
X-Received: by 2002:a02:48c6:: with SMTP id p189mr15724218jaa.89.1546548169630;
 Thu, 03 Jan 2019 12:42:49 -0800 (PST)
MIME-Version: 1.0
References: <CAH8yC8m90KssanbHt+YmVt7iLOiwWHASDqRYW5TQGeNV2zWXDw@mail.gmail.com>
 <a09d0918aa33cc80afea69c8d5bdfda7.squirrel@student-web1.dm.unipi.it>
In-Reply-To: <a09d0918aa33cc80afea69c8d5bdfda7.squirrel@student-web1.dm.unipi.it>
Message-ID: <CAH8yC8n8053uxvN94L=ZbeFvNGEmW5BrxwF=XPQVjukA54=kTg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Cc: gmp-bugs@gmplib.org
Date: Thu, 3 Jan 2019 15:42:09 -0500
From: Jeffrey Walton <noloader@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Asserts considered harmful (or GMP spills its sensitive information)
To: oss-security@lists.openwall.com

Thanks Marco. Comments inline.

On Thu, Jan 3, 2019 at 2:55 PM Marco Bodrato <bodrato@mail.dm.unipi.it> wrote:
>
> Il Lun, 31 Dicembre 2018 7:03 pm, Jeffrey Walton ha scritto:
> [...skipping opinions...]
>
> > Here's a small example of triggering an assert using the Nettle
> > library.
>
> This absolutely is NOT a "small example", it requires to build two entire
> libraries!

Well, if you can let us know how to reduce it further then we would be
delighted to hear it.

I thought it did a good job because it did not muck with your system,
and it used independent data provided by someone familiar with the
library. That is, I did not craft a sneaky test case to make a point.
And a 'rm -rf /tmp/gmp-test' is all that's needed to remove it.

> > ARM A-32 does not work at the moment due to GMP build errors.
>
> Can we suggest you to read the GMP manual on how to build the library?
> GMP works fine on many ARM configurations we test and there are lots of
> projects out there (eg. many GNU/Linux distributions) that builds GMP for
> different ARM processors.

Here's what I witness on a BananaPi and a couple of other boards. Can
you provide info on the ARM boards you are using? I have about 8 of
them for testing, and I may be able to duplicate your [successful]
result.

bananapi:~$ ./test-gmp.sh
--2019-01-03 15:07:11--  https://ftp.gnu.org/gnu/gmp/gmp-6.1.2.tar.bz2
...

gcc -std=gnu99 -c -DHAVE_CONFIG_H -I. -I.. -D__GMP_WITHIN_GMP -I..
-DOPERATION_lshift -I/tmp/gmp-test/include -DNDEBUG -g2 -O2
-march=native -fPIC -Wa,--noexecstack tmp-lshift.s -fPIC -DPIC -o
.libs/lshift.o
tmp-lshift.s: Assembler messages:
tmp-lshift.s:106: Error: selected processor does not support ARM mode
`vdup.32 d6,r3'
tmp-lshift.s:108: Error: selected processor does not support ARM mode
`vdup.32 d7,r3'
tmp-lshift.s:114: Error: selected processor does not support ARM mode
`vshl.u64 d18,d19,d7'
tmp-lshift.s:120: Error: selected processor does not support ARM mode
`vshl.u64 d4,d19,d6'
...

> > In the case below Nettle is using benign data and not maliciously
> > crafted data.
>
> I'm sorry, but your analysis was incorrect.
>
> I agree, Nettle is not using "maliciously crafted data", but I do not
> agree when you say that it "is using benign data".
>
> With your build options, Nettle calls the GMP function mpn_sec_powm with
> an invalid parameter: ebn = 0.
>
> Because of an error in the Nettle library you built, GMP receives "non
> benign data". To avoid further memory corruptions, GMP aborts.
>
> Thanks to this behaviour of GMP, you was able to catch the incorrect built
> of the library using it. ;-)
>
> Using mpn_sec_powm with an exponent of zero bits is obviously a nonsense,
> and in general the documentation of GMP clearly says that arguments of
> size zero are not supported.
>
> On GMP side, we can only specify even more explicitly in the documentation
> of that function the need for non-zero sized arguments.

Returning a failure from mpn_sec_powm would be a most welcomed
improvement. It would be a welcomed improvement if GMP does it in
other places, too. Crashing is least welcomed behavior for many uses
cases, including those where availability and confidentiality is a
concern.

Gracefully handling failure serves several purposes. First, returning
failure is what developers expect to happen. If a program uses a
function incorrectly then it is expected to fail. Developers are
usually good about checking return values at call sites.

Second, when GMP crashes it is setting a policy for the application.
This is ass-backwards - the application sets its own policies, not
libraries. Only the application knows the requirements to  dictate
runtime behaviors.

Related, even GMP calling exit(-1) rather than abort() is GMP setting
policies. GMP does not know what the policies and requirements are, so
it is not in a position to dictate behavior.

Third, it improves Availability in CIA. A crashed service or app does
not service requests, so there is no availability.

Fourth, it ensures Confidentiality in CIA. A core dump with sensitive
information leaks information and violates security policies. Crashing
results in sensitive information leave's the app's security boundary,
is written to the file system and is sent to platform provider .

Finally, both returning a failure, exiting, and crashing preserves
Integrity in CIA. However, there are too many tangential problems with
exiting or crashing.

Earlier I said, "A core dump with sensitive information leaks
information and violates security policies". I've worked in US DoD, US
Financial and US gov on security architecture teams. I've read a lot
of security policies and helped write a few. I can unequivocally say
no organization would allow sensitive information to leave the
security boundary without proper controls, including crash dumps
(crash dumps are just another egress point or dataflow). That
application or library would be rejected and sent into risk
acceptance.

And for completeness, I personally adore asserts. I use them liberally
in my programs because they create self debugging programs. I spend
next to no time under a debugger because asserts are such a
tattletale. But come production/release time, the time for debugging
is over. Asserts are not present in production code because I don't
depend on crashes to help keep my safe and program secure.

Jeff
