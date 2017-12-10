X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["7979" "Sunday" "10" "December" "2017" "07:45:10" "-0500" "Jeffrey Walton" "noloader@gmail.com" "<CAH8yC8k08iF7oMgJ0DwQTq8nYS8spW2nP-Sn1yK672CK327h4w@mail.gmail.com>" "159" "Re: [oss-security] Re: Recommendations GnuPG-2 replacement" nil nil nil "12" "2017121012:45:10" "[oss-security] Re: Recommendations GnuPG-2 replacement" (number mark "U       noloader@gma Dec 10  159/7979  " thread-indent "\"Re: [oss-security] Re: Recommendations GnuPG-2 replacement\"\n") "<64350e00-a8db-0000-557f-30663fa41812@ruhr-uni-bochum.de>" ("<780d4f26-0803-6ef8-3a21-bcf8ea480a29@ruhr-uni-bochum.de>" "<87r2s5xz3x.fsf@gnu.org>" "<64350e00-a8db-0000-557f-30663fa41812@ruhr-uni-bochum.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5553 invoked by uid 550); 10 Dec 2017 13:12:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25899 invoked from network); 10 Dec 2017 12:45:23 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:reply-to:in-reply-to:references:from:date:message-id
         :subject:to:content-transfer-encoding;
        bh=yumIKODMfX/yreEdFxshyA+Atw+95rSFaXn+yk7w1yA=;
        b=b8DPRlyTznp0byCVj87Xy5+31aa1DkXLCGR4C9YLWYdUvP2/b5ZbYgK5UWUot0sMRc
         Sn4xql+MN2sCDXKOVVQOWtLXXorxNOt/OuxNt7BRmkJC4kbJdNFgfmrFB/TqeAMN4u7i
         +Gy8dKvsTd7ooAH8tRkruwBTQo94G4qkZfNcS9OYEcpx1QSWPooKw26YKa+wiLkjhjjd
         VGAi2UEsf/HNB46ZZpJq9E0539FeeiH1wQVklkWzMD9NlE2HsrywMWdejRUxwQDLt5JA
         4zo6RvuCbWxS3MV3Nu65m9y6/yom//iy61uPUdRtNqfQnvg3ThB1cZFvaBuvscZ1m4eC
         xtgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:reply-to:in-reply-to:references
         :from:date:message-id:subject:to:content-transfer-encoding;
        bh=yumIKODMfX/yreEdFxshyA+Atw+95rSFaXn+yk7w1yA=;
        b=nWrJLLp51mUfPOBEUg57k463GnhGARHOgvcUarbOn/BDkrGKniv+YwhJt3AhyPDhNc
         U1hJDfNO7DZQc+Lmo0pEia8ZOp9pKQUEQZDQ7Ld67rlPZvTPySEusTIM0kCHZPwjmZo2
         mryul9x3IwDAV28mhHeLPZII45+NWYtQeiaL8Us9fkzaB6m3E8iCSL+glKDE+AGQq5oX
         L5M3BZS5mx2FGq7pikNN6fiNM0lqO49oM+MvHdweqAXiJ1cYwKbJkBxJdPTZhU+sN+BL
         si6ADuhIoc7lfsMDj9KmPSq3OU2a1MutTFueXKcyu+U8Tipi31bx2+Bw5Z1hMQrfS3Jw
         WXkw==
X-Gm-Message-State: AKGB3mKZ+YQuqYckWJHRKifMIRj0Hkt2yqQnciJeNtuj10yQKNvCM0x5
	GAq/LTgmg6hqo/ixvaQRhppIzGbo9Tc4BZxrxkAvff+4
X-Google-Smtp-Source: ACJfBosgKznSqazzx378hZO7pcVQNLHr9rkooLaW8hwsn4Wok18WR5p7IRRh7Nt7PEX1laPBiQtJ9ZvOG97f7vYLyz4=
X-Received: by 10.157.42.41 with SMTP id t38mr2815482ota.319.1512909911073;
 Sun, 10 Dec 2017 04:45:11 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <64350e00-a8db-0000-557f-30663fa41812@ruhr-uni-bochum.de>
References: <780d4f26-0803-6ef8-3a21-bcf8ea480a29@ruhr-uni-bochum.de>
 <87r2s5xz3x.fsf@gnu.org> <64350e00-a8db-0000-557f-30663fa41812@ruhr-uni-bochum.de>
From: Jeffrey Walton <noloader@gmail.com>
Date: Sun, 10 Dec 2017 07:45:10 -0500
Message-ID: <CAH8yC8k08iF7oMgJ0DwQTq8nYS8spW2nP-Sn1yK672CK327h4w@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] Re: Recommendations GnuPG-2 replacement

Hi Marcus,

Sorry to go off-list. Regarding:

> These should all be blog entries.  In fact, I commented on CMake here:
> https://neopg.io/blog/why-cmake/ The short version is: cmake has much
> less boilerplate, more stable interfaces, and it is snappier to use
> during development.  It is also well supported by all five major
> platforms (Windows, MacOS, Linux, Android and iOS).

We had so many problems with Cmake we had to drop it. It accounted for
nearly 20% of our bugs. We could not even set a "C++ project" (i.e.,
'project(cryptopp, CXX)') without breaking Cmake. Also see
https://www.cryptopp.com/wiki/CMake#CMake_Removal.

Regarding:

> I am not per se opposed to a multi-process design, but I'd rather have
> short-lived processes that are started for a single task (like
> decrypting a single message) than long-running daemons...

I think the library made a good design decision by moving secret key
operations out-of-process and then interfacing through a message
passing interface (i.e., Libassuan). In theory a compromise of the web
server should not yield secret keys because the keys are in another
process.

Good luck with the replacement. I really like Jack Lloyd's Botan. Its
a very nice library.

Related, here are some of the upcoming engineering goals for Botan:
https://lists.randombit.net/pipermail/botan-devel/2017-November/002242.html

Jeff

On Fri, Dec 8, 2017 at 7:47 AM, Marcus Brinkmann
<marcus.brinkmann@ruhr-uni-bochum.de> wrote:
> On 12/08/2017 12:01 PM, Ludovic Court=C3=A8s wrote:
>> Hi Marcus,
>>
>> Marcus Brinkmann <marcus.brinkmann@ruhr-uni-bochum.de> skribis:
>>
>>> I started neopg.io two months ago to provide a modern replacement for
>>> GnuPG.  It will go back to a single-binary architecture like gpg1 was,
>>> but move forward on just about every other issue:
>>>
>>> * Written in C++
>>> * based on the Botan crypto library instead of libgcrypt
>>> * typical library + CLI (with subcommands) architecture
>>> * better testing (CI, static analysis)
>>
>> Given that you worked on GnuPG, can you give some background?  It isn=E2=
=80=99t
>> clear to me why using C++/Botan/CMake to give a =E2=80=9Cmodern=E2=80=9D=
 feel (what does
>> it mean?) will lead to =E2=80=9Cbetter=E2=80=9D software (under which cr=
iteria?).
>
> These should all be blog entries.  In fact, I commented on CMake here:
> https://neopg.io/blog/why-cmake/ The short version is: cmake has much
> less boilerplate, more stable interfaces, and it is snappier to use
> during development.  It is also well supported by all five major
> platforms (Windows, MacOS, Linux, Android and iOS).
>
> Efficiency is the major theme here.  I am a good programmer, I can solve
> all the problems that C++, Botan and CMake solve for me.  But it doesn't
> make sense, because then I would be bogged down in tangent issues that
> don't help the users.
>
> For C++: if you look at GnuPG source code, a huge part of it is about
> memory management.  For example, there are several implementations of a
> dynamically growing string buffer (membuf_t, es_fopenmem, several ad-hoc
> implementations based on realloc).  The iobuf_t filter/pipe mechanism is
> object-oriented.  The libgcrypt API is object oriented.  In theory, you
> can write nice code in any language.  In practice, C++ has solved all
> these problems years ago, and the language is evolving to include new
> features (C++11, C++14, C++17), while C has stalled.  With C++ STL and
> boost, you can kick out most platform dependent code.  std::mutex and
> std::thread are now the same on Windows and Unix.  Boost::locale
> replaces iconv and gettext.  It is much more efficient to program in C++
> than in C. (BTW, C++ is a compromise.  I have a love-hate relationship
> with the language, but I am picking languages for the job at hand, and
> for a fork of GnuPG, it is the obvious choice to me).
>
> For Botan: libgcrypt is a major maintenance burden on the GnuPG project.
>  There have also been several embarassing CVEs this year, and crypto
> researchers have commented negatively on Twitter.  To justify that,
> you'd expect the library to be used by many.  Unfortunately, libgcrypt
> has never seen much use outside the GnuPG project.  The only other major
> user I am aware of was gnutls, which switched to libnettle in 2011
> (http://lists.gnu.org/archive/html/gnutls-devel/2011-02/msg00079.html).
> I also don't like how libgcrypt handles entropy. It makes a difference
> between "weak" random and "strong" random, and it will block if it can't
> get enough "entropy" from the system.  It is a very conservative
> approach, and leads to bad user experience.
>
> Botan on the other hand is actively developed, and provides several very
> useful interfaces that not only replace libgcrypt for me, but also the
> iobuf (pipe/filter) interface in GnuPG, libksba (GnuPG's ASN.1 parser
> and X.509 support library), and several parts in dirmngr (certificate
> cache).  Oh, and it has TLS support, while the GnuPG project is
> currently working on its own TLS library ntbtls (which is based on an
> old fork of PolarSSL). The maintainer is friendly and the project is
> very active.  It has also been audited (and continues to be audited) by
> a local IT security company in a contract with the BSI (German Federal
> Office for Information Security).  They chose Botan after evaluating
> many candidates, I hope that the documentation for the project will
> eventually be released to the public, so we can all learn their reasons
> and have better documentation of Botan internals.
>
>> The multiple-process design in GnuPG had clear justifications
>> AFAIK=E2=80=94e.g., having =E2=80=98dirmngr=E2=80=99 and =E2=80=98gnupg-=
agent=E2=80=99 in separate address
>> spaces makes sense from a security standpoint.  Do you think these
>> justifications no longer hold, or that the decisions were misguide?
>
> I am not per se opposed to a multi-process design, but I'd rather have
> short-lived processes that are started for a single task (like
> decrypting a single message) than long-running daemons.  And I'd
> actually use operating system features to actively isolate these
> processes.  This is a complicated discussion, but note that gnupg's
> implementation does not protect you from attackers who gain remote code
> access to any process running under your uid[1], so the only protection
> here is against accidental memory disclosure akin to heartbleed.  And
> yes, heartbleed happened, so there is obviously some value to it, but so
> far it is a single incident.  When it comes to prioritizing concerns,
> process isolation comes somewhere below memory safety, code efficiency,
> refactorisation, readability, etc.  So I'd argue that the "clear
> justification" is not as clear as you make it sound.  The GnuPG project
> is bouncing between "defense in depth" and "it's game over if your uid
> is compromised" without a clear threat model from which to derive a
> priority of concerns.
>
> [1] https://dev.gnupg.org/T1211
>
>> I=E2=80=99m also skeptical about =E2=80=9Cbetter testing=E2=80=9D bit: G=
nuPG and libgcrypt are
>> among the first pieces of software that crypto and security researchers
>> look at, and they=E2=80=99re also the first ones to get fixes when new a=
ttack
>> scenarios are devised.
>
> I agree, and that would be a good reason for GnuPG to use openssl!
> However, those researchers focus on the MPI multiplication in RSA, and
> not on the porcelain around it.
>
> From a software engineering point of view: Does the current master
> version pass the test suite? What is the code coverage of GnuPG's test
> suite?  Which compilers and platforms are tested?  How often is the code
> base fuzzed?  Is there any static code analysis done regularly?
>
>> I=E2=80=99m sure you have a clear view on this but neopg.io doesn=E2=80=
=99t reflect> that.
>
> Yes, I am lagging behind in documentation. I plan to write all this
> down, and much more.
>
> Thank you for your interest,
> Marcus
