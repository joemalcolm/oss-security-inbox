X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2328" "Sunday" "10" "January" "2016" "15:24:05" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20160110142405.GA11741@eldamar.local>" "54" "[oss-security] Re: CVE Request: netfilter-persistent: (local) information leak due to world-readable rules files" nil nil nil "1" "2016011014:24:05" "[oss-security] Re: CVE Request: netfilter-persistent: (local) information leak due to world-readable rules files" (number mark "U       carnil@debia Jan 10   54/2328  " thread-indent "\"[oss-security] Re: CVE Request: netfilter-persistent: (local) information leak due to world-readable rules files\"\n") "<20160108005424.5F00C6C005A@smtpvmsrv1.mitre.org>" ("<20160105101345.GA13653@lorien.valinor.li>" "<20160108005424.5F00C6C005A@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11717 invoked by uid 550); 10 Jan 2016 14:24:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11699 invoked from network); 10 Jan 2016 14:24:20 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=OHZ3XXuUDpPFQIF5ZPAm07kuRlZP248kGiX0ybshDws=;
        b=1ARJbM2JPQdyi7Ns0rFmpmGGa9a5NuIxn3Q2Pb8+Z7MyvXgE1L+F9RL2cgR2dYW6LJ
         ZQlpRdYIJuwdoxRNHXdTu35MfpOcet3hurDqxEAuc4h/76zx6dtdITOgdlcxObwHjb8B
         tYwjb6gU8x+9rarV1AWHuwHXtlTHxAqLbh2ClXxut2ix+e5PRCvI1FRWyWG2p4gN2tVk
         J/Ak/jqv5GZzsxo/Uoa3C2KShElmcgpgj31h89ss/fSWTs6zXGSwe/6CN+vkuli9xtZ7
         4TZTTHYrAyqLzPn/5jQT3x/O7vXFRSlJJ9QiKVJ1tpso5+a0OKy6VAMH5nMBqLZx0X+/
         4djQ==
X-Received: by 10.194.209.129 with SMTP id mm1mr94232664wjc.47.1452435848538;
        Sun, 10 Jan 2016 06:24:08 -0800 (PST)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Sun, 10 Jan 2016 15:24:05 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: cve-assign@mitre.org
Cc: oss-security@lists.openwall.com
Message-ID: <20160110142405.GA11741@eldamar.local>
References: <20160105101345.GA13653@lorien.valinor.li>
 <20160108005424.5F00C6C005A@smtpvmsrv1.mitre.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160108005424.5F00C6C005A@smtpvmsrv1.mitre.org>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: [oss-security] Re: CVE Request: netfilter-persistent: (local) information leak due
 to world-readable rules files

Hi!

Thanks for your reply, really appreciated that you took time to review
the request.

On Thu, Jan 07, 2016 at 07:54:24PM -0500, cve-assign@mitre.org wrote:
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA256
> 
> > iptables-persistent (in Debian) is a loader for netfilter configuration
> > using a plugin-based architecture.
> > 
> > iptables-persistent is vulnerable to a (local) information leak due to
> > world-readable rules files. It was reported in Debian in
> > 
> > https://bugs.debian.org/764645
> > 
> > And fixed via
> > 
> > https://anonscm.debian.org/cgit/collab-maint/iptables-persistent.git/commit/?id=37905034f07e94c4298a1762b39b7bbd4063c0df
> 
> Do you have any further information about why this should be
> considered a vulnerability in general? We realize that it might, at
> least, be considered a vulnerability for Debian systems because of
> "Tags: security" in the original report.
> 
> For example, is there a specific piece of data in the files that is
> always supposed to be private?
> 
> https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=764645#5 indicates
> that an unprivileged user can obtain information by directly opening
> the files, but cannot obtain this information with an
> "/sbin/iptables -L" command. This does not, by itself, establish that
> a security feature has been defeated. It is possible that it was
> simply inconvenient to implement the -L option in a way that provided
> access to unprivileged users.
> 
> What we are trying to avoid is a situation in which CVE IDs are
> assigned solely because a system administrator might not want files to
> be readable by unprivileged users. For example, maybe someone would
> prefer stricter /etc/hosts.allow permissions to prevent rogue local
> users from discovering the names of other hosts that possibly have
> symmetric "allow" policies.

I can follow the reasoning. I agree that it might be borderline to
actually request a CVE for this issue. The situation which I had in
mind is a multi-user system, where the administrator has set some
iptables rules up, and the regular users of the system should not
know about how they are set up. If the admin uses iptables-persistent
from Debian these set rules (restored after boot) are disclosed though
to the users via the files /etc/iptables/rules.{v4,v6}.

Regards,
Salvatore
