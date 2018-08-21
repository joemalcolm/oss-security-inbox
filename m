X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["886" "Tuesday" "21" "August" "2018" "07:48:22" "-0700" "Tavis Ormandy" "taviso@google.com" "<CAJ_zFk+RtYrqWQ4Mj1SLVJ7BTZBHLjo_M9t-gDVS_uDEPhuCrg@mail.gmail.com>" "25" "[oss-security] Re: More Ghostscript Issues: Should we disable PS coders in policy.xml by default?" "^Date:" nil nil "8" "2018082114:48:22" "[oss-security] Re: More Ghostscript Issues: Should we disable PS coders in policy.xml by default?" (number mark "        taviso@googl Aug 21   25/886   " thread-indent "\"[oss-security] Re: More Ghostscript Issues: Should we disable PS coders in policy.xml by default?\"\n") "<CAJ_zFk+ZNi8r8TKTZuaYgSBUz4mxCO7C5SC=B8Ktc_CZQW6Dsw@mail.gmail.com>" ("<CAJ_zFk+ZNi8r8TKTZuaYgSBUz4mxCO7C5SC=B8Ktc_CZQW6Dsw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7342 invoked by uid 550); 21 Aug 2018 14:48:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7306 invoked from network); 21 Aug 2018 14:48:45 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=qwIn5ZFtuwhMiz2wIV4iCLrVkjXvI1IFvZbpEEmykvU=;
        b=eRXWkSFUfj43zUEaKrw8dwE6fnodD1twuJB2LF/ooUf37TBvkjH8uw0KGKEzWs04cC
         y0Mq1biRLpxK6lgEfLdWJNNwVojBtZobROTQQi30bZrW4SCbc7E1NiOnWb7w5V/sBRFq
         tZV2R6XI39RhwIUQa8U0/jrHzz06vgHm3isAjNJ6xfldNKHzBxPbY7YPPzc5BgVfXAus
         46DoXN+F8OdsYghp2p5LzHVl2Aa3zz2HsbSkAWVIuCiJeTbWpHPqZXYLDgp0pl5fcoXb
         pZPj8+Id3EJHUspu50PTzBD/i1KmuFmjEhxtdR+ImAqw8qNmcEYttdhuv2uOiGuQsE/A
         cZuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=qwIn5ZFtuwhMiz2wIV4iCLrVkjXvI1IFvZbpEEmykvU=;
        b=abWa3RE+w+JGM9LxP++X36eadtJDvYawXyMV1c8761dqbScgRZZhdzFSKoyVDmcYe7
         cfJCdcfNOFhZ5QOnBETopBBegA6p5rLtjvTIKYCWAiJ58buYmk7uFUwUO+oXZGOpd4mu
         7j4mioC8SRWXsltm6JPzkiyDp+3UgtHMCG5h5m/TS/5041uRC8mGd0VxRm+ldbPbdLu+
         jo1pEeC0hL74qxsEZgcGyuO3bUyzohzKzWMfbPrrRDA1nuruLWV3MvohTZIYca7Oxn5f
         vkHpNmRoJ27mdwTk7/7TjBCiQNQbeESYXZBOAGLjTwIQUasXcx1OLM/BvJdzkMB9tGRt
         seUA==
X-Gm-Message-State: AOUpUlGZNY1D8pLiZXEpYMG/wic/XjpR194MRQErZ50cHjnNR1MOZoBU
	3+oyWYXERCfbW8oEiyqXzFA6YkIh8TgV7Pks+qiLMOWfDXE=
X-Google-Smtp-Source: AA+uWPyWsxDnZwEFbl8IxiPvX5paK7CNJfuABgGDTRkRBu3vRdxZKIi3u5W1fKM094VQczqB5qlXxmra1JZ83CrCK2o=
X-Received: by 2002:ae9:dc05:: with SMTP id q5-v6mr47398852qkf.332.1534862912828;
 Tue, 21 Aug 2018 07:48:32 -0700 (PDT)
MIME-Version: 1.0
References: <CAJ_zFk+ZNi8r8TKTZuaYgSBUz4mxCO7C5SC=B8Ktc_CZQW6Dsw@mail.gmail.com>
In-Reply-To: <CAJ_zFk+ZNi8r8TKTZuaYgSBUz4mxCO7C5SC=B8Ktc_CZQW6Dsw@mail.gmail.com>
Message-ID: <CAJ_zFk+RtYrqWQ4Mj1SLVJ7BTZBHLjo_M9t-gDVS_uDEPhuCrg@mail.gmail.com>
Content-Type: multipart/alternative; boundary="000000000000b35d7d0573f31eb0"
Date: Tue, 21 Aug 2018 07:48:22 -0700
From: Tavis Ormandy <taviso@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: More Ghostscript Issues: Should we disable PS coders in
 policy.xml by default?
To: oss-security@lists.openwall.com

--000000000000b35d7d0573f31eb0
Content-Type: text/plain; charset="UTF-8"

On Tue, Aug 21, 2018 at 5:46 AM Tavis Ormandy <taviso@google.com> wrote:

>
> $ convert input.jpg output.gif
> uid=1000(taviso) gid=1000(taviso) groups=1000(taviso),10(wheel)
> context=unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023
>
>
>
My colleague Jann Horn pointed out evince (which uses libgs, which is
affected with some tweaks to the PoC) is used to generate previews in
Nautilus, which means previews can trigger code execution (see
/usr/share/thumbnailers/evince.thumbnailer). I think it's possible to
trigger that via file automatic download in a browser just by visiting a
URL, but I haven't tested it.

I think those thumbnails should be disabled, but you've probably noticed I
think everything related to untrusted ghostscript should be disabled :-)

Tavis.

--000000000000b35d7d0573f31eb0--
