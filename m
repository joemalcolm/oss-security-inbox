X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2742" "Monday" "17" "June" "2019" "12:49:42" "+0200" "Raphael Geissert" "geissert@debian.org" "<CAA7hUgF+ABzg1i6ajk=M-WbVFLYGLL--6LZn5CTLVDKQsx1QhQ@mail.gmail.com>" "64" "Re: [oss-security] Apache::Session's use of md5 and more" "^Cc:" nil nil "6" "2019061710:49:42" "[oss-security] Apache::Session's use of md5 and more" (number mark "        geissert@deb Jun 17   64/2742  " thread-indent "\"Re: [oss-security] Apache::Session's use of md5 and more\"\n") "<20190615173956.GA28900@openwall.com>" ("<CAA7hUgH2dCyNr0m_HmhLuVXO+ZD_TVOWdfrB-jzrLPnz7de4Dw@mail.gmail.com>" "<20190615173956.GA28900@openwall.com>") nil nil nil nil nil nil nil "Re: [oss-security] Apache::Session's use of md5 and more" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28634 invoked by uid 550); 17 Jun 2019 10:50:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28613 invoked from network); 17 Jun 2019 10:50:06 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=8Fj5JxKncKPGJCpdjtJWUwId2mwF5IGONMiiAzhPM4c=;
        b=rs4B7tH1oy/VnKS8cpuwl3gVo/MPQ07DZl2N/v905Ekoa6aK0HG/klmHGfZ/e+dMtF
         Bh2sxsFJDiaLRb1ruqKArg+m36Xwn4HNEAq6L7/voOdjhBgR7hc09YR9+wQlsh+jpPq9
         jpzu7KaQPsiETPJyo13tjXSSRYEJ/MkrJLgNBgXiTSizJILBZ3w0uf5kgrFgkh5ZQ5od
         h34tdEdmId9f3Lnmpiduob2UFbuWibL9lgchYa8KcAi4/aS47FZSURvM4JoOgMYraTxb
         YETE9j1kyCQ3m4JqbK4/TPdj6e9fVgb73jPFpQf3tXCFprOB5Jz7TR4kZt9r8q4FPMqK
         BSBg==
X-Gm-Message-State: APjAAAW2TwDve4sWr0xv0dccucaOvPX/Dd3YwAY/k4qQOKUIqL1qNiBB
	9mh6E8SmuTBEidqfxm/CFzmQwVTvhbdfBQPT/PBX0T9z
X-Google-Smtp-Source: APXvYqwd0g5OFAOeZus/EMoYBzD+pBEJnD33rsp659bKB/Ff7wjN2fvahTOeSRS8oznueKoCCr00MLH5ktd/Hf98AKY=
X-Received: by 2002:ab0:4521:: with SMTP id r30mr31445480uar.70.1560768593971;
 Mon, 17 Jun 2019 03:49:53 -0700 (PDT)
MIME-Version: 1.0
References: <CAA7hUgH2dCyNr0m_HmhLuVXO+ZD_TVOWdfrB-jzrLPnz7de4Dw@mail.gmail.com>
 <20190615173956.GA28900@openwall.com>
In-Reply-To: <20190615173956.GA28900@openwall.com>
Message-ID: <CAA7hUgF+ABzg1i6ajk=M-WbVFLYGLL--6LZn5CTLVDKQsx1QhQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Cc: security@bestpractical.com
Date: Mon, 17 Jun 2019 12:49:42 +0200
From: Raphael Geissert <geissert@debian.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Apache::Session's use of md5 and more
To: Open Source Security <oss-security@lists.openwall.com>

Hi,

On Sat, 15 Jun 2019 at 19:42, Solar Designer <solar@openwall.com> wrote:
> On Sat, Jun 15, 2019 at 05:09:53PM +0200, Raphael Geissert wrote:
> > Not only does it use MD5,
>
> Which is perfectly fine for this use case, except that it distracts
> attention from real issues, so might need to be "fixed" to be e.g.
> SHA-256 for that reason.
>
> Let's not confuse technical and psychological aspects.
[...]
> > and does two rounds of hashing.
>
> This is fine, but can be optimized out along with the move to SHA-256.

Right, though I must argue that they are indicators, smells. Also, I
hope that by getting rid of those people won't copy that code
elsewhere.

> I didn't review Perl's rand(), but apparently Nuel thought the
> initialization from /dev/urandom on newer Perl somehow made rand() safe
> from having its seed inferred?  I doubt this is the case, as I expect
> the seed and/or the internal state is tiny either way.  And I doubt it
> takes as many as "30 values of rand() to determine the srand (the
> seed)."  I'd expect 1 to be enough.  But we need to review the code
> before making any claims.
>
> ...OK, I just took a look.  Perl's util.c: Perl_seed() reads just 32
> bits from /dev/urandom, with compile-time and runtime fallbacks to
> gettimeofday() and getpid() and some more ASLR leaks.  (Fun fact: the
> fallbacks will also occur when the 32-bit value read from /dev/urandom
> just happens to be 0.  As a result, the seed is almost never a 0.)

Which is more worrisome in the specific case of lemonldap-ng given the
use of rand for quite many things. Not sure how RT is affected in that
regard. From issue 1633 [2]:

> From a quick survey through the code, I found that Perl's rand is used
>
> For password reset (::Portal::Lib::SMTP) through String::Random
> For OpenID registration (::Portal::Issues::OpenIDConnect) through String::Random
> For CSRF and OTP login token generation (::Portal::Lib::OneTimeToken)
> For Session ID generation (::Common::Apache::Session::Generate::SHA256)
> For password hashing in databases (::Portal::Lib::DBI)
> For TOTP registration (::Common::TOTP)

So far the use of rand in the session id generation code has been
replaced by data from urandom - but they left time, pid, and {}.

FWIW I had opened issue 1803 [3] for the uses of String::Random, but
it looks like it is best to just reopen 1633 - or whatever is
necessary so that the remaining uses of rand are fixed.

Oh and it appears that Apache::SessionX is a fork of Apache::Session,
with the same session id generation function.

[2] https://gitlab.ow2.org/lemonldap-ng/lemonldap-ng/issues/1633
[3] https://gitlab.ow2.org/lemonldap-ng/lemonldap-ng/issues/1803

Cheers,
--
Raphael Geissert - Debian Developer
www.debian.org
