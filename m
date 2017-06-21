X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1076" "Wednesday" "21" "June" "2017" "14:28:35" "-0700" "Qualys Security Advisory" "qsa@qualys.com" "<20170621212835.GA28151@localhost.localdomain>" "26" "Re: [oss-security] Qualys Security Advisory - The Stack Clash" "^Cc:" nil nil "6" "2017062121:28:35" "[oss-security] Qualys Security Advisory - The Stack Clash" (number mark "        qsa@qualys.c Jun 21   26/1076  " thread-indent "\"Re: [oss-security] Qualys Security Advisory - The Stack Clash\"\n") "<20170620132204.GA6240@openwall.com>" ("<20170619152843.GC7769@localhost.localdomain>" "<2a53a138-8f6b-133d-72b2-6dfd5355241a@redhat.com>" "<20170619203933.GA910@openwall.com>" "<20170620132204.GA6240@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 20084 invoked by uid 550); 21 Jun 2017 21:30:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19653 invoked from network); 21 Jun 2017 21:28:57 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=qualys.com; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=T2qzks5wS7oGwcHsAS6vQJiSRD5ihiGslcS1yLeyfCM=;
        b=Z5x3VXifbWA+Xh5c26Aw7r6SRuzL9KBySoRPiVe+Iv7OXGR8SapvdPAj+E1uNgS4/A
         Hb/ZaJ4o7eoGsG+W9IDxS5uYQ+Y9uEJnwY1sKjCRgfVb06btMPxsJ//D1Cn1ZnOulbOC
         ptKgJet5B3Q3uwgUgOC2yButd+wGJ4D7E8UzmUZ2kgxzS0ojicsNTCCPfIpdzzFc7fBm
         oepVkXq54XKp7GSRksHSNgIl2o25gboIkhyQHNBQaX88b8rjyXqFVvEq9tya0oNl9s1K
         TtHFWpVUkZ6DAQmnW1xHsvsWjjuj2sedRYE8F3JO4BfWaKJD/bB0ESVp+B4ndVLybtin
         Bk3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=T2qzks5wS7oGwcHsAS6vQJiSRD5ihiGslcS1yLeyfCM=;
        b=S6TLt9EOtTEcjJJIUetgtwZrQUVe6ZnG1gyz5V+RPL4CDe2nfuCeDhZUQoxRNtjf5v
         rvN4am+bbVyOKemiTyEKE0EQxW5h/OfmcwzxwXtm+vu/DGD2HyhQsuGIsXL/EQztxvA/
         975OhuC2+t4Fh3N58QFRocJ/hZBDfFXzytrLlLq1+KTjb3NYh7RungHxF2ricS84gRz9
         /KP25tBXaydq01355v0hjyrDTyjI47lPQ/Gipe7UuZavJrXvAY1agfr7u4TugWzZ/X/j
         IpmvOP3tsvLMJB8ryfilgYu+b/mHEz3NJuwskiFEJZl1zr+g1hhjmrbNEAY3K/d7HYe1
         RAyA==
X-Gm-Message-State: AKS2vOwF0+xUJAH+mXBM/to52TnquatjFYPUiZUh2rXS78JtIXOQnypB
	eIo1XFEECRfR9TYP
X-Received: by 10.99.154.18 with SMTP id o18mr38840193pge.251.1498080525156;
        Wed, 21 Jun 2017 14:28:45 -0700 (PDT)
Message-ID: <20170621212835.GA28151@localhost.localdomain>
References: <20170619152843.GC7769@localhost.localdomain>
 <2a53a138-8f6b-133d-72b2-6dfd5355241a@redhat.com>
 <20170619203933.GA910@openwall.com>
 <20170620132204.GA6240@openwall.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170620132204.GA6240@openwall.com>
Cc: oss-security@lists.openwall.com
Date: Wed, 21 Jun 2017 14:28:35 -0700
From: Qualys Security Advisory <qsa@qualys.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Qualys Security Advisory - The Stack Clash
To: Solar Designer <solar@openwall.com>

Hi Solar, all,

On Tue, Jun 20, 2017 at 03:22:04PM +0200, Solar Designer wrote:
> Qualys, I suggest that, like you did with the Sudo exploit, you publish
> your Stack Clash exploits in here as soon as third-party exploits of
> comparable functionality appear, or next Tuesday, whichever is earlier.

We have discussed this internally, and we will first publish the Stack
Clash exploits and proofs-of-concepts that we sent to the distros@ and
linux-distros@ lists, plus our Linux ld.so exploit for amd64, and our
Solaris rsh exploit.

We will do so next Tuesday, but we will publish our Linux exploits and
proofs-of-concept if and only if Fedora updates are ready by then, our
NetBSD proof-of-concept if and only if NetBSD patches are ready by then,
and our FreeBSD proofs-of-concept if and only if FreeBSD patches are
ready by then.

If someone happens to know of another major distribution that has not
published patches and updates yet, please let us all know by replying
here to oss-security. Thank you very much!

With best regards,

-- 
the Qualys Security Advisory team
