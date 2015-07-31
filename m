X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2501" "Friday" "31" "July" "2015" "01:51:01" "-0700" "Qualys Security Advisory" "qsa@qualys.com" "<20150731085101.GB2142@localhost.localdomain>" "56" "[oss-security] Re: Qualys Security Advisory - CVE-2015-3245 userhelper - CVE-2015-3246 libuser" nil nil nil "7" "2015073108:51:01" "[oss-security] Re: Qualys Security Advisory - CVE-2015-3245 userhelper - CVE-2015-3246 libuser" (number mark "        qsa@qualys.c Jul 31   56/2501  " thread-indent "\"[oss-security] Re: Qualys Security Advisory - CVE-2015-3245 userhelper - CVE-2015-3246 libuser\"\n") "<20150723170954.GA17931@localhost.localdomain>" ("<20150723170954.GA17931@localhost.localdomain>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3637 invoked by uid 550); 31 Jul 2015 09:52:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3592 invoked from network); 31 Jul 2015 09:52:34 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-type:content-disposition:in-reply-to;
        bh=80lUDTDz815j+pmM4re/idS1f4HPdbt9h7+trbeb/WQ=;
        b=UumnOYFoIa1PaNgsj6lPqz7lMNZ1Rq1iV/0lUgmkHlDGlBrT7H5KyM4DBgBv5k1nLl
         KUcG9tnJxxh8wMrf6WAE3FZcZgcJHNbLYrUGR7vtnwcc4ac9S9iKCFw6+uNWuuEvOCIP
         /Al/jvPVubHg7yi8uuIDbaRXjLCUrP8oPpdnH7GLmiP9sG7Vj+K1cysd1IlliXmQhZIJ
         Xd3r0fnocMGM6LXw0D/Fuw4iynvlcLiAAeCDHXk9z/nQpCgYcQ0R+ZFNT/lARVgkWEC7
         OsZ8cc1CreKlUDDvRtUKHripvRkqE15ahuZcbNH9ZWUgrXtk4SrXdDrx4cwv9EaUl7Or
         +UgA==
X-Gm-Message-State: ALoCoQnzfd5S+iB1i29gXF2SddDKI3G3ELTalz+IeDFPhGYpy5yWCJM9QxqF1mDKzf7r/Mwo/pma
X-Received: by 10.70.140.173 with SMTP id rh13mr5313812pdb.24.1438336342038;
        Fri, 31 Jul 2015 02:52:22 -0700 (PDT)
Message-ID: <20150731085101.GB2142@localhost.localdomain>
References: <20150723170954.GA17931@localhost.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150723170954.GA17931@localhost.localdomain>
Date: Fri, 31 Jul 2015 01:51:01 -0700
From: Qualys Security Advisory <qsa@qualys.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Qualys Security Advisory - CVE-2015-3245 userhelper -
 CVE-2015-3246 libuser
To: oss-security@lists.openwall.com

Hello, this is one last post to an otherwise-closed sub-thread (with the
list moderators' approval): our intention is not to re-open this thread,
but to address some of the questions that were raised, and to emphasize
a few important facts.

On Thu, Jul 23, 2015, Leif Nixon wrote:
> *Why* are you releasing a full exploit just minutes after the patch is
> released?

First, this was just another local userland exploit, and local userland
exploits are usually published at the same time as their corresponding
patches and advisories:

http://www.openwall.com/lists/oss-security/2015/03/26/1
http://www.openwall.com/lists/oss-security/2015/04/14/4
http://www.openwall.com/lists/oss-security/2015/04/22/12
http://www.openwall.com/lists/oss-security/2015/05/21/9
http://www.openwall.com/lists/oss-security/2015/05/21/10
http://www.openwall.com/lists/oss-security/2015/06/16/2

Second, the libuser bugs are no complicated memory-corruption bugs (no
ROP-chain or ASLR-bypass is needed): an exploit for the common case can
be written in well under an hour (roothelper.c is complicated only
because it handles all corner cases).

Third, the userhelper binary is NOT default on all Red-Hat-based
distros, but the chfn binary IS, which is why we purposely chose to
release our userhelper exploit, but NOT our chfn exploit.

On Fri, Jul 24, 2015, Stephan Wiesand wrote:
> Wild guess: Their customers had plenty of time to understand the issue
> and its impact, and to roll out either a fix or some mitigation. And
> thus an edge. Looks like "just business...".

We are not into that kind of business: the reason we internally audit
open-source code at Qualys is that it allows us to make our products and
infrastructure more secure, and it is a great way to contribute to the
open-source community.

When we contacted Red Hat about the libuser vulnerabilities, we sent
them both our advisory and our exploit, and they promptly replied with
two CVEs and patches for us to review.  We would like to thank Red Hat's
Security Response Team and developers for giving us the opportunity to
review the patches while they were being written, because the end-result
greatly benefited from this cooperation.

As for why Red Hat published their updates and patches one hour after
the Coordinated Release Date (and we published our advisory even later
than that), Kurt Seifried already answered this here:

http://www.openwall.com/lists/oss-security/2015/07/24/3

With best regards,

-- 
the Qualys Security Advisory team
