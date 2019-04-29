X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["702" "Monday" "29" "April" "2019" "21:15:28" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" nil "16" nil nil nil nil "4" nil nil (number mark "U       carnil@debia Apr 29   16/702   " thread-indent "\"Re: [oss-security] Linux kernel: multiple issues\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Linux kernel: multiple issues" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1890 invoked by uid 550); 29 Apr 2019 19:15:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1867 invoked from network); 29 Apr 2019 19:15:42 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=m+A9cE9gap/bxT+7H5yEt/LRNc8KotAXyPM4Zp3t4hg=;
        b=YT9/VfAtvhq1xhmCt2nHWFwgrgyd+7MDv1zkcGVnjJVqf12nC2mUiBTSuHmKTq7VnC
         vDqGwcRiJJDAO1zYVX26NCagzEgiTwNJrn6yDee4zCF1I+u4Hc6YL6EVOQ1TJWhvrNTM
         TDBvftdZ1Ud0tt8A2Qa+XSs+Jp2hnQKUS36r+j9al60AplgIC/Y1yQmk9rEHsLbyzLBz
         5dYQYBangcELyW14SihgPgPbEu/yxufgLLiBUZfYAXhtDXRBiZU+6GIQfT2Bj2h+SkdS
         J1NQ062wiEPLmrZPcFmDvFBkyapeFTauUDFTp+37eYms/tx7PMEudiOpuTgV57AXlL3S
         G2WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=m+A9cE9gap/bxT+7H5yEt/LRNc8KotAXyPM4Zp3t4hg=;
        b=kTawXom2VH6vzxj5EQoblHaJy3Vu0D1A42qCNn+bSh0YBB9f9dZGgOHdcR26ohWJAq
         1MVf8Ot+V0cPFaTLUgblQ7o4UAucw/QdMDAB5fwYV71AM02h/RU+RnyK9vrN3Clm1KWx
         Ks+mfYDeobldlNLM2LsF6FkV1e5vMsezA20RBnCI2HzQ5iPS7Uwp9rAAcjupEL9uhxTZ
         SXjrAnNjoynKCd0rZhYxF+sBbS6KerNXF16AC0O6JHOD1DQTDbUO5xf9tUwHCood2v+O
         lcbi14Q9TPfGni9RNXDDfcBFJk5IP3H+qmeqS4eJJkKMzmvuVKvjft7mLIwbPePGxD5N
         zbfg==
X-Gm-Message-State: APjAAAXfv2/lCxJlnigQTRZeKDlfEWmYclAzBW3fFkv7WIdKidTCSbpt
	MYD6vW4XkNt6PVnfjeuBJPYkLgiuEM8=
X-Google-Smtp-Source: APXvYqzX0lLnMtvojtOjFGcalG1FhQLirqPgTVh4S2JejORxRO5gEF3/qjexWrdRRovrZd0Bvzh+hw==
X-Received: by 2002:a17:906:7c12:: with SMTP id t18mr4348783ejo.59.1556565331111;
        Mon, 29 Apr 2019 12:15:31 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Mon, 29 Apr 2019 21:15:28 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <20190429191528.GA10231@eldamar.local>
References: <CAG48ez04TXacCC8-PSw_gHofAux6tfxXBU6EMGpoqL=KzevKuw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAG48ez04TXacCC8-PSw_gHofAux6tfxXBU6EMGpoqL=KzevKuw@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [oss-security] Linux kernel: multiple issues

Hi Jann,

On Mon, Apr 29, 2019 at 02:56:06PM -0400, Jann Horn wrote:
> == missing locking between ELF coredump code and userfaultfd VMA modification ==
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=04f5866e41fb70690e28397487d8bd8eea7d712a
> https://cdn.kernel.org/pub/linux/kernel/v4.x/ChangeLog-4.14.114
> https://cdn.kernel.org/pub/linux/kernel/v4.x/ChangeLog-4.19.37
> https://cdn.kernel.org/pub/linux/kernel/v5.x/ChangeLog-5.0.10
> https://bugs.chromium.org/p/project-zero/issues/detail?id=1790
> CVE-2019-11599

If I'm not mistaken, this was assigned already CVE-2019-3892,
information from https://bugzilla.redhat.com/show_bug.cgi?id=1696015

Regards,
Salvatore
