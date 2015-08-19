X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["8517" "Wednesday" "19" "August" "2015" "14:40:50" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty0hAqSf+-42msK6p8vwt4F4AswSDbmjxw5ZeNSSFDMDsg@mail.gmail.com>" "187" "Re: [oss-security] CVE request - Processor side channels using out of order execution" nil nil nil "8" "2015081920:40:50" "[oss-security] CVE request - Processor side channels using out of order execution" (number mark "        kseifried@re Aug 19  187/8517  " thread-indent "\"Re: [oss-security] CVE request - Processor side channels using out of order execution\"\n") "<E7604F6D-D738-4D0A-B29F-B3916B03792E@trailofbits.com>" ("<9BA73C86-0475-4DBD-937E-AD20DD41C622@trailofbits.com>" "<20150812141846.GA8647@openwall.com>" "<E8AE9E00-F8B6-4823-B494-04138227F312@trailofbits.com>" "<E7604F6D-D738-4D0A-B29F-B3916B03792E@trailofbits.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 23944 invoked by uid 550); 19 Aug 2015 20:41:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23913 invoked from network); 19 Aug 2015 20:41:02 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:content-type;
        bh=C+cG9IoxWgCMk1ZpU22ma87T1qcXNg93wceIlX/T4cg=;
        b=iceg38nAL8/F78p/I8VKAIzU/JCa5WTzNrwi5OPNc/wW4NGfyQYqTmw1TXWGJwW1hC
         y5k6BozI2sZKA2EX0TcPSWUxUZkEa6PAcf+rwEp82lkaJwQDYFkusloBByVND9XwFVaf
         kPzXuspotPLdmBVYl6v11mq1FFk3BJYcc0jwTdwll6thSsR9pDqOwGnKa+/cFhs/1n21
         ZuwOYZlvb1d8aKbwSRKxc10Xq9k5LEjTgs7iK+l1jMiNhWOBUsrAdGbTFb8FEgKGlAZ4
         9XonrwoMtUxReI2U6hDBWt46b56rZ9us5goYQg1aAKI2gLqV8l82wSoAh9GZcPjv16CG
         cjxg==
X-Gm-Message-State: ALoCoQlePbXbV6VxYjt2Mc4oslFyN66H+/JHi8GtP/SrLchcA5+7SWsutFGF2dJXXcQZ3+UcRZDW
MIME-Version: 1.0
X-Received: by 10.129.115.3 with SMTP id o3mr15990158ywc.43.1440016850491;
 Wed, 19 Aug 2015 13:40:50 -0700 (PDT)
In-Reply-To: <E7604F6D-D738-4D0A-B29F-B3916B03792E@trailofbits.com>
References: <9BA73C86-0475-4DBD-937E-AD20DD41C622@trailofbits.com>
	<20150812141846.GA8647@openwall.com>
	<E8AE9E00-F8B6-4823-B494-04138227F312@trailofbits.com>
	<E7604F6D-D738-4D0A-B29F-B3916B03792E@trailofbits.com>
Message-ID: <CANO=Ty0hAqSf+-42msK6p8vwt4F4AswSDbmjxw5ZeNSSFDMDsg@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a11492c78d8560d051db00c46
Date: Wed, 19 Aug 2015 14:40:50 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE request - Processor side channels using out of
 order execution
To: oss-security <oss-security@lists.openwall.com>

--001a11492c78d8560d051db00c46
Content-Type: text/plain; charset=UTF-8

Asking oss-security is generally a correct way (mitre's cve assign reads
this list). For future reference please see:

https://github.com/RedHatProductSecurity/CVE-HOWTO



On Wed, Aug 19, 2015 at 2:29 PM, sophia <sophia@trailofbits.com> wrote:

> Hi,
>
> Just wondering how to get more information about the process for
> requesting a CVE for this vulnerability.
>
> Sophia
>
> > On Aug 12, 2015, at 12:24 PM, sophia <sophia@trailofbits.com> wrote:
> >
> > Hi Alexander,
> >
> > Thanks for taking the time to read into this. I agree that attack types
> 2-7 are not limited to my technique. However, depending on the software
> there may be different mitigations for my attack and I believe they should
> be tracked separately.
> >
> > The vulnerability definitely applies to hypervisors as used by popular
> commercial cloud platforms. These hypervisors try to guarantee that one
> user's processes in a VM are meant to be isolated from another VM's.
> Isolation is referenced as a feature multiple times in Xen's spec:
> http://www-archive.xenproject.org/files/Marketing/WhyXen.pdf.
> >
> > You are correct in saying the novelty is the avenue which the side
> channel is measured: over the pipeline's instruction reordering rather than
> over timing in the cache. This means that defensive techniques which
> mitigate cache timing attacks (such as partitioning the cache so lines are
> not shared, etc..) may not protect against this one.
> >
> > It's possible to write a program that leak information via pipeline side
> channels but not to cache timing side channels. For example, a program that
> reorders two pairs of loads and stores will have no measurable cache timing
> difference, but will be measurable via the pipeline.
> >
> > Also, I will release all of my code on my website when I get back to my
> server later today.
> >
> > Thanks for the discussion,
> >
> > Sophia
> >
> >
> >
> >> On Aug 12, 2015, at 10:18 AM, Solar Designer <solar@openwall.com>
> wrote:
> >>
> >> Hi Sophia,
> >>
> >> On Tue, Aug 11, 2015 at 09:35:26PM -0400, sophia wrote:
> >>> Past discussion of this includes:
> http://www.openwall.com/lists/oss-security/2015/08/11/16
> >>>
> >>> Details of attack:
> >>>
> https://blog.trailofbits.com/2015/07/21/hardware-side-channels-in-the-cloud/
> >> [...]
> >>> Brief Description:
> >>> Simultaneous multi-threading on current processors allows for one
> process to exploit out-of-order execution optimizations to leak information
> from co-executed processes. Conversely, this same setup allows for one
> process to force an increase or a decrease in out-of-order-execution
> optimizations in the other process, thereby effecting its computed values
> and control flow.
> >>
> >> First of all, this is fine work.  Thank you for spending your time on
> it.
> >>
> >> Then, can we try to summarize what the novelty in your research is?
> >>
> >> Here's my take at it: the novelty is primarily in use of other than
> >> direct timing measurements on the receiving or attacker end (instead,
> >> you observe memory reordering, even though it's also dependent on
> >> timings internally), and secondarily in targeting out-of-order execution
> >> rather than caching.  (Yet another thing to target, and one I considered
> >> and briefly played with on P4 with HT in 2005 when I saw Colin
> >> Percival's paper, would be utilization of different execution units
> >> within a core, which is measurable from another hardware thread running
> >> on the same core.  Surprisingly, I am still unaware of published
> >> research on that.)
> >>
> >> That's great.  However, to figure out whether this poses a new
> >> vulnerability (rather than "merely" a novel exploitation technique for
> >> what were already considered vulnerabilities), we may want to determine
> >> whether there (might) exist programs that are vulnerable to your attacks
> >> yet invulnerable to previously known attacks.  Do these exist, and what
> >> are they (or what would they be like)?
> >>
> >> Of the 7 attack types you listed in your thesis, 2 through 7 don't
> >> appear to be limited to your novel attack technique.  They are also
> >> do-able by cache timings on the same hardware.  Do you agree?  Also,
> >> for most systems the ability to deliberately construct a covert channel
> >> between two processes or VMs isn't considered a vulnerability.  The
> >> system designers would need to specifically claim to prevent covert
> >> channels in order for this to become a vulnerability.
> >>
> >> As to attack type 1, cryptographic key theft, I'd be interested in more
> >> detail on it.  Am I correct that this attack relies on the victim
> >> program doing secret-dependent branching or at least secret-dependent
> >> indexing (in the latter case, out-of-order execution might be affected
> >> by caching and by cache bank conflicts)?  If so, that same program
> >> might be susceptible to a cache timing attack on its instruction fetches
> >> (as well as execution unit utilization attack, but like I mentioned this
> >> is surprisingly lacking published research), and in the latter case also
> >> to the classic cache timing attack.  Now, "might be" is not same as
> >> "always is", so there might be cases where your attack is the only known
> >> one that works.  (For example, I think secret-dependent branching within
> >> one cache line _might_ be unrealistic to attack as such, but might be
> >> exploitable via its effect on out-of-order execution and memory
> >> reordering, or via execution unit utilization.)
> >>
> >> Do I understand correctly that for attack type 1, there should be at
> >> least 3 concurrent threads: the victim and two attacker threads (these
> >> two would be performing reorder-"unsafe" memory operations between
> >> themselves)?  And that at least the victim and one of the attacker
> >> threads would need to be scheduled onto the same core (as different
> >> hardware threads)?
> >>
> >> Would you release the code, please?  So far, I only saw your receiver.py
> >> and sender.py, which look like high-level wrappers for a demo, but lack
> >> the substance.
> >>
> >> Another aspect is whether "the issue" (the focus of your research) is
> >> realistically fixable as a vulnerability anywhere.  I don't care about
> >> CVEs much (and we'll see what MITRE says on this), but FWIW Colin
> >> Percival's 2005 work did receive a CVE ID:
> >>
> >> http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2005-0109
> >>
> >> and there were a handful of security advisories, such as:
> >>
> >> https://www.freebsd.org/security/advisories/FreeBSD-SA-05:09.htt.asc
> >>
> >> At the time, only the workaround of disabling HT was suggested, but e.g.
> >> the FreeBSD advisory also said:
> >>
> >> "NOTE:  It is expected that future work in cryptographic libraries and
> >> operating system schedulers may remedy this problem for many or most
> >> users, without necessitating the disabling of Hyper-Threading
> >> Technology.  Future advisories will address individual cases."
> >>
> >> and we've since seen such work (changes to crypto libraries and
> >> programs are practical and already deployed, but changes to schedulers
> >> appear to be more recent and only academic - granting temporary
> >> exclusive use of CPU cores to programs processing sensitive data).
> >>
> >> When a particular crypto library or program was found to be vulnerable
> >> to cache timing side-channels, this was generally treated as a separate
> >> vulnerability (and getting its own CVE ID).
> >>
> >> I guess there's probably a 100% overlap between vulnerabilities that
> >> would be treated as potentially susceptible to cache timing and to
> >> out-of-order / memory reordering attacks, even if in practice the
> >> likelihood of exploitation via these methods might vary drastically.
> >> (This guess is based on my current understanding as described above.)
> >>
> >> Finally, arguably, systems with any shared resources are knowingly
> >> taking a performance/$ vs. security tradeoff.  It is very important for
> >> us to have an idea just how bad (or not) the security impact is in
> >> practice, so your research is a step in the right direction.
> >>
> >> Thanks again for working on this.
> >>
> >> Alexander
> >
>
>


-- 

--
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--001a11492c78d8560d051db00c46--
