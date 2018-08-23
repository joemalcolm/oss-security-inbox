X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["862" "Thursday" "23" "August" "2018" "13:29:23" "+0200" "Mateusz Lenik" "mlen@mlen.pl" "<CALDAOtuLdurT759O0AxPovJ4ThgcrYrJkYsxJPR4EgWf2QG_+g@mail.gmail.com>" "29" "Re: [oss-security] Re: More Ghostscript Issues: Should we disable PS coders in policy.xml by default?" "^Date:" nil nil "8" "2018082311:29:23" "[oss-security] Re: More Ghostscript Issues: Should we disable PS coders in policy.xml by default?" (number mark "        mlen@mlen.pl Aug 23   29/862   " thread-indent "\"Re: [oss-security] Re: More Ghostscript Issues: Should we disable PS coders in policy.xml by default?\"\n") "<5b7dd771.1c69fb81.a6d8.6521@mx.google.com>" ("<CAJ_zFk+ZNi8r8TKTZuaYgSBUz4mxCO7C5SC=B8Ktc_CZQW6Dsw@mail.gmail.com>" "<CAJ_zFk+RtYrqWQ4Mj1SLVJ7BTZBHLjo_M9t-gDVS_uDEPhuCrg@mail.gmail.com>" "<alpine.GSO.2.20.1808210951110.18862@scrappy.simplesystems.org>" "<CAFRnB2U+QMGmAMoZqbCgTjEx_o_NA+Y9eBE6eDBgJJ0hZdQ4GQ@mail.gmail.com>" "<CAJ_zFkJpnGtG6D3JZVaC5KJiNzsJ6vjJK0oXRfirR8QsdFbZVQ@mail.gmail.com>" "<CAOVKCF0Qehz2q3m2vPSAr3vKRAxdHrTbnyk71ApFYnVXuZ-P6Q@mail.gmail.com>" "<alpine.GSO.2.20.1808221612460.22335@scrappy.simplesystems.org>" "<5b7dd771.1c69fb81.a6d8.6521@mx.google.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5908 invoked by uid 550); 23 Aug 2018 11:35:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30670 invoked from network); 23 Aug 2018 11:29:46 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mlen.pl; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=LjtmoANvNeYuGsvNqi23Gw0s3zTjKDxXhGXW4BEuLbI=;
        b=Lb1bXb+55cjk6t+aPX8KBfZn+km37TqwVf29x18th9f3p+mVoX6blnQJq5rHHQ3BSQ
         Y1de2Zg9eGsH7iBslzuF3DAFb8F4mPkvSeDrWCPTqmW4gYPUS5adMwSd0T0x+Xk6fh4Q
         Ev+Nyxj7iLs+Kdd9Dk7aS6XAoS2hE7sZG0EUo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=LjtmoANvNeYuGsvNqi23Gw0s3zTjKDxXhGXW4BEuLbI=;
        b=m7ZUmxUm2qOEhDau/KY3lGJgAZ/eDB7CiubWra459ySGZ0vUrvXHY+KGFGMZC8dts0
         iZyMPelA8wQ6H5wTsbOSh0DvMP4y+LdsHMswtfAg52oiJ+4rGcMO2b6nUM8eoDLvHNYa
         i6+WPvx2PiE11OBkZVh3HYTA+poUMxtpw8WuDJ646fkqEG6HaNqGmKb1DdRz9r+KyDlM
         44jAzfGPt1kO8OvdrJd0F9DUcgnj4zVDvBGc5JH94phNBd8UDkSvyeNcE/aZ4NGnb7m7
         ajY3meJ4Y+Vqy9kUc9U1BOBqZBiqVZcpr32hfSHdb3CcHQ+nGGPVhFXptNK5VgeCyfHm
         MZDA==
X-Gm-Message-State: AOUpUlF6gHaOgbP27CdY+48JilGd2ODEL386DxJ6hsUiNgtSoO4CBFJo
	1yIJjIlwL7OVhFHGvUnoCseWybSPqAjGwwFVwHOr36FkZIA=
X-Google-Smtp-Source: AA+uWPzyHHQCkRssxZPv7UU4wq50up3h434H5i2j/8rSau4HGIXuph9m1RT2cKIloAp0xB1H/V+qcE9cSXPT3LUkGHo=
X-Received: by 2002:aa7:c74b:: with SMTP id c11-v6mr19162068eds.113.1535023774908;
 Thu, 23 Aug 2018 04:29:34 -0700 (PDT)
MIME-Version: 1.0
References: <CAJ_zFk+ZNi8r8TKTZuaYgSBUz4mxCO7C5SC=B8Ktc_CZQW6Dsw@mail.gmail.com>
 <CAJ_zFk+RtYrqWQ4Mj1SLVJ7BTZBHLjo_M9t-gDVS_uDEPhuCrg@mail.gmail.com>
 <alpine.GSO.2.20.1808210951110.18862@scrappy.simplesystems.org>
 <CAFRnB2U+QMGmAMoZqbCgTjEx_o_NA+Y9eBE6eDBgJJ0hZdQ4GQ@mail.gmail.com>
 <CAJ_zFkJpnGtG6D3JZVaC5KJiNzsJ6vjJK0oXRfirR8QsdFbZVQ@mail.gmail.com>
 <CAOVKCF0Qehz2q3m2vPSAr3vKRAxdHrTbnyk71ApFYnVXuZ-P6Q@mail.gmail.com>
 <alpine.GSO.2.20.1808221612460.22335@scrappy.simplesystems.org> <5b7dd771.1c69fb81.a6d8.6521@mx.google.com>
In-Reply-To: <5b7dd771.1c69fb81.a6d8.6521@mx.google.com>
Message-ID: <CALDAOtuLdurT759O0AxPovJ4ThgcrYrJkYsxJPR4EgWf2QG_+g@mail.gmail.com>
Content-Type: multipart/alternative; boundary="000000000000d359c10574189206"
Date: Thu, 23 Aug 2018 13:29:23 +0200
From: Mateusz Lenik <mlen@mlen.pl>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: More Ghostscript Issues: Should we disable PS
 coders in policy.xml by default?
To: oss-security@lists.openwall.com

--000000000000d359c10574189206
Content-Type: text/plain; charset="UTF-8"

Hello,

On Thu, Aug 23, 2018 at 11:06 AM Leonardo Taccari <iamleot@gmail.com> wrote:

> Bob Friesenhahn writes:
> > The CERT advisory at https://www.kb.cert.org/vuls/id/332928 provides a
> > policy.xml example which does not appear to block PS2 and PS3, which
> > are also entry points for reading Postscript.
> > [...]
>
> If I am not missing something I think that ghostscript isn't used
> for them though.
>

It seems to be possible to disable GhostScript in ImageMagick completely by
the policy rule below. It's not possible to miss any format with it.

<policy domain="delegate" rights="none" pattern="gs" />

I also found out that Amit's exploit works with lesspipe that ships with
less by default -- it uses gs via ps2ascii wrapper

Best,
Mateusz

--000000000000d359c10574189206--
