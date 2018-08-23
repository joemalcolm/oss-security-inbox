X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["546" "Wednesday" "22" "August" "2018" "20:33:37" "-0700" "Tavis Ormandy" "taviso@google.com" "<CAJ_zFkL5wLrabBXB6JSUhxwG6UVmYrCYOJYhw1rBeC=3dAdF=g@mail.gmail.com>" "17" "Re: [oss-security] Re: More Ghostscript Issues: Should we disable PS coders in policy.xml by default?" "^Date:" nil nil "8" "2018082303:33:37" "[oss-security] Re: More Ghostscript Issues: Should we disable PS coders in policy.xml by default?" (number mark "        taviso@googl Aug 22   17/546   " thread-indent "\"Re: [oss-security] Re: More Ghostscript Issues: Should we disable PS coders in policy.xml by default?\"\n") "<alpine.GSO.2.20.1808221612460.22335@scrappy.simplesystems.org>" ("<CAJ_zFk+ZNi8r8TKTZuaYgSBUz4mxCO7C5SC=B8Ktc_CZQW6Dsw@mail.gmail.com>" "<CAJ_zFk+RtYrqWQ4Mj1SLVJ7BTZBHLjo_M9t-gDVS_uDEPhuCrg@mail.gmail.com>" "<alpine.GSO.2.20.1808210951110.18862@scrappy.simplesystems.org>" "<CAFRnB2U+QMGmAMoZqbCgTjEx_o_NA+Y9eBE6eDBgJJ0hZdQ4GQ@mail.gmail.com>" "<CAJ_zFkJpnGtG6D3JZVaC5KJiNzsJ6vjJK0oXRfirR8QsdFbZVQ@mail.gmail.com>" "<CAOVKCF0Qehz2q3m2vPSAr3vKRAxdHrTbnyk71ApFYnVXuZ-P6Q@mail.gmail.com>" "<alpine.GSO.2.20.1808221612460.22335@scrappy.simplesystems.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11746 invoked by uid 550); 23 Aug 2018 03:34:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11723 invoked from network); 23 Aug 2018 03:33:59 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=T3FwpHav2fqz7eVxujilZASBeEDkitj7KPnUHqLUfmI=;
        b=MnZkuzPhUfsSsJpTDf99CQXnQ0ASWBA3v06EbgeQO2Bbu3Eu0tiTQesN9Q3BWV7biI
         JIGEmyjLAOBmvXnU/TW1gVd6glOxxtfEkmkAvJFRGdLH9D4MjiACganQXAxgBlfMUPMZ
         rsR49Qe23MOmuXP9+he0bkfcl81ybRbaj4wRrc1EliWpa5j8qjTPy4SteXQ9KlokdBuY
         5LbG1y8gIMGu2cmVKXHt85WOQy+AZztyUZ18zZn08TLMHKiSD+6kIqiSgTwN63j04bxq
         Wav9879R/1CHmWKAG4NqUNw94GxcOvAg/p859qXAedYC8jzuwHf8+166xgUjK2+C0oAY
         hUyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=T3FwpHav2fqz7eVxujilZASBeEDkitj7KPnUHqLUfmI=;
        b=a0oMFn1hPRrYOiQN5SfndSgi+TvCEqsF6C3lkKproo7QXvM4wvlB3THY+2T1f+1fIw
         P+VpLQtnnWRpt3Jx4GtxA+NbyJEEVMK6mxmxUAfc65oegdatpPP5UmFQ+0LJWOa7/Pzl
         idlL+UncEvu/f5dduOdH6VBsuR4q+sVpn40hvebUG61VsRUy4UUD9+az7a92JqmmYQ+2
         Qkn4yNvxgkO6GXOpEkPkGMiBP5vPHsqLMTZaSFdkO4qulBPRJefipA/44GCFBzssmMxk
         gwF8VHpPu7tY2S2WZNP7zF9jBsVivM/Hnk1RKcv1pGFsOAG9g3Tki1ae1SwaM7adC3lr
         DOcg==
X-Gm-Message-State: AOUpUlGAn+gH0WiLyee1QB6KDlsQSI9+jR1IvObEiSSdTi1zRZQ7Kh7u
	KrBSfuYc0ayBwLAvrhptjEV+5QhG3YPHmx5n3aafnzC8
X-Google-Smtp-Source: AA+uWPyTkz6RkHf6ahIVF2eJsguBlvZ4WqO5uak2CMKvHlzmqCNOsowlJuoy/hkQWnv+1M7ph5jfrnBLYIAdW25H+ws=
X-Received: by 2002:a37:8742:: with SMTP id j63-v6mr53411112qkd.353.1534995227256;
 Wed, 22 Aug 2018 20:33:47 -0700 (PDT)
MIME-Version: 1.0
References: <CAJ_zFk+ZNi8r8TKTZuaYgSBUz4mxCO7C5SC=B8Ktc_CZQW6Dsw@mail.gmail.com>
 <CAJ_zFk+RtYrqWQ4Mj1SLVJ7BTZBHLjo_M9t-gDVS_uDEPhuCrg@mail.gmail.com>
 <alpine.GSO.2.20.1808210951110.18862@scrappy.simplesystems.org>
 <CAFRnB2U+QMGmAMoZqbCgTjEx_o_NA+Y9eBE6eDBgJJ0hZdQ4GQ@mail.gmail.com>
 <CAJ_zFkJpnGtG6D3JZVaC5KJiNzsJ6vjJK0oXRfirR8QsdFbZVQ@mail.gmail.com>
 <CAOVKCF0Qehz2q3m2vPSAr3vKRAxdHrTbnyk71ApFYnVXuZ-P6Q@mail.gmail.com> <alpine.GSO.2.20.1808221612460.22335@scrappy.simplesystems.org>
In-Reply-To: <alpine.GSO.2.20.1808221612460.22335@scrappy.simplesystems.org>
Message-ID: <CAJ_zFkL5wLrabBXB6JSUhxwG6UVmYrCYOJYhw1rBeC=3dAdF=g@mail.gmail.com>
Content-Type: multipart/alternative; boundary="0000000000004154dc057411ed59"
Date: Wed, 22 Aug 2018 20:33:37 -0700
From: Tavis Ormandy <taviso@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: More Ghostscript Issues: Should we disable PS
 coders in policy.xml by default?
To: oss-security@lists.openwall.com

--0000000000004154dc057411ed59
Content-Type: text/plain; charset="UTF-8"

On Wed, Aug 22, 2018 at 2:17 PM Bob Friesenhahn <
bfriesen@simple.dallas.tx.us> wrote:

> The CERT advisory at https://www.kb.cert.org/vuls/id/332928 provides a
> policy.xml example which does not appear to block PS2 and PS3, which
> are also entry points for reading Postscript.
>
>
I think (luckily) there's no magic that will invoke those, but I think
you're right, for completeness they should be disabled by default as well.

Tavis.

--0000000000004154dc057411ed59--
