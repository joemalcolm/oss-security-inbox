X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3360" "Wednesday" "23" "May" "2018" "06:32:23" "-0700" "Qualys Security Advisory" "qsa@qualys.com" "<20180523133223.GB27451@localhost.localdomain>" "92" "Re: [oss-security] Qualys Security Advisory - Procps-ng Audit Report" nil nil nil "5" "2018052313:32:23" "[oss-security] Qualys Security Advisory - Procps-ng Audit Report" (number mark "U       qsa@qualys.c May 23   92/3360  " thread-indent "\"Re: [oss-security] Qualys Security Advisory - Procps-ng Audit Report\"\n") "<20180517171708.GA21447@localhost.localdomain>" ("<20180517171708.GA21447@localhost.localdomain>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28553 invoked by uid 550); 23 May 2018 13:46:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21694 invoked from network); 23 May 2018 13:36:30 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=qualys.com; s=google;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=0ltyxrAEV9tl6x2QWJPb7uHD1ll3B+Ffqv8quMhIVIY=;
        b=Rq8f+AUQiLfvknZlJ76NXjizRBW+fMis5mhmIBu/1PGeTZgmaRhs0BX9LA2vy64eVu
         wxMq31OnS5S7KQrd+fepnkd5ENgjwRYIjDHxNr5Lz/gsRXy1pt9uSRnjiO0u7ktMslVx
         OHOoz80lUA7vm7d0zjMtAlpgmFC5ETYSmwL7lfGPFl+h7eou/8+oYZK6Y6aookyJGRCv
         vD+2TfvTxtiC3IbQFX4ZCMISjLAwSkbcbVfQ3udJH+yQZUTjHcDqSxxyrl9W6L5YvVGF
         H5156DYkAC12NYa16bhigT+OblDl+SZNQDXoBNbxEFnlJcEKrMCzb/pXkx52BcKcDxZ0
         EWEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=0ltyxrAEV9tl6x2QWJPb7uHD1ll3B+Ffqv8quMhIVIY=;
        b=gbtRPLs6UzKFyC/MbFEf2jvz3qGh5B0Uy/1lyBBhkLlr/D9uwVp4TG9ZjTwuDjSsJE
         /pMEtbiQ2QuXFe4/cXU3h4yGWEi5jCQcbq/4DdL54TpCLvUNiXqjB00qMuTt0PECZQ/V
         +LPM/dZYUYxzd9GmD3viJzPHaamUD6maNVv3F1YL+pkVQOsZBw9cJKmtgBPbPRkxoS1/
         QlhZd4TnyU7F87b31Fd/NibwIIeJWuioRkheXEWx9cigiLvj7he5ZTSY6K+SFAtAoXfG
         eeCK3pWHrYfhM+XBguxllexlk8iDbGZ3zXSyJmbvh719BU4qkRMVuErm5SsEEXAUK+B8
         47uw==
X-Gm-Message-State: ALKqPwf+5IOyCQNJSbRqOPXmS4r2bBuu25yvL450JIs+i1kJNrJwMKjp
	RccGy4K4Agw6SIawZpVSIkX6H8fm
X-Google-Smtp-Source: AB8JxZq9H9vgWBd8oOa1w1b4NDB9GDnwYEPFcwyWzkuyM+TN8qC5u7SBYOEdaZP//eX/1QOCrkmTUQ==
X-Received: by 2002:a62:8605:: with SMTP id x5-v6mr2958955pfd.103.1527082578124;
        Wed, 23 May 2018 06:36:18 -0700 (PDT)
Date: Wed, 23 May 2018 06:32:23 -0700
From: Qualys Security Advisory <qsa@qualys.com>
To: oss-security@lists.openwall.com
Message-ID: <20180523133223.GB27451@localhost.localdomain>
References: <20180517171708.GA21447@localhost.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20180517171708.GA21447@localhost.localdomain>
Subject: Re: [oss-security] Qualys Security Advisory - Procps-ng Audit Report

Hi all,

As a follow-up to our procps-ng advisory, below are the answers to some
frequently asked questions that you may find useful.

> - which is the first version with the fixes, does it include all of the
> fixes (and if not, what is it missing and are those missing fixes
> important to have?), and where to download it?

Procps-ng 3.3.15 has been released and includes most of our patches; it
is available at:

https://sourceforge.net/projects/procps-ng/

The patches that are missing from procps-ng 3.3.15 are:

- 7 low-priority patches (0120-0126), which have not yet been validated
  by upstream;

- most of our patches for top, which unfortunately have been reverted by
  top's author; for example:

https://gitlab.com/procps-ng/procps/commit/c5026787156d23512487ad9bbf540be7e3ee8de1
https://gitlab.com/procps-ng/procps/commit/c9dfcdebdc6b482ca2030c6ea3aa376c218232e9

> Can you let us know which patches the CVEs align with as it will
> make chasing all of this down a lot easier, thanks!

The patch for CVE-2018-1122 is:
0097-top-Do-not-default-to-the-cwd-in-configs_read.patch

The patch for CVE-2018-1123 is:
0054-ps-output.c-Fix-outbuf-overflows-in-pr_args-etc.patch

The patch for CVE-2018-1124 is:
0074-proc-readproc.c-Fix-bugs-and-overflows-in-file2strve.patch

The patch for CVE-2018-1125 is:
0008-pgrep-Prevent-a-potential-stack-based-buffer-overflo.patch

The patch for CVE-2018-1126 is:
0035-proc-alloc.-Use-size_t-not-unsigned-int.patch

The kernel patch for CVE-2018-1120 is:
https://git.kernel.org/linus/7f7ccc2ccc2e70c6054685f5e3522efa81556830

There is currently no patch for CVE-2018-1121, because no satisfactory
solution (secure and efficient) has been found. Please feel free to
suggest ideas here!

> - which versions are vulnerable?

We did not try to track down the first vulnerable version, but we had a
quick look at procps 3.0.0 (from October 2002) and it was already
vulnerable to the 5 CVEs.

> - which version was audited?

We audited procps-ng 3.3.12 (the version used by many stable
distributions), but we probably ended up reading most of the master
branch too while writing the patches.

> what testing have you done?

Because procps-ng is a critical package, and because 126 patches
introduce significant changes, here is what we did to minimize the
risks:

- we were two to perform the audit, and we decided to both write the
  most important patches, independently; the final patches are the
  result of this double-work, which clearly avoided a few bugs;

- we ran procps-ng's test-suite ("make check") after each change;

- we manually ran some tests after each major change, to make sure that
  the code-path leading to the change is not broken, and to make sure
  that the change actually fixes the issue;

- we started sending our patches to upstream on March 30 (for reviewing
  and testing), long before we contacted linux-distros@;

- we contacted linux-distros@ on May 4, and were asked for an embargo
  extension (for more time to review and test the patches), so we set
  the Coordinated Release Date to May 17, 17:00 UTC (13 days -- almost
  the maximum embargo, but we wanted to avoid releasing on a Friday).

We are at your disposal for questions, comments, and further
discussions. We thank Solar Designer and Kurt Seifried for their help!
With best regards,

-- 
the Qualys Security Advisory team
