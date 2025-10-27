Received: (qmail 10153 invoked by uid 550); 27 Oct 2025 20:17:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1803 invoked from network); 27 Oct 2025 20:13:40 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761596009; x=1762200809; darn=lists.openwall.com;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IQi6scyR9J7eHADDwFSRR7fGNRCJZExKuy6rpkow70w=;
        b=kA0eQOtB52FOob/TizfLj1ErJm7mvfdzigcQ2eMkmgEmkyIgFNdTdQ3uN0vj6xctGq
         ruAqY9jxN4y747lvQZO0jSfyC4vxNdQfb4+8E3xbOoe9P7HBqnOmQEIudrYGocIE+ETv
         34+3IsVFty0ZpIoSy3kq7EPgQIpXy03mEy/EMoqan4FiTJDhfg/R+y6c3enxkJ8Xh6Va
         0UIN9pGyBriiFgmJ9e1/VYUjoPZ+4rSzhftn5dSS9p1rSG5DVe/Wa1BlcSB+1kFg9Qv1
         KvlW1bptt6eV2XNVN4iOLFPWDWpWWZElSH92khoV7VioPSFgyOvUYcdNy2ZPe3S8jTZd
         +FbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761596009; x=1762200809;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IQi6scyR9J7eHADDwFSRR7fGNRCJZExKuy6rpkow70w=;
        b=UhH+bvvl+MzFH9RDKxLaLqqA4D2ZvDLTJztA9ohNQnPRXaj1jCMBmhJjGhYKuz1L3G
         LGBcm2U/hjIT6nBIujcM9iXf2h/Rh+Jbyr5D29sjOoQ/aPmGHmlovGHRaaFWb/Uwz0Ct
         LkRQJiY2oyGuhzqRlQpbCtjJ5ttz8/uA7Ov4l4lBI2d/H5/xZvRLnP2i5+TmObrmcGUC
         xyckG9Vw/uD9tkhAG3VjlX89HfuwmhbwfTb4wMlQJHLPG15dwU6SsxP9Wr2k4PszfZrs
         QvRQTMyPesgyG/HpYSZI5unRCl++QIptUDkNp5BKcIxD83QpTRDCtIIGrgc5hGm9Xp6n
         80eA==
X-Gm-Message-State: AOJu0Yzqa7B3A6psEsRuFqCtvcSk4rl5QLZBoNpLj/gp58MMzBtRTZmC
	qiwDh+FGCZoE3Ylde0Eg1gxj1NbuDpu54kByvrU/jbsPC56+MNCIKcQjrgAu0RuOQBMJ2JU4LjJ
	26vetocqV6Zt3T0mSQZaSKPQJz+S8wN6g5sUO
X-Gm-Gg: ASbGncuDCInXwKxhlFZqGWvPRGe6J4VccSzlXnEIxZ/0zc3FQvqloyj1QGbZP13f+iS
	k96fKRvSn8JS7mBnnIHMtccHlyp8UzydUh72EKdmEpk5IsJO3fU2tvPA13WkGQWZEQYU9TfPRu7
	huaXSFs98eAcC+s76d4mv9lGtiddSeyCLfBZoi2tHv2x/YDdKXfxHqsXSjkfNPi0Bskzzr6Tv49
	WGU+ipEE5QCb16OrUWSpXLENhaf0fPYWtDlT7S0MWTdLC2Vo9IYf342XSQ=
X-Google-Smtp-Source: AGHT+IEvXt+zuvwB5E8gaFoVsqJu2lqOt9E/HIugxpQLQHJHwRz5DW5w+kFmKRIZq/8kY0H27LDVIbAquakF4vVZzvU=
X-Received: by 2002:a2e:a909:0:b0:36e:6d54:b56d with SMTP id
 38308e7fff4ca-379076d81eamr2983631fa.12.1761596009316; Mon, 27 Oct 2025
 13:13:29 -0700 (PDT)
MIME-Version: 1.0
References: <2ccbcc13-fc25-484c-a34d-56f27ac87db7@oracle.com> <aP-rxft9ra58z9EZ@yuggoth.org>
In-Reply-To: <aP-rxft9ra58z9EZ@yuggoth.org>
From: Jeffrey Walton <noloader@gmail.com>
Date: Mon, 27 Oct 2025 16:12:52 -0400
X-Gm-Features: AWmQ_bkHzXrM3oJSDoh1LGhQIpN9KL6DFPAbU4WdOA4jo2exev6zoYt6RBzqELw
Message-ID: <CAH8yC8nB-K8iCKXbAMCqj2RL=Qu-RDfYH5+zCUZ_qcsPzrCBKA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] Questionable CVE's reported against dnsmasq

On Mon, Oct 27, 2025 at 1:30=E2=80=AFPM Jeremy Stanley <fungi@yuggoth.org> =
wrote:
>
> On 2025-10-27 09:34:03 -0700 (-0700), Alan Coopersmith wrote:
> [...]
> >> The vendor was contacted early about this disclosure but did not
> >> respond in any way.
> [...]
>
> With the flood of dubious reports being submitted by anyone who can
> thumb some words into an LLM prompt and not bother to check the
> results for hallucinated nonsense, I've taken to ignoring or
> summarily closing such submissions to projects I work on as not
> worth my time to respond. This is probably yet another sign that the
> CVE system needs an overhaul or it's going to get ignored when it
> becomes as overwhelmed with "AI noise" as everything else (not
> saying these reports were necessarily machine-generated, but it's
> reaching the point where open source projects with limited resources
> have no choice but to silently bin such nonsense to /dev/null).

cURL is fed up with the LLM nonsense, too.  cURL requires the source
of a vulnerability report be stated because the project was being
overrun with false positives and low quality bug reports from AI
generated slop.  See "AI guidelines" (May 2025),
<https://curl.se/mail/lib-2025-05/0013.html> and
<https://github.com/curl/curl/pull/17325>.

And the IETF is also concerned about submissions curated from LLMs.
See "BCP 78 policy / copyright / Generative AI / LLM .. is there a
FAQ?" (August 2025),
<https://mailarchive.ietf.org/arch/msg/ietf/ZAwDLUWAQ-iU2u6vVpw5IeW7g-E/>.

Jeff
