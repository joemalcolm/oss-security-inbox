X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1482" "Wednesday" "5" "October" "2016" "09:54:07" "-0700" "Tavis Ormandy" "taviso@google.com" "<CAJ_zFk+YYbsEy0EjPU+sgi3pamZt7jqjBLFS8JOeWjmGM=1a_g@mail.gmail.com>" "41" "Re: [oss-security] CVE Request - multiple ghostscript -dSAFER sandbox problems" "^Date:" nil nil "10" "2016100516:54:07" "[oss-security] CVE Request - multiple ghostscript -dSAFER sandbox problems" (number mark "        taviso@googl Oct  5   41/1482  " thread-indent "\"Re: [oss-security] CVE Request - multiple ghostscript -dSAFER sandbox problems\"\n") "<20161005184753.417dd846@pc1>" ("<CAJ_zFk+f8Q-4UQt0gv6X_v_gSb12UVVVQ1knJBdZjpA=MQ-S5w@mail.gmail.com>" "<20161005184753.417dd846@pc1>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30061 invoked by uid 550); 5 Oct 2016 16:54:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30036 invoked from network); 5 Oct 2016 16:54:41 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=cdbmG/j+4hlxNouPP2ndpgtN88NWW/c0dSHg3CSyOc0=;
        b=liymkYO2jalQ0iECuZpo+JzCQD4ma1EKBB2KxoAQNO5b2lLakt1xZ20yJuGqAFUo3y
         euVadvg8dWjQAPqUaJYQsR8JCF2jX4YnwNV465f1fZNaW2vnaTC3I9LkoHrXk/aqViuJ
         vzEizGx+qGbHomz+sWr5tRMUlr9yqcQDX8EyixPxt7tIRYVena+hiH4wI5knFrSAYv/j
         YFFYoSlf/traRtA6Q/j33MCSmT2qyRZnm5HlGhoww75HtR8h7KDgbdqOC92u61HXQlgz
         WZH/zLZm0ie4AAuYOct6f6PMY4lpGYVkDVe+SnfB6QbBRgZNcnQmY1+kFvA5t76Jh1T3
         zUiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:content-transfer-encoding;
        bh=cdbmG/j+4hlxNouPP2ndpgtN88NWW/c0dSHg3CSyOc0=;
        b=QzdZmxCRrwl3E0hIA8VwO9srbT7AjHYdkCbT7A6EAvPQrX5TrqHCiWMVu1itKLmJfO
         fjkHqEMyU+wrDiFfGgXChVJgnJ4NJ/QS02IR2n+JVn1Y7FogF035EufuaDsrKOneCdyv
         nMx0H1m023oV+Ey8x2HcZI5WC8d8k+n4DBy/T6zosGlP3L5UJ9MHkUqEXUWMPbDJJIsz
         pp6SD6fzqRrGlHLB3u5L6gZEM+yBIURJdgnMB56MAzL4Ntc4VFCxPkiN4cR6xdAe0DVE
         KDgf4Ys5VU+DazixEX+n4sqMwMHCf1ZKe7erYG3MGCEblQQvLodEtmhLn7FeQVTlEjCD
         18jQ==
X-Gm-Message-State: AA6/9RmJ1wzL68A+Dch22MIOrOq1SP4y2yxuYSRU+xRziwvHCWITPjS8Urf1C0rpkapZF2CsoRyGFSjF6M6aI0sg
X-Received: by 10.31.217.3 with SMTP id q3mr7593931vkg.150.1475686468919; Wed,
 05 Oct 2016 09:54:28 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20161005184753.417dd846@pc1>
References: <CAJ_zFk+f8Q-4UQt0gv6X_v_gSb12UVVVQ1knJBdZjpA=MQ-S5w@mail.gmail.com>
 <20161005184753.417dd846@pc1>
Message-ID: <CAJ_zFk+YYbsEy0EjPU+sgi3pamZt7jqjBLFS8JOeWjmGM=1a_g@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 5 Oct 2016 09:54:07 -0700
From: Tavis Ormandy <taviso@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE Request - multiple ghostscript -dSAFER sandbox problems
To: oss-security@lists.openwall.com

On Wed, Oct 5, 2016 at 9:47 AM, Hanno B=C3=B6ck <hanno@hboeck.de> wrote:
> On Wed, 5 Oct 2016 09:13:03 -0700
> Tavis Ormandy <taviso@google.com> wrote:
>
>> If you're using ImageMagick, I would recommend disabling the PS, EPS,
>> PDF and XPS coders in policy.xml. Applications like gimp, evince,
>> claws, and most other applications that generate thumbnails of PDF/PS
>> documents should probably not do so without a prompt (NOTE: A lot of
>> packages do this
>
> I was surprised to see evince in this list. It uses poppler for pdf and
> libspectre for postscript, so there seems to be no use of
> ghostscript (maybe in an older version).
> Also for claws the only use of ghostscript is in a plugin that's not
> enabled by default.

It might be an old version but the version I have on RHEL7 and Ubuntu
LTS both invoke gs by default.

$ evince --version
GNOME Document Viewer 3.14.2

> While I agree that avoiding parsing for things like thumbnails should
> be tried I still wonder what the overall solution to this is. Because
> even if we avoid non-prompted ps parsing we still want to be able to
> parse PS files without code execution.
> Do you feel dSAFER could be secured or is this a loosing battle?
>


As I understand it, there are also complicated licensing issues with
ghostscript that are going to impede progress.

The problem is a big mess.

> --
> Hanno B=C3=B6ck
> https://hboeck.de/
>
> mail/jabber: hanno@hboeck.de
> GPG: FE73757FA60E4E21B937579FA5880072BBB51E42
