X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["325" "Wednesday" "10" "February" "2021" "21:25:57" "+0530" "Utkarsh Gupta" "utkarsh@debian.org" "<CAPP0f95myr-waB5z3qVvXp3BGNzyU5f8UwSTdMzV_zGb1wCt9w@mail.gmail.com>" "11" "Re: [oss-security] Re: screen crash processing combining characters" "^Cc:" nil nil "2" "2021021015:55:57" "[oss-security] Re: screen crash processing combining characters" (number mark "        utkarsh@debi Feb 10   11/325   " thread-indent "\"Re: [oss-security] Re: screen crash processing combining characters\"\n") "<rvv4ba$vs$1@ciao.gmane.io>" ("<rvubtf$lnv$1@ciao.gmane.io>" "<alpine.DEB.2.21.2102091921540.21881@o7.fi>" "<rvuj8p$n59$1@ciao.gmane.io>" "<rvv4ba$vs$1@ciao.gmane.io>") nil nil nil nil nil nil nil "Re: [oss-security] Re: screen crash processing combining characters" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22113 invoked by uid 550); 10 Feb 2021 16:06:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13600 invoked from network); 10 Feb 2021 15:56:47 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=2QbYpDzBqzpSAug2WJ/zuPc6AwG3Im/gU61W3l/IpOs=;
        b=ODwWRMZmdxq9Ds85UlRIzJkmlkbR4VO3M794FuoZrJzNOCzsLAuEukj4+d9H5jlko5
         6YxSlQFFn0JHcXAPiJytWWJVFMN6G8kMv4BRs/CAlnMYU1pqN0+hAoZzMfwcvKkrfusL
         BWhUTPvjC/W+cnaHe6VMfLX91m7eN8MHEdo8NRbj5yaDvn9rrVSIKZZkCAxZyWJqT39u
         dpvcnm42tIlGfAqj7T8KjuA4bahOAksyWIyhEDqgGVffRBY9YN72rGELrhwTF4oYW1qI
         1x8bR9YtSZU9+0uzuH2GHWPXua08ZyzKIKFKb4JYVyUqudLIoqEGSDbS3I2BhcEh00db
         9nxA==
X-Gm-Message-State: AOAM53052g3TVPAJiwI0V0ecbX3YZ+b/om9PG/GeFrTzs4DjolKi64GQ
	1LMIqRVueJIBZza7o7buEjVDLx0yn+8hiA==
X-Google-Smtp-Source: ABdhPJySYB+CiPmvsvBlJ7LwLatesKMTP4A8UxsLTpL/1yzGvbKA8pn8OYdek3Gly9Sg5blK0zgD8g==
X-Received: by 2002:a02:6f47:: with SMTP id b7mr3950051jae.64.1612972595230;
        Wed, 10 Feb 2021 07:56:35 -0800 (PST)
X-Received: by 2002:a92:d249:: with SMTP id v9mr1626414ilg.305.1612972594656;
 Wed, 10 Feb 2021 07:56:34 -0800 (PST)
MIME-Version: 1.0
References: <rvubtf$lnv$1@ciao.gmane.io> <alpine.DEB.2.21.2102091921540.21881@o7.fi>
 <rvuj8p$n59$1@ciao.gmane.io> <rvv4ba$vs$1@ciao.gmane.io>
In-Reply-To: <rvv4ba$vs$1@ciao.gmane.io>
X-Gmail-Original-Message-ID: <CAPP0f95myr-waB5z3qVvXp3BGNzyU5f8UwSTdMzV_zGb1wCt9w@mail.gmail.com>
Message-ID: <CAPP0f95myr-waB5z3qVvXp3BGNzyU5f8UwSTdMzV_zGb1wCt9w@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Cc: oss-security@lists.openwall.com
Date: Wed, 10 Feb 2021 21:25:57 +0530
From: Utkarsh Gupta <utkarsh@debian.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: screen crash processing combining characters
To: taviso@gmail.com

Hi Tavis,

On Wed, Feb 10, 2021 at 4:37 AM Tavis Ormandy <taviso@gmail.com> wrote:
> Fyi, Thomas (XTerm maintainer) replied - he was able to repro, and said
> the fix is going to be in patch #366, a bug fix release coming soon.

Great, thanks! Could you also tell Thomas that CVE-2021-27135 has been
assigned for that?


- u
