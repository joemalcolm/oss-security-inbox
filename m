X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1027" "Saturday" "20" "January" "2018" "10:57:27" "-0800" "Tavis Ormandy" "taviso@google.com" "<CAJ_zFkK7P5TynG1CbrAgbudb2whsqcP+BDoxB9ABGQgcvanyBA@mail.gmail.com>" "22" "Re: [oss-security] How to deal with reporters who don't want their bugs fixed?" "^Date:" nil nil "1" "2018012018:57:27" "[oss-security] How to deal with reporters who don't want their bugs fixed?" (number mark "        taviso@googl Jan 20   22/1027  " thread-indent "\"Re: [oss-security] How to deal with reporters who don't want their bugs fixed?\"\n") "<CA+-XxSHrxf42PbHDpcNfjiwp2f4tTtruke30bOwK9xCG1-r-fQ@mail.gmail.com>" ("<20180118220124.GA9185@openwall.com>" "<efa92101-facb-84ff-7582-78583e8c7381@hpe.com>" "<CA+-XxSE1d+8b7cbfs7BknJQ9yy7w4sw=0EVwf=gpz43JAVWyhQ@mail.gmail.com>" "<20180119135837.GA1212@kroah.com>" "<CA+-XxSHrxf42PbHDpcNfjiwp2f4tTtruke30bOwK9xCG1-r-fQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9262 invoked by uid 550); 20 Jan 2018 18:58:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 8172 invoked from network); 20 Jan 2018 18:58:00 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=6TZUQourY624SyJHfaeAOF9MAnPraaS5fPD99Xw27ZU=;
        b=hMb+gCMRc2uU9Q+cm9J31GtyJ13zLFCC6m0nGX1XipwfxxhLt1ZJxh+OWQiPWjz48K
         vm7WYJl47fiXV8Eu5g0LTThRKGDQgbP2qslMFvZ5HYAzZlqCTvzJbIR/PWIn9vVi9zNK
         AqKRQz02oHw9z5/ddQfW107seWTHF27wDi9LTG/a+4+ElxToRYUcw/4DjooXw83/oBWf
         w7y9VN/yUvapEJNwnXk0kItdYlxquolgKxIiEgfcIfBdZnGNwRTty2bn8s4AOB+/sOBh
         qmDl1teg6p9ECyey6tKTtTobLfM8he5OAAEUICZ2GvehxcEguW1+YX2UUYj6sPifs8j0
         TO5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=6TZUQourY624SyJHfaeAOF9MAnPraaS5fPD99Xw27ZU=;
        b=URZL4+8rgnAiPZqzFaSJBZNRYI0/auGnF9p52bYdyM4uO4FenrEIv6IoWHDmAdo8Ch
         PuQxHo4Lrp5AauSsxtRx1DgxPyw27FdXGcORaTvXKH6/uqRReCTgrMGy50qDY2+38YVw
         bscuU+3diD8pHwbQ20Hy/PjLntueVHoqXk5JZ3yAbivQEWIOoRw3ijiHWur/douFxBQp
         nKROauZ9ZOWraR3zzIqmuYSLSoRgxloD67MBLhSAMfQ7BIlZoqIE9195Hy7JKwflGdU0
         KAXddNiNjSqAAG1S0wCWwqWDKITqYKVOJLE0jyaIA8za+b0636VPAHontstgJ4gOWWH2
         aQQw==
X-Gm-Message-State: AKwxytcNHXUIO0DdsiolWf0UWboB2sOES0YcW6wIluyQfQHpYLVTGS+S
	evy6ZERx0fMB8DSKlqicI06i5HRBLnY3s9WbRl0O9zPp
X-Google-Smtp-Source: AH8x2260m2a1PmY4W7GxpbTunTr9mscR/OknyDf/HFxqAyOV4luol/3OIVrBgZD4lC7Xt5/Nxj2UfN33S/dDw5GLC/o=
X-Received: by 10.55.78.149 with SMTP id c143mr3310298qkb.30.1516474668342;
 Sat, 20 Jan 2018 10:57:48 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <CA+-XxSHrxf42PbHDpcNfjiwp2f4tTtruke30bOwK9xCG1-r-fQ@mail.gmail.com>
References: <20180118220124.GA9185@openwall.com> <efa92101-facb-84ff-7582-78583e8c7381@hpe.com>
 <CA+-XxSE1d+8b7cbfs7BknJQ9yy7w4sw=0EVwf=gpz43JAVWyhQ@mail.gmail.com>
 <20180119135837.GA1212@kroah.com> <CA+-XxSHrxf42PbHDpcNfjiwp2f4tTtruke30bOwK9xCG1-r-fQ@mail.gmail.com>
Message-ID: <CAJ_zFkK7P5TynG1CbrAgbudb2whsqcP+BDoxB9ABGQgcvanyBA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Date: Sat, 20 Jan 2018 10:57:27 -0800
From: Tavis Ormandy <taviso@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] How to deal with reporters who don't want their
 bugs fixed?
To: oss-security@lists.openwall.com

On Fri, Jan 19, 2018 at 6:04 AM, Igor Seletskiy <i@cloudlinux.com> wrote:
> Hi Greg,
>
> I am sure you are right, as you were in the epicenter of it and saw things
> happening. More than that -- I am really thankful to a group of people who
> worked on fixing it for months to get us where we are. Don't get me wrong -
> in no way, I am blaming anyone.
>
> Yet, KAISER patch & especially patch from AMD to the mailing list created a
> lot of rumors, that I believe forced earlier disclosure -- because things
> got into 'semi-public' state.
> I might be wrong, I don't have all the info, and I am sure that people who
> were at the center of it have a better understanding of what & why happened.
>

A better example would be shellshock, a patch was developed in private
under embargo, but as soon as the details were public it was obvious
the patch was incomplete. When it was finally public, we were able to
analyze the problem and develop a real solution - the embargo did
nothing but needlessly delay that process.

Tavis.
