Received: (qmail 3718 invoked by uid 550); 13 Mar 2025 02:47:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 17424 invoked from network); 13 Mar 2025 02:16:18 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=almalinux.org; s=google; t=1741832169; x=1742436969; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lY807vRTHcLmpci01n00hwlJYpE7rtOQv0n5WzBwtC4=;
        b=L9afmj6Elk4LHSQZshbItD3ohUe8boPriAgGffwIXkD+k0fhgU52zdj//XbsYBDCZg
         VHz8AYW/2jBePTbtOQ7c7QDaKJQKx09R8MZoLc4JBUtDlC5f5dR3PudOG3kj/Wl7VY1G
         mH9TTdYbQxO/keqEeZi02h3TytWj9Nuqv9Oc/Td+uGNSgtoutZK77vkAN1l/h1FOQPow
         JvlLBhLXGqjPyOF7PtLTrgAhti5Y62l+oZNijTlbTLAsrvWqBEApJbC8AbmPKpL1E5uR
         aTxiPstHnZ0VALFq9AEUplTR9Lbgnc/tLUgol/ygNQp7n7DuSLNojYyjSXg3Lcd9AwcO
         DYBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741832169; x=1742436969;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lY807vRTHcLmpci01n00hwlJYpE7rtOQv0n5WzBwtC4=;
        b=mO0fPyVKZoaVAuVzk3Wj8vsLefp5lcfXk5Xl6EljWNm6OVLHxiS2pKFe/Rn3zcmVcD
         9cCYah9+DQNfjuHvNFpyIlN+nEY/GZZiF1AU0TulXf+5M+7ZCsNuA+u0r9Y95j4c/FRP
         P/rRLW7n5d0dv7rRy8Wp9pPiXtVv0AepU1VKE2HBnxOGFfLPbf6YnyJAYnA8AEeVKMnh
         YkItgji20wgtlkKKhC6FVGC/DIibF2s2rbJBOjx9V3/C8Kz43TI6MNXBZBJphNvvIdpK
         YntBsXYiyIm9nbrv2jfx+uAOB3aQa+EaNHT5ZTIAGhD61O2eBe+DPhcUEtu9PuNGVbiX
         qqkg==
X-Gm-Message-State: AOJu0Ywjf3oeyPjA/zumirpB6Dd2gMX6zIgXP1FanuAqwqpaCpRzWh+I
	RIEkvMY+mrJI7YKB5r57NTNmYL1+hTsCh0V6FbW5S7hVyE6IwS3RZ42LcTVQSbooWYbQGtgOc3r
	vkIM52t0iMbgKz5msV3RAJod15FDHy9kzEauWKdhaE9W0WPfBPGE=
X-Gm-Gg: ASbGnctMoP0EgsdZ0MY/GPIjJaEZHaDHbZ9pt4jNOB+qa7nNY3VswdIVuUdoNa25ioY
	3UaQM0DLrxI3FuAAbHwgMVTz+7EMLuboXJrIVQlrWFxIGb4nDLO2Pq6aOqGAsao76bInwa3769S
	2FEV97R2zw8/PhXq6e61QhUfmJVQ==
X-Google-Smtp-Source: AGHT+IFk981RlbwzaZ6xhQ19hzOZriePULK/6xyOVzRvVBCuXGFllhgT2xepsLvLNk76FbBLRGOEkaT+spQDpQbXk5U=
X-Received: by 2002:a05:6512:33d5:b0:549:8f06:8229 with SMTP id
 2adb3069b0e04-549910e8abdmr10002551e87.49.1741832168424; Wed, 12 Mar 2025
 19:16:08 -0700 (PDT)
MIME-Version: 1.0
References: <fccc1170fe964f6f5b68a9211959f24a9ee4bc53.camel@michel-slm.name>
In-Reply-To: <fccc1170fe964f6f5b68a9211959f24a9ee4bc53.camel@michel-slm.name>
From: Jonathan Wright <jonathan@almalinux.org>
Date: Wed, 12 Mar 2025 21:15:51 -0500
X-Gm-Features: AQ5f1JrDI8QEZgxNmxwqigtpAlAGdUUpDfDjt6uwu5L3XSrHxZVyr7puy0XJ-EM
Message-ID: <CAKe4=-LXfUhL=XQseKAmzD8jZ2kS7Bo=KTgq2gdkrcJXSQmkWA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000a863fc06302fe7ea"
Subject: Re: [oss-security] CVE-2025-27363: out of bounds write in FreeType <= 2.13.0

--000000000000a863fc06302fe7ea
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thank you for sharing this and for your work on piecing together the
commits needed to backport to 2.10.4.

On Wed, Mar 12, 2025 at 8:16=E2=80=AFPM Michel Lind <michel@michel-slm.name=
> wrote:

> severity: high (CVSS 3.1: 8.1)
>
> Affected versions: <=3D 2.13.0
>
> Description:
>
> An out of bounds write exists in FreeType versions 2.13.0 and below
> when attempting to parse font subglyph structures related to TrueType
> GX and variable font files. The vulnerable code assigns a signed short
> value to an unsigned long and then adds a static value causing it to
> wrap around and allocate too small of a heap buffer. The code then
> writes up to 6 signed long integers out of bounds relative to this
> buffer. This may result in arbitrary code execution. This vulnerability
> may have been exploited in the wild.
>
> https://www.facebook.com/security/advisories/cve-2025-27363
>
> This commit fixes most of the issue - except `limit` is still signed
> short - but needs to be redone if you're backporting to 2.10.4
>
>
> https://gitlab.freedesktop.org/freetype/freetype/-/commit/ef636696524b081=
f1b8819eb0c6a0b932d35757d
>
> Per repology some Linux distributions are affected
>
> https://repology.org/project/freetype/versions
>
> - Amazon Linux 2
> - Debian stable / Devuan
> - RHEL / CentOS Stream / Alma Linux / etc. 8 and 9
> - GNU Guix
> - Mageia
> - OpenMandriva
> - openSUSE Leap
> - Slackware
> - Ubuntu 22.04
>
> (The list above might not be exhaustive)
>
> Best regards,
>
> --
>  _o) Michel Lind
> _( ) identities:
> https://keyoxide.org/5dce2e7e9c3b1cffd335c1d78b229d2f7ccc04f2
>      README:     https://fedoraproject.org/wiki/User:Salimma#README
>


--=20
Jonathan Wright
AlmaLinux OS Foundation
Mattermost: chat <https://chat.almalinux.org/almalinux/messages/@jonathan>

--000000000000a863fc06302fe7ea--
