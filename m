X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["7820" "Wednesday" "19" "August" "2015" "16:29:19" "-0400" "sophia" "sophia@trailofbits.com" "<E7604F6D-D738-4D0A-B29F-B3916B03792E@trailofbits.com>" "162" "Re: [oss-security] CVE request - Processor side channels using out of order execution" nil nil nil "8" "2015081920:29:19" "[oss-security] CVE request - Processor side channels using out of order execution" (number mark "        sophia@trail Aug 19  162/7820  " thread-indent "\"Re: [oss-security] CVE request - Processor side channels using out of order execution\"\n") "<E8AE9E00-F8B6-4823-B494-04138227F312@trailofbits.com>" ("<9BA73C86-0475-4DBD-937E-AD20DD41C622@trailofbits.com>" "<20150812141846.GA8647@openwall.com>" "<E8AE9E00-F8B6-4823-B494-04138227F312@trailofbits.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5756 invoked by uid 550); 19 Aug 2015 20:29:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5733 invoked from network); 19 Aug 2015 20:29:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=trailofbits.com; s=trailofbits;
        h=content-type:mime-version:subject:from:in-reply-to:date
         :content-transfer-encoding:message-id:references:to;
        bh=j8ei3Z/ZgntAlxuUwZuCT21AeZ7cjmYBYQTOgsz1iZo=;
        b=o3T99VwfNYPhPXEoKbow+cibNEfZ/PwKEexpVTb9MgS3RwLhTnWAUrhsn31P7AXw9Y
         oA8M8fgQibKZIepFBnS89IQ7HAWPibBsqC5brQ3KbR3E6klz+rdUzwLsBs9oMDKN72HG
         X5xqR+xlHnPEyN4Pg5hvF0rMfoTsMRhsM/UeI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:content-type:mime-version:subject:from
         :in-reply-to:date:content-transfer-encoding:message-id:references:to;
        bh=j8ei3Z/ZgntAlxuUwZuCT21AeZ7cjmYBYQTOgsz1iZo=;
        b=UKwmcR1AEWkDSX3YScQoXF9L+lVLVU5bCGJQtoSv5pxttE/aFQN3TaiC1fAxxT70+/
         xmMRyOpsvTPGBtYqzZyQ1Z7WyizabhuE0z0M/c9oUvh8+hnsmBVtjqmFdeT74mPpTLaA
         +3uPLfo76gyTJD0CzNFU5ilEqvtuuTCqvim2G9a3TEPillLtiQA+Pk3TKDDqlaqlUpCo
         VWow8ERXqqeysnzdbcKrnJG8112b4TX/+s6CqnUYXPwBE6xf1Suj5qD1pb1pXXnzoctW
         /tmHUaIbtME7P1kWvKaoHOpqPHxrORsO5irEcSmPtjZTnLosbZLsUo4i5W7MUb6X0WWj
         cjJQ==
X-Gm-Message-State: ALoCoQnMz0TfRxfmVXaFPQ6Mqn/G6+GFhW7I6TR08MkU0HohJ12BUEb9/ywyYpD4THNy36KK6wax
X-Received: by 10.140.151.6 with SMTP id 6mr27907587qhx.53.1440016164597;
        Wed, 19 Aug 2015 13:29:24 -0700 (PDT)
Content-Type: text/plain; charset=us-ascii
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2102\))
In-Reply-To: <E8AE9E00-F8B6-4823-B494-04138227F312@trailofbits.com>
Content-Transfer-Encoding: quoted-printable
Message-Id: <E7604F6D-D738-4D0A-B29F-B3916B03792E@trailofbits.com>
References: <9BA73C86-0475-4DBD-937E-AD20DD41C622@trailofbits.com> <20150812141846.GA8647@openwall.com> <E8AE9E00-F8B6-4823-B494-04138227F312@trailofbits.com>
X-Mailer: Apple Mail (2.2102)
Date: Wed, 19 Aug 2015 16:29:19 -0400
From: sophia <sophia@trailofbits.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE request - Processor side channels using out of order execution
To: oss-security@lists.openwall.com

Hi,

Just wondering how to get more information about the process for requesting=
 a CVE for this vulnerability.

Sophia

> On Aug 12, 2015, at 12:24 PM, sophia <sophia@trailofbits.com> wrote:
>=20
> Hi Alexander,
>=20
> Thanks for taking the time to read into this. I agree that attack types 2=
-7 are not limited to my technique. However, depending on the software ther=
e may be different mitigations for my attack and I believe they should be t=
racked separately.
>=20
> The vulnerability definitely applies to hypervisors as used by popular co=
mmercial cloud platforms. These hypervisors try to guarantee that one user'=
s processes in a VM are meant to be isolated from another VM's. Isolation i=
s referenced as a feature multiple times in Xen's spec: http://www-archive.=
xenproject.org/files/Marketing/WhyXen.pdf.
>=20
> You are correct in saying the novelty is the avenue which the side channe=
l is measured: over the pipeline's instruction reordering rather than over =
timing in the cache. This means that defensive techniques which mitigate ca=
che timing attacks (such as partitioning the cache so lines are not shared,=
 etc..) may not protect against this one.
>=20
> It's possible to write a program that leak information via pipeline side =
channels but not to cache timing side channels. For example, a program that=
 reorders two pairs of loads and stores will have no measurable cache timin=
