Received: (qmail 19582 invoked by uid 550); 24 Jul 2022 10:13:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21647 invoked from network); 24 Jul 2022 03:35:21 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:in-reply-to:to;
        bh=8Oid2+m7VSi6NVJbgoGzpAsqazRVemf11q+v7uYQl44=;
        b=Hl5gCFsIbIFdjhGiYIwun6vn7WbM4ZxvZ7AsRaXlZCJsLclfmSzKvaLWsgxRcHJenn
         8Vz9QlWTNs8PARHExPrOpv8eEbWwXPC4C4eutLhRIGM1mEI6aqm71BIhCfNowu3gj3nT
         NIhcvb+l+ozXtK+aOramN3qEtOIDxNLTUzBwY4mc610CgQf9fUvAfurDStwgf/JMvrY4
         CGTChzBPo8qS+zA1qnY9mIbsfMfVWoXv3/FfXhBbHsme4rWjZckdFiiI69R21uWyolAb
         HRJm1egiYUQew7Z6VwSsENSK0+f/W2E/bVY5fUHpX04yX+9PWOWEu6dUPXEY+qmbBj2u
         2EVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:in-reply-to:to;
        bh=8Oid2+m7VSi6NVJbgoGzpAsqazRVemf11q+v7uYQl44=;
        b=7hjT5Cs932N6oX2Z0GUjM2lVtP+aKMUlIS7L5WDzZfi7zMOmj5CEqMEBXJ7/jqTp8E
         7roCyXhEuhdVo32VW5cycEtwgrO2uRfyRvvZyar5B1vW8hw0WplXndzJyPCAqHJFcM/K
         uPqw02bP92tjwhL2qeIQ/iiTkMh0vwkmSmUMnJC+ZzCk1z5oxXoyxGDyLJAVqB7W4lBJ
         1vO7cqP+xlvPKqXxymOudK7tXw68FrGu/gl3m+uluwSexL8QFR95hItIMnXoWf4mUyhJ
         9Qfc4ujMvwoOw3ntRR2TOprZvfzuaOBnbJAPvLdhyvZ+GjFSPJORZwFzNP2kfRaS7WnM
         QhyQ==
X-Gm-Message-State: AJIora80+Q1GzB0lfxFkcViO+jpJVHMAGw7W2qdlzVNfxUhbE4a3W74b
	GwEGCV4aphSN5SxLnLVBUYDhLTXqO7D07w==
X-Google-Smtp-Source: AGRyM1snlIdV138oVp0IJ/86j/cnBunjesyxgInRsAiIaTGDvHvBFzsh/fKoa2dHRhxyFUsyQfiVZA==
X-Received: by 2002:a05:6a00:16ca:b0:52b:cc59:9488 with SMTP id l10-20020a056a0016ca00b0052bcc599488mr6872758pfc.0.1658633708554;
        Sat, 23 Jul 2022 20:35:08 -0700 (PDT)
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
From: Pedro Ribeiro <pedrib@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Sun, 24 Jul 2022 10:35:04 +0700
Message-Id: <08DDF362-C8B0-4D35-8A56-6E504F376019@gmail.com>
References: <YtwnKUHaS9nL/F/F@gentoo.org>
In-Reply-To: <YtwnKUHaS9nL/F/F@gentoo.org>
To: oss-security@lists.openwall.com
X-Mailer: iPhone Mail (19G71)
Subject: Re: [oss-security] CVE Request: heap buffer overflow in gdk-pixbuf


> On 24 Jul 2022, at 01:08, John Helmert III <ajak@gentoo.org> wrote:
>=20
> =EF=BB=BFOn Sat, Jul 23, 2022 at 07:35:42PM +0700, Pedro Ribeiro wrote:
>> Hi,
>>=20
>> A year ago I found and submitted a vulnerability to the gdk-pixbuf track=
er:
>> https://gitlab.gnome.org/GNOME/gdk-pixbuf/-/issues/190
>>=20
>> It's a heap buffer overflow using a crafted GIF, which is likely=20
>> exploitable in 32 bit systems. Full details are in the link above in the=
=20
>> bug tracker.
>>=20
>> This was patched and the fix was merged 8 months ago as seen here:
>> https://gitlab.gnome.org/GNOME/gdk-pixbuf/-/merge_requests/121
>>=20
>> The issue is now public, but since no CVE was attributed, it probably is=
=20
>> not being considered as a problem for downstream users of the package.
>>=20
>> As of today, the latest Debian stable package is affected by this=20
>> vulnerability. Using a GNOME file system browser and browsing to that=20
>> folder will cause a crash, as will opening it up in a GNOME image viewer=
=20
>> and even attempting to load it in Chromium (should have submitted to=20
>> them for a bounty :D).
>>=20
>> Hence I'd like to get a CVE to raise awareness for this issue, so that=20
>> downstream users of the package can get patched.
>>=20
>> Thanks and regards,
>> Pedro Ribeiro
>=20
> Hi, according to the oss-security Openwall wiki page [1], CVEs need to
> be requested via MITRE's web form [2].
>=20
> [1] https://oss-security.openwall.org/wiki/mailing-lists/oss-security
> [2] https://cveform.mitre.org/

Hi John,

Thanks for the info, will request via the form and post here again once I h=
ave a CVE number. In any case I hope this post is useful to raise awareness=
 of the issue to distro maintainers.

Regards=20
Pedro=20


