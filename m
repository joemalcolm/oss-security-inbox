X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2664" "Wednesday" "5" "July" "2017" "15:50:58" "+0300" "Lior Kaplan" "kaplanlior@gmail.com" "<CAEsznC4xw6b9TOBJk0q1WFMpnd5EoYeSbka+hqYTaZbuz9k9FA@mail.gmail.com>" "80" "Re: [oss-security] CVE IDs needed for PHP vulnerabilites (affects 5.6.30 and 7.0.20)" "^Cc:" nil nil "7" "2017070512:50:58" "[oss-security] CVE IDs needed for PHP vulnerabilites (affects 5.6.30 and 7.0.20)" (number mark "U       kaplanlior@g Jul  5   80/2664  " thread-indent "\"Re: [oss-security] CVE IDs needed for PHP vulnerabilites (affects 5.6.30 and 7.0.20)\"\n") "<20170705123427.mky43jbckj4quua2@lorien.valinor.li>" ("<CAEsznC6vAOzM9wmtcZwiLX1-k3uevMEEuxkksXCUMR8=hsq+Kg@mail.gmail.com>" "<20170705123427.mky43jbckj4quua2@lorien.valinor.li>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20034 invoked by uid 550); 5 Jul 2017 12:51:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 20013 invoked from network); 5 Jul 2017 12:51:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=zJGS2n+G3GkK1KEkERSO1nn5w/9uRyU4C4cm8IfGPm4=;
        b=LrV5K1u23Eshea4BIZZsq8+kmB2CxeUEYbk46t6aSbg0CJJHAp1IR6XhlA/0IhM8Ud
         wlkN+7mZHA7VA8THlhLI18GqbFbnHbvJP2zZIbyst8REA0MNP9Lf02VMoMuxNjXalE8O
         ZfXaJMqSH44mMHpP4VR61Z59ApP4NsXNrRRuxfKuQ9B/4cKMz8XU1gkhL2xBGduoIQVA
         qZquHmK7ctc06ivF9hDYzvW2jQl/CUFpGqeSB+eSBREkN98GFkOG42eHIy627R9/yUA1
         IAZrE0UjtMX6yGDP/072JY3bHDI1MpRiOg9QyQy7JiLCIMdfluYeGxgy2ErYZXCAvSSb
         pl+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=zJGS2n+G3GkK1KEkERSO1nn5w/9uRyU4C4cm8IfGPm4=;
        b=IRZ4XWWlt161ZqZ9XbqdGgUBSkqPcpKqxx0qh6I4T13Wuefm+1E0DX3z0RuZ/L6bCp
         r+byqUh//Q3VRoIMtjtu93xmC4vcXWf3ClRcFBfaE6CAO5i/JzVhEiO4+pw87xYjAibG
         EzZXWOyznQOwJlXQwY7o96ApVPL7ibfas6wyCjhlCsd0PhLYElenK3erTHnHQYqYd5OG
         swCTQx+iLP2esoIaz9jl059CsOvrdzhPa7jFk1ulNHr/YJfxA3RWbBXJs0KqjwYkvvB4
         Hbk0r7zQnT7Z6hDRm89xbEXITGAxYjHYCC2KXSzlziV8yk1SLKmQyGmeDvdZ2QjNBGLk
         H/Yw==
X-Gm-Message-State: AKS2vOwmOofs1yv0rp+4r/GFC1fCKHoc0uV8dO4+LDzdQhmA4T66gEF7
	FngJctWZdTEav2aQnnB62CaQruI2MX9Y
X-Received: by 10.176.95.130 with SMTP id b2mr24626263uaj.144.1499259059025;
 Wed, 05 Jul 2017 05:50:59 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20170705123427.mky43jbckj4quua2@lorien.valinor.li>
References: <CAEsznC6vAOzM9wmtcZwiLX1-k3uevMEEuxkksXCUMR8=hsq+Kg@mail.gmail.com>
 <20170705123427.mky43jbckj4quua2@lorien.valinor.li>
Message-ID: <CAEsznC4xw6b9TOBJk0q1WFMpnd5EoYeSbka+hqYTaZbuz9k9FA@mail.gmail.com>
Content-Type: multipart/alternative; boundary="089e082057c4a3bc770553917370"
Cc: oss-security@lists.openwall.com, "security@php.net" <security@php.net>
Date: Wed, 5 Jul 2017 15:50:58 +0300
From: Lior Kaplan <kaplanlior@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE IDs needed for PHP vulnerabilites (affects
 5.6.30 and 7.0.20)
To: Salvatore Bonaccorso <carnil@debian.org>

--089e082057c4a3bc770553917370
Content-Type: text/plain; charset="UTF-8"

AFAIK, when the issue is already public the list is just fine.

>From the cve-assign auto reply:

"In the special case of communications involving a publicly known
vulnerability on the oss-security mailing list, please do not use
the https://cveform.mitre.org web site at this time, and instead
send new or followup messages directly to that mailing list."

Kaplan

On Wed, Jul 5, 2017 at 3:34 PM, Salvatore Bonaccorso <carnil@debian.org>
wrote:

> Hi
>
> On Wed, Jul 05, 2017 at 02:37:00PM +0300, Lior Kaplan wrote:
> > Hi,
> >
> > The following issues have been reported and fixed in PHP. At the moment
> > they are part of PHP 7.0.21 release. The fixes are also included in the
> 5.6
> > branch and will be part of 5.6.31 when it will be released.
> >
> > #73807 Performance problem with processing post request over 2000000
> chars
> > https://bugs.php.net/bug.php?id=73807
> > http://git.php.net/?p=php-src.git;a=commitdiff;h=
> 0f8cf3b8497dc45c010c44ed9e96518e11e19fc3
> >
> > #74145 wddx parsing empty boolean tag leads to SIGSEGV
> > https://bugs.php.net/bug.php?id=74145
> > http://git.php.net/?p=php-src.git;a=commitdiff;h=
> 2aae60461c2ff7b7fbcdd194c789ac841d0747d7
> > http://git.php.net/?p=php-src.git;a=commitdiff;h=
> f269cdcd4f76accbecd03884f327cffb9a7f1ca9
> >
> > #74651 negative-size-param (-1) in memcpy in zif_openssl_seal()
> > https://bugs.php.net/bug.php?id=74651
> > http://git.php.net/?p=php-src.git;a=commitdiff;h=
> 89637c6b41b510c20d262c17483f582f115c66d6
> >
> > #74819 wddx_deserialize() heap out-of-bound read via php_parse_date()
> > https://bugs.php.net/bug.php?id=74819
> > PHP 5.6 -
> > http://git.php.net/?p=php-src.git;a=commitdiff;h=
> 2aae60461c2ff7b7fbcdd194c789ac841d0747d7
> > PHP 7.0  -
> > http://git.php.net/?p=php-src.git;a=commitdiff;h=
> 6b18d956de38ecd8913c3d82ce96eb0368a1f9e5
> >
> > Also, requests from past releases:
> >
> > PHP 5.6.28 + 7.0.13
> > #73192 parse_url return wrong hostname
> > https://bugs.php.net/bug.php?id=73192
> > http://git.php.net/?p=php-src.git;a=commitdiff;h=
> b061fa909de77085d3822a89ab901b934d0362c4
> >
> > 5.6.30 + 7.0.15
> > #73773 Seg fault when loading hostile phar
> > https://bugs.php.net/bug.php?id=73773
> > http://git.php.net/?p=php-src.git;a=commitdiff;h=
> e5246580a85f031e1a3b8064edbaa55c1643a451
>
> CVE assignement requests are not handled anymore directly via the
> oss-security list, but need to be filled/requested at
> https://cveform.mitre.org/
>
> Once CVE are assigned, can you repost them here for benefit of other
> reader?
>
> Regards,
> Salvatore
>

--089e082057c4a3bc770553917370--