g difference, but will be measurable via the pipeline.
>=20
> Also, I will release all of my code on my website when I get back to my s=
erver later today.
>=20
> Thanks for the discussion,
>=20
> Sophia
>=20
>=20
>=20
>> On Aug 12, 2015, at 10:18 AM, Solar Designer <solar@openwall.com> wrote:
>>=20
>> Hi Sophia,
>>=20
>> On Tue, Aug 11, 2015 at 09:35:26PM -0400, sophia wrote:
>>> Past discussion of this includes: http://www.openwall.com/lists/oss-sec=
urity/2015/08/11/16
>>>=20
>>> Details of attack:
>>> https://blog.trailofbits.com/2015/07/21/hardware-side-channels-in-the-c=
loud/
>> [...]
>>> Brief Description:
>>> Simultaneous multi-threading on current processors allows for one proce=
ss to exploit out-of-order execution optimizations to leak information from=
 co-executed processes. Conversely, this same setup allows for one process =
to force an increase or a decrease in out-of-order-execution optimizations =
in the other process, thereby effecting its computed values and control flo=
w.
>>=20
>> First of all, this is fine work.  Thank you for spending your time on it.
>>=20
>> Then, can we try to summarize what the novelty in your research is?
>>=20
>> Here's my take at it: the novelty is primarily in use of other than
>> direct timing measurements on the receiving or attacker end (instead,
>> you observe memory reordering, even though it's also dependent on
>> timings internally), and secondarily in targeting out-of-order execution
>> rather than caching.  (Yet another thing to target, and one I considered
>> and briefly played with on P4 with HT in 2005 when I saw Colin
>> Percival's paper, would be utilization of different execution units
>> within a core, which is measurable from another hardware thread running
>> on the same core.  Surprisingly, I am still unaware of published
>> research on that.)
>>=20
>> That's great.  However, to figure out whether this poses a new
>> vulnerability (rather than "merely" a novel exploitation technique for
>> what were already considered vulnerabilities), we may want to determine
>> whether there (might) exist programs that are vulnerable to your attacks
>> yet invulnerable to previously known attacks.  Do these exist, and what
>> are they (or what would they be like)?
>>=20
>> Of the 7 attack types you listed in your thesis, 2 through 7 don't
>> appear to be limited to your novel attack technique.  They are also
>> do-able by cache timings on the same hardware.  Do you agree?  Also,
>> for most systems the ability to deliberately construct a covert channel
>> between two processes or VMs isn't considered a vulnerability.  The
>> system designers would need to specifically claim to prevent covert
>> channels in order for this to become a vulnerability.
>>=20
>> As to attack type 1, cryptographic key theft, I'd be interested in more
>> detail on it.  Am I correct that this attack relies on the victim
>> program doing secret-dependent branching or at least secret-dependent
>> indexing (in the latter case, out-of-order execution might be affected
>> by caching and by cache bank conflicts)?  If so, that same program
>> might be susceptible to a cache timing attack on its instruction fetches
>> (as well as execution unit utilization attack, but like I mentioned this
>> is surprisingly lacking published research), and in the latter case also
>> to the classic cache timing attack.  Now, "might be" is not same as
>> "always is", so there might be cases where your attack is the only known
>> one that works.  (For example, I think secret-dependent branching within
>> one cache line _might_ be unrealistic to attack as such, but might be
>> exploitable via its effect on out-of-order execution and memory
>> reordering, or via execution unit utilization.)
>>=20
>> Do I understand correctly that for attack type 1, there should be at
>> least 3 concurrent threads: the victim and two attacker threads (these
>> two would be performing reorder-"unsafe" memory operations between
>> themselves)?  And that at least the victim and one of the attacker
>> threads would need to be scheduled onto the same core (as different
>> hardware threads)?
>>=20
>> Would you release the code, please?  So far, I only saw your receiver.py
>> and sender.py, which look like high-level wrappers for a demo, but lack
>> the substance.
>>=20
>> Another aspect is whether "the issue" (the focus of your research) is
>> realistically fixable as a vulnerability anywhere.  I don't care about
>> CVEs much (and we'll see what MITRE says on this), but FWIW Colin
>> Percival's 2005 work did receive a CVE ID:
>>=20
>> http://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2005-0109
>>=20
>> and there were a handful of security advisories, such as:
>>=20
>> https://www.freebsd.org/security/advisories/FreeBSD-SA-05:09.htt.asc
>>=20
>> At the time, only the workaround of disabling HT was suggested, but e.g.
>> the FreeBSD advisory also said:
>>=20
>> "NOTE:  It is expected that future work in cryptographic libraries and
>> operating system schedulers may remedy this problem for many or most
>> users, without necessitating the disabling of Hyper-Threading
>> Technology.  Future advisories will address individual cases."
>>=20
>> and we've since seen such work (changes to crypto libraries and
>> programs are practical and already deployed, but changes to schedulers
>> appear to be more recent and only academic - granting temporary
>> exclusive use of CPU cores to programs processing sensitive data).
>>=20
>> When a particular crypto library or program was found to be vulnerable
>> to cache timing side-channels, this was generally treated as a separate
>> vulnerability (and getting its own CVE ID).
>>=20
>> I guess there's probably a 100% overlap between vulnerabilities that
>> would be treated as potentially susceptible to cache timing and to
>> out-of-order / memory reordering attacks, even if in practice the
>> likelihood of exploitation via these methods might vary drastically.
>> (This guess is based on my current understanding as described above.)
>>=20
>> Finally, arguably, systems with any shared resources are knowingly
>> taking a performance/$ vs. security tradeoff.  It is very important for
>> us to have an idea just how bad (or not) the security impact is in
>> practice, so your research is a step in the right direction.
>>=20
>> Thanks again for working on this.
>>=20
>> Alexander
>=20

