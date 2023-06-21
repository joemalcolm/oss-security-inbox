Received: (qmail 32152 invoked by uid 550); 21 Jun 2023 17:31:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3330 invoked from network); 21 Jun 2023 17:21:00 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687368048; x=1689960048;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OnY5HApNZ2D/8D62RmbMFjcUGzWuqwQtoLTgpAuUmto=;
        b=WMC0Af39aXFnUCisHJElnukfoGbAhtOHa8YIs6Bz9T5u55HI0eV8HQoCia8h6TQQSP
         K9GOI5IfSzOzRbbS8yNKK4C1RiFtxFLMEfa0E/NMjTwtKGnWnEySKVr3BUe+TPO1lmw/
         xEpa/fZJ1Yd/yIQqLdEfe0WM22OihZcbV5Qa+WudsNJ6U2IsQs1Me67AGpe6WomGhvxx
         lEAxmC+LBjHwYLlvPGndQQST5hvSIO5zffDrMnbVSIAILTZwv71NKuiuK9hjT7in8jE4
         YnYW7OMdLfmOL93Wpo4d74+Y0wReA0SCWnuAWo8ZS+xV2d9W/rf/ZkQ950ZlTVQnwxCe
         oT+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687368048; x=1689960048;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OnY5HApNZ2D/8D62RmbMFjcUGzWuqwQtoLTgpAuUmto=;
        b=ZVWXr1ZmeTUjC1/Hq74UCTzO3Sj5SCwgxai40yz9Rl13H5cDzylK2ppyLCl6i9h2UR
         zUojWoxHj2PlgcWtwhxSBfV/7q+EZoa2gy1hA5yQt1QsRvUlJnmf+d/Mr0taGoulOMB2
         j23S57Af23uqIZYXkZ0xO8DwBqNHBzLVS4K/28xFTeapuVhghbVkDOTe/HZoby19KdBt
         WxbuERvnh0YJdMCtk5ClB8vU+yPHexMRZuctcFxB5d//pWj24F/y3JO9QvL9XsLL8+LF
         FXLDGBKFTVNvAY4Q2gclHCU+EBwIsozFCt8bcKcLaqjSwu6BwZIPvC18PfmPK/smtWdu
         OCmg==
X-Gm-Message-State: AC+VfDzqzpteENx1Sjs67SoPPtkLRQ6Kqi0ts4Ei/4aqeuF7ExEXh5of
	dWM9ZowGDYcNVHjXsLM1B1jRRCCdhCFy3hSIkzJhIEj2sOs=
X-Google-Smtp-Source: ACHHUZ7CTkVCXhbEOk1zhOIRiyu5rVQHi483drNdl/JOH5kIEs/hDyz1mFqKCSAIN+2IoqbnWDTZmvoGqZtXJBmExM4=
X-Received: by 2002:a25:d207:0:b0:ba8:2e05:3e9c with SMTP id
 j7-20020a25d207000000b00ba82e053e9cmr13702651ybg.24.1687368048407; Wed, 21
 Jun 2023 10:20:48 -0700 (PDT)
MIME-Version: 1.0
References: <a37bfa30-f7d2-ae37-5af4-e3674af29a7a@oracle.com>
In-Reply-To: <a37bfa30-f7d2-ae37-5af4-e3674af29a7a@oracle.com>
From: Siddhesh Poyarekar <siddhesh.poyarekar@gmail.com>
Date: Wed, 21 Jun 2023 13:20:37 -0400
Message-ID: <CAAHN_R0PrisCtNJNVfCqp3pHsqFPT+P2aRPLdcknGC9w8vOCWA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] CVE-2023-31975: memory leak in yasm

On Tue, Jun 20, 2023 at 6:49=E2=80=AFPM Alan Coopersmith
<alan.coopersmith@oracle.com> wrote:
>
> https://nvd.nist.gov/vuln/detail/CVE-2023-31975 is freaking out scanners
> since it claims this bug has a CVSS of 9.8.
>
>  From what I see at https://github.com/yasm/yasm/issues/210 though, I can=
't
> see any CVSS higher than 0.0 being relevant here and think the CVE should
> be withdrawn.  Am I missing something here?  All I see is 2 objects of

I wrote a SECURITY.md[1] for yasm a while back to push back on such
bogus CVEs, so this CVE should actually get rejected.

Sid

[1] https://github.com/yasm/yasm/blob/master/SECURITY.md

--=20
https://gotplt.org
