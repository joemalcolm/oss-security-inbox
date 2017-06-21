X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3373" "Wednesday" "21" "June" "2017" "14:40:06" "-0700" "Qualys Security Advisory" "qsa@qualys.com" "<20170621214006.GB28151@localhost.localdomain>" "83" "Re: [oss-security] Qualys Security Advisory - The Stack Clash" "^Date:" nil nil "6" "2017062121:40:06" "[oss-security] Qualys Security Advisory - The Stack Clash" (number mark "        qsa@qualys.c Jun 21   83/3373  " thread-indent "\"Re: [oss-security] Qualys Security Advisory - The Stack Clash\"\n") "<20170619203933.GA910@openwall.com>" ("<20170619152843.GC7769@localhost.localdomain>" "<2a53a138-8f6b-133d-72b2-6dfd5355241a@redhat.com>" "<20170619203933.GA910@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26595 invoked by uid 550); 21 Jun 2017 21:54:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 8010 invoked from network); 21 Jun 2017 21:40:27 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=qualys.com; s=google;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=giPpXogzAF22S7txohG+nNSnuN07Xz3Chk65QLNiud4=;
        b=BceOxO6S1H2LN9RmacbrqUXcPBKXInGAniN5eN/q5mhOVoQnZBTkCKsItJOZQqvy6k
         l34pjXtwk9GgssuVwovre4SmgS09JeRDyCW7B7IPXaqyQlMe5tfChv3OqLUVZrxzvy6R
         kJRCXgKSr6x2+VUAGNTeo5okWVgOsNgJYB9Xf2h+SgfVbF5v4ZvROqmoa/eHqH3bjqNW
         Pq/T8Uv2UxIwf9lYuXUlfOUz3rKrmU6t36yjxZ//SToIMVl63dcrB8+JucHJduk7VeKd
         AzRRJ9KGNm8XIdd3FuXgA6gAMR3DhX/P6GJNsnJ2qLukQxxo2dyg7mnSAokDlKYRh+Zv
         ZhTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=giPpXogzAF22S7txohG+nNSnuN07Xz3Chk65QLNiud4=;
        b=CUAoK3wAaOA4lEG3u/qOygDJ2y3IEpuBOj4hypCbU3+ve+6QaZQuHlhbzVRi0yGAoZ
         tfnv5kleKIWsiSMExVj/Wi1uquz4i0UPG24pP7AlM6yJKuodmnJojMsua2VxpZs1xnzG
         mEEGTOm0xnzfyVYjb31iXsRuTBM3dS/QL/1wuEomwDJ9BRjpAzVqoY5pviiNiW1KZ9pB
         kMwMGGa31Lgj3dh173nWrYfh/3Wcj5CAywYXa7H43DHP4ggmpy7IiXlkwPtu5lO6I1jT
         ccT2woxuno7I1X7EGlcyPHxm+VGlV0fYlcRy4XYczzNG/7y/AE7gJCeQ6JFfdtkrk0Lo
         Ukug==
X-Gm-Message-State: AKS2vOzAY/RloMZ7tEYWH32JW9y9B2OWirBuQWX9cNOjSUDf7JI1HXxB
	oJLe27OeU2KAzOUetpA=
X-Received: by 10.99.115.16 with SMTP id o16mr38616749pgc.31.1498081215227;
        Wed, 21 Jun 2017 14:40:15 -0700 (PDT)
Message-ID: <20170621214006.GB28151@localhost.localdomain>
References: <20170619152843.GC7769@localhost.localdomain>
 <2a53a138-8f6b-133d-72b2-6dfd5355241a@redhat.com>
 <20170619203933.GA910@openwall.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170619203933.GA910@openwall.com>
Date: Wed, 21 Jun 2017 14:40:06 -0700
From: Qualys Security Advisory <qsa@qualys.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Qualys Security Advisory - The Stack Clash
To: oss-security@lists.openwall.com

Hi Solar, all,

Thank you very much for this constructive feedback.  For the sake of
transparency and an improved disclosure process in the future, we will
do the same now, and also address some of the concerns that have been
expressed since Monday.

But first, we would like to thank everyone who was involved in this
disclosure, for their hard work and patience, and especially Solar for
creating and administering the mailing-lists that made it possible (and
for accepting, although reluctantly, the embargo extension).

On Mon, Jun 19, 2017 at 10:39:33PM +0200, Solar Designer wrote:
> The stated argument for extending the embargo duration beyond list
> policy's maximum was that fixes presumably wouldn't be ready.

This was not the only reason why we eventually decided to extend the
embargo;  here is what we wrote in an e-mail to distros@, on May 28:

"""
The discussions that
took place here on distros eventually forced us to extend the embargo
from the original CRD (May 30) to June 19:

- there are serious problems with the two solutions that we proposed
  ("Increase the size of the stack guard-page" and "Recompile all
  userland code with GCC's -fstack-check option");

- please see Red Hat's analysis, attached;

- when we asked here if distros would be ready by May 30, only three
  answered (two "yes", one "no"), and hoping for the best ("the ones who
  did not answer will surely be ready") was not an option, and "let's
  publish anyway on May 30, distros should have been ready" was not an
  option either (the end users would be the ones suffering from such a
  debacle).
"""

The first problem was that 1MB is not enough on all architectures;  the
second problem was that -fstack-check does not always "touch" all pages;
and Red Hat's analysis was an extensive report about the fixes needed in
the kernel, the glibc, and gcc.

All of this, plus the third reason mentioned above, and our own
assessment of the situation, helped us make our decision to extend the
embargo.

> I understand
> it's rare for companies to do quality security research, and I didn't
> want my action to have hampered the stream of quality security research
> we're seeing from Qualys lately.

Thank you very much.  However, we must admit that this coordinated
release has been one of the most stressful and painful experiences we
ever had:  we were torn between those who wanted to publish early and
those who wanted to publish later, and in the middle of all this
coordination we were trying to complete our research (we had not
successfully exploited 64-bit Linux yet when we first contacted
distros@).

Such a responsible disclosure could have been, and should have been,
easier and simpler, even with so many vendors involved.  How could such
a situation be handled better next time?  We are open to suggestions.

Finally, we would like to address a concern that has been voiced by
Chris Evans (who has also quoted Solar's mail, thus answering here):

"""
There's also the question of whether "customers" get access to details
before patches are available
"""

Absolutely not:  we have not shared a single detail of these
vulnerabilities with anyone outside of Qualys before the Coordinated
Release Date;  and even within Qualys, we have kept this
compartmentalized until the very end.

Thank you very much!

With best regards,

-- 
the Qualys Security Advisory team
