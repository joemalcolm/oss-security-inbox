Received: (qmail 17943 invoked by uid 550); 16 Feb 2025 18:42:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 16346 invoked from network); 16 Feb 2025 18:22:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=reciperadar.com; s=google; t=1739730162; x=1740334962; darn=lists.openwall.com;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9gBFb84INxnWHp9FY2QZmq+guTw3RRrSPeZNxqDwAF8=;
        b=S1Xo2n2zKEG8skNyWXqYrNcuEF+y0cj9vP+IUiWVEOD+9OG4DuSh8uDKKmCoMjK2SJ
         /DC7f4W57Rt6iana/gg2n6/4kpSdCQmF2HslArPhwH4QKzBwEDBY2VgMUZeVMUPR4vCs
         HPc/tHtEY70o9ps05k6oNl+yScTyj5MJFZYYupP2kESD6OYq3v2CA2RVG16Te7idxkpi
         Z0LOQJgSLVUo7iKswNvpuMZs20Utu8ICHIP5QltNtoq7HT86WwkeGePcQdRMXw3exBWm
         woxvwIqFVT1e4DQ8IYGLi1eSiS4hbGZITMDALH/ly/y1Z00KO7+xyDMRc2EeDXRHSLcp
         yOrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739730162; x=1740334962;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9gBFb84INxnWHp9FY2QZmq+guTw3RRrSPeZNxqDwAF8=;
        b=vxiIJK5aYFBRYiduYiSVFxjnrqD8sQh1iMeK5Fx8lPVixTFk9GXsj1MwJqG1RfUBPJ
         yV3cxZy+yNAsT7appMeL7Tms8XAQdHwILx949D3C7UPgS9dIEPbYNQo5XpcRtNaapdYf
         nQLRfXwuI/sAUKOEXtztARai/tctx86oE0bWGylDSiI8bVfMWzmbUhX8U7ezvrZH5vGq
         uKOUp+XNPXdk+4RJ/p6nQpDAMxlNwfD2Ex+1pUo9v7/PcNEoPfXtf5VR1Zwx6wz/NyE7
         9DM4JcH5+gW6gN8gsn7NxoA3RtwNkzzhRQecUUXrqNGG42QGRZGKl3GCuLhJ4d/Ehk1R
         lKug==
X-Gm-Message-State: AOJu0YwbCdS4YfDguyGvudIFG5Ul7++aAt4yN1W0J3/N2/1u/fnODXit
	wmzJPMo4YYUaqf4f4soOmR0fzZpnwZConVLcdl+4u2ytQeqDrCvLqR9GUEgZldoVxB0NWhn6W/F
	NTPEO34aoVQV1hi2pkBm/+OzMjs/L5DOpbaWBFE76iG9hcSJLB+s=
X-Gm-Gg: ASbGnctIqk4ASHaAH76LVuE/rgKmGWcc3U37IlQdw2tSRUuoG/1kG7AJMYbfIUo6C2c
	uCF75eb2c0IGwH/ACMPltTdNB5e6Lgx4y+DC1hbeSW+k7421nt5TRn3uxSCl9+8PoQxx1bWAG
X-Google-Smtp-Source: AGHT+IElcRqbi3hcj5I/bkEZM7xReJVATdlId5u2btTJsaHZb5371gw+XqdadlLpLzxk8TE6LgAt60EIdnyeUnhQBkQ=
X-Received: by 2002:a05:6902:1007:b0:e58:9c24:5bcb with SMTP id
 3f1490d57ef6-e5dc90427f5mr3702980276.18.1739730162263; Sun, 16 Feb 2025
 10:22:42 -0800 (PST)
MIME-Version: 1.0
References: <20250216161818.GA12372@openwall.com>
In-Reply-To: <20250216161818.GA12372@openwall.com>
From: James Addison <james@reciperadar.com>
Date: Sun, 16 Feb 2025 18:22:30 +0000
X-Gm-Features: AWEUYZmeqdJ7HjELiYvDAqtNP1etFItPqWp165APL1g3Wy-IcXMD1FZQg3a7uy8
Message-ID: <CAF3AkiMDf-RTf0Z0z-fyc5Fi65no5yxSrc6JPvW_43wGRLK47w@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] CVE-2025-1094: PostgreSQL: Quoting APIs miss
 neutralizing quoting syntax in text that fails encoding validation, enabling
 psql SQL injection

On Sun, Feb 16, 2025 at 4:22=E2=80=AFPM Solar Designer <solar@openwall.com>=
 wrote:
>
> Hi,
>
> As announced on February 13 in:
>
> https://www.postgresql.org/about/news/postgresql-173-167-1511-1416-and-13=
19-released-3015/
> https://www.postgresql.org/message-id/173945575457.197393.617578684265523=
0205%40wrigleys.postgresql.org
>
> > The PostgreSQL Global Development Group has released an update to all s=
upported
> > versions of PostgreSQL, including 17.3, 16.7, 15.11, 14.16, and 13.19.
> > This release fixes 1 security vulnerability and over 70 bugs reported o=
ver the
> > last several months.
> > [ ... snip ... ]

For anyone considering upgrading: please note also that the fix for
this vulnerability introduced a regression[1] that should be addressed
by subsequent upcoming releases of PostgreSQL on Thursday 2025-02-20
(a few days from now).

[1] - https://www.postgresql.org/message-id/272abbd9-d24c-49f1-8b61-8372190=
6aa3b@postgresql.org
