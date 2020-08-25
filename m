X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1707" "Tuesday" "25" "August" "2020" "15:38:47" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20200825133847.GA1566487@eldamar.local>" "35" "Re: [oss-security] Fossil-SCM patch fixes RCE in all historic versions" nil nil nil "8" "2020082513:38:47" "[oss-security] Fossil-SCM patch fixes RCE in all historic versions" (number mark "U       carnil@debia Aug 25   35/1707  " thread-indent "\"Re: [oss-security] Fossil-SCM patch fixes RCE in all historic versions\"\n") "<CALwJ=Mwm84qq+99OYYsQTEhKs1O2kFC4NxpbsrGgfgoHK3t4_w@mail.gmail.com>" ("<CALwJ=Mwm84qq+99OYYsQTEhKs1O2kFC4NxpbsrGgfgoHK3t4_w@mail.gmail.com>") nil nil nil nil nil nil nil "Re: [oss-security] Fossil-SCM patch fixes RCE in all historic versions" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30207 invoked by uid 550); 25 Aug 2020 13:39:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30189 invoked from network); 25 Aug 2020 13:39:01 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=+4nKy11Gz0uOygftNrsZkNyPWGBO/6ph8iVIiXEE1sI=;
        b=TC6I1urFbblzHSwN6z8u4tpjMdFcNVH0Teo+o3W9q8MuYsWdnS5jK941Le6Xjds1cn
         WUdkUhI+iawRQUc0Fb0QAiyZQXEZ3z2fHKrfFPLf++5GasxWva8X5cVT5je5KZIdTsvk
         l0nbVj71klIZ6YFv2VSmrJtjAhNJM8e8eMqwv2CARBH+sd4IYT9yqCfXEu80i+LGzyrX
         OlyR2Usp+yWU7OosqZ5ViejZ3T7tG0dLYVPoy1MT+Uu5E4RyqEtPw+QVmx/+IdREhD89
         IY9Z9gq+zjkZe2IAqQ+vJIbJ2GhTwciAOJGPCWliVfPT2x93uXL23P5uCjT3dDe3F77B
         d4wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :references:mime-version:content-disposition:in-reply-to;
        bh=+4nKy11Gz0uOygftNrsZkNyPWGBO/6ph8iVIiXEE1sI=;
        b=TJPhiDrjc1wDHQPfHE7/W8idPfvMldawHodDi6zr1QN/fK/1qDfjWLNpGNZ5wiTiIp
         Cz0HC0KUzNo6btiNP8/f+ANYkecxd3+VUyvWZgUUkZNzEbCJDNucvxO85MXZD5iPLFNL
         9Yrr67SEDzdU/Bt9OR/Q2LfBiRg7CD+DZyxI7A7bxyKy5px1VTlWIzUJokPqtUrQK+rI
         cE2kQ7GIK0yMRhNvvHY25uN1YX5l/Y+U6vMRvdLeLyvfKYwMtGsl/JbtLS0G20jhn9oh
         5fFGOuzBaRFBB22QsjG3hiQ6jw11qeobxsVonjacpxOry8AC9xoN86TIrEkZERN5U9KQ
         ygkw==
X-Gm-Message-State: AOAM533IAhpugJGXfTqittMckUKEplQA2S1DUnNu96HsBzndqjcHdolx
	EuwpLOwqvYk49i1wwiIUjgKrqymYzP85mg==
X-Google-Smtp-Source: ABdhPJxJDdcXj3p/T08IdObuwJhFRU9t1iFkav2ZVpeRguwO+ipxuammIpFgtF14KGAdXEj6vp86Vg==
X-Received: by 2002:a1c:e108:: with SMTP id y8mr2088833wmg.74.1598362729654;
        Tue, 25 Aug 2020 06:38:49 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Tue, 25 Aug 2020 15:38:47 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <20200825133847.GA1566487@eldamar.local>
References: <CALwJ=Mwm84qq+99OYYsQTEhKs1O2kFC4NxpbsrGgfgoHK3t4_w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CALwJ=Mwm84qq+99OYYsQTEhKs1O2kFC4NxpbsrGgfgoHK3t4_w@mail.gmail.com>
Subject: Re: [oss-security] Fossil-SCM patch fixes RCE in all historic
 versions

Hi,

On Thu, Aug 20, 2020 at 11:15:41AM -0400, Richard Hipp wrote:
> Researcher Max Justicz discovered a potential RCE and other
> vulnerabilities in the Fossil distributed version control system.
> (https://fossil-scm.org/)  Patches to address these issues are now
> available for download.  Package maintainers who bundle Fossil are
> encouraged to update their packages without unnecessary delay.
> 
> All vulnerabilities require a pre-existing trust relationship between
> the victim and the attacker.  In other words, the attacker must be
> either a site administrator, or someone with check-in privileges on
> the project.  There are no known vulnerabilities to servers from web
> users entering tickets or forum messages or wiki or doing other
> on-line operations.  The attacks require the ability to push, at
> least, and the most serious RCE problem requires the ability to
> configure a server in malicious ways.  If you are unable to upgrade to
> one of the patched versions of Fossil, then you are encouraged at
> least to know well the people from whom you clone or pull.
> 
> Precompiled binaries and source tarballs for the patched versions of
> Fossil are available on the Fossil download page
> (http://fossil-scm.org/fossil/uv/download.html).  However, the dozens
> of check-ins that went into generating these patches, and the tickets
> that describe the specifics of the vulnerabilities, will be embargoed
> for a few days.
> 
> See the thread on the Fossil Forum
> (https://fossil-scm.org/forum/info/a05ae3ce7760daf6) for follow up
> information or to communicate directly with the Fossil developers.

FWIW, the RCE issue has been assigned CVE-2020-24614 by MITRE.

Regards,
Salvatore
