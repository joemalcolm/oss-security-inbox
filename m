X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["8750" "Wednesday" "12" "August" "2015" "12:24:31" "-0400" "sophia" "sophia@trailofbits.com" "<E8AE9E00-F8B6-4823-B494-04138227F312@trailofbits.com>" "184" "Re: [oss-security] CVE request - Processor side channels using out of order execution" nil nil nil "8" "2015081216:24:31" "[oss-security] CVE request - Processor side channels using out of order execution" (number mark "        sophia@trail Aug 12  184/8750  " thread-indent "\"Re: [oss-security] CVE request - Processor side channels using out of order execution\"\n") "<20150812141846.GA8647@openwall.com>" ("<9BA73C86-0475-4DBD-937E-AD20DD41C622@trailofbits.com>" "<20150812141846.GA8647@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19826 invoked by uid 550); 12 Aug 2015 16:24:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19803 invoked from network); 12 Aug 2015 16:24:45 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=trailofbits.com; s=trailofbits;
        h=content-type:mime-version:subject:from:in-reply-to:date:message-id
         :references:to;
        bh=vDEBeF+ftRBce+55V/belhsAkdgV/GX1dsWynrpQ0eE=;
        b=VoTVQAd9i7ogzbWTeVhXTNWbOJtWCQ6nnAaVlr1MWPXDhR19WPpgThRuWObfSJKVsq
         w0HOwZTCaIudsOEp+6jh9OpavK3D1z9LOfIjwTGla9/DDmHnr0+5QYyFYeius2CdyCyH
         Spp2/j9M+MpWzCyhord+LraxZyNewOAThO8Do=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:content-type:mime-version:subject:from
         :in-reply-to:date:message-id:references:to;
        bh=vDEBeF+ftRBce+55V/belhsAkdgV/GX1dsWynrpQ0eE=;
        b=ABA81lC/GU4Uum88SRM3ww0sz8j4AwXJhVmPBiV9XTxX0dEfCr6uN/8NkwWIFxlmjT
         Oygtvft/dr0YlPMlWUKmS/quKgSj9jZKkcDO2GOrJEdA/jYiLG9iYeZ9Eomhln20iPhp
         PZRbSZPWGzoxsKKwS8TCM5Yq1P4NyHYRsaEh5EHvPNSMi00ZPJ5pvCcdQ4BVcT+Ynfoh
         xKIx5IbAvhON1anm9wxAl3krw3aKC5mRicGlR0PompGeApw6ZRbCbd51RxTh1XhA8jJP
         wHM70LuOTCg4X+UIzRjhseO/dDmaD6UIV3Qp1fGuK3c2mD9wthn6Sif483G8PcaLRAML
         TVjA==
X-Gm-Message-State: ALoCoQkC6IXWuhChHDMfXtm0/w0WotNE4llw+YGFmTO4yLt5omuEJyY7CyVrafhxKnYEv2uTAFil
X-Received: by 10.13.236.78 with SMTP id v75mr17270370ywe.20.1439396673295;
        Wed, 12 Aug 2015 09:24:33 -0700 (PDT)
Content-Type: multipart/signed; boundary="Apple-Mail=_E7A1342E-29E6-4B6B-8F13-50B7A4BF5527"; protocol="application/pgp-signature"; micalg=pgp-sha512
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2102\))
X-Pgp-Agent: GPGMail 2.5
In-Reply-To: <20150812141846.GA8647@openwall.com>
Message-Id: <E8AE9E00-F8B6-4823-B494-04138227F312@trailofbits.com>
References: <9BA73C86-0475-4DBD-937E-AD20DD41C622@trailofbits.com> <20150812141846.GA8647@openwall.com>
X-Mailer: Apple Mail (2.2102)
Date: Wed, 12 Aug 2015 12:24:31 -0400
From: sophia <sophia@trailofbits.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE request - Processor side channels using out of order execution
To: oss-security@lists.openwall.com

--Apple-Mail=_E7A1342E-29E6-4B6B-8F13-50B7A4BF5527
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi Alexander,

Thanks for taking the time to read into this. I agree that attack types 2-7=
 are not limited to my technique. However, depending on the software there =
may be different mitigations for my attack and I believe they should be tra=
cked separately.

The vulnerability definitely applies to hypervisors as used by popular comm=
ercial cloud platforms. These hypervisors try to guarantee that one user's =
processes in a VM are meant to be isolated from another VM's. Isolation is =
referenced as a feature multiple times in Xen's spec: http://www-archive.xe=
nproject.org/files/Marketing/WhyXen.pdf.

You are correct in saying the novelty is the avenue which the side channel =
is measured: over the pipeline's instruction reordering rather than over ti=
ming in the cache. This means that defensive techniques which mitigate cach=
e timing attacks (such as partitioning the cache so lines are not shared, e=
tc..) may not protect against this one.

It's possible to write a program that leak information via pipeline side ch=
annels but not to cache timing side channels. For example, a program that r=
eorders two pairs of loads and stores will have no measurable cache timing =
difference, but will be measurable via the pipeline.

Also, I will release all of my code on my website when I get back to my ser=
ver later today.

Thanks for the discussion,

Sophia



> On Aug 12, 2015, at 10:18 AM, Solar Designer <solar@openwall.com> wrote:
>=20
> Hi Sophia,
>=20
> On Tue, Aug 11, 2015 at 09:35:26PM -0400, sophia wrote:
>> Past discussion of this includes: http://www.openwall.com/lists/oss-secu=
rity/2015/08/11/16
>>=20
>> Details of attack:
>> https://blog.trailofbits.com/2015/07/21/hardware-side-channels-in-the-cl=
oud/
> [...]
>> Brief Description:
>> Simultaneous multi-threading on current processors allows for one proces=
s to exploit out-of-order execution optimizations to leak information from =
co-executed processes. Conversely, this same setup allows for one process t=
o force an increase or a decrease in out-of-order-execution optimizations i=
n the other process, thereby effecting its computed values and control flow.
>=20
> First of all, this is fine work.  Thank you for spending your time on it.
>=20
> Then, can we try to summarize what the novelty in your research is?
>=20
> Here's my take at it: the novelty is primarily in use of other than
> direct timing measurements on the receiving or attacker end (instead,
> you observe memory reordering, even though it's also dependent on
> timings internally), and secondarily in targeting out-of-order execution
> rather than caching.  (Yet another thing to target, and one I considered
> and briefly played with on P4 with HT in 2005 when I saw Colin
> Percival's paper, would be utilization of different execution units
> within a core, which is measurable from another hardware thread running
> on the same core.  Surprisingly, I am still unaware of published
> research on that.)
>=20
> That's great.  However, to figure out whether this poses a new
> vulnerability (rather than "merely" a novel exploitation technique for
> what were already considered vulnerabilities), we may want to determine
> whether there (might) exist programs that are vulnerable to your attacks
> yet invulnerable to previously known attacks.  Do these exist, and what
> are they (or what would they be like)?
>=20
> Of the 7 attack types you listed in your thesis, 2 through 7 don't
> appear to be limited to your novel attack technique.  They are also
> do-able by cache timings on the same hardware.  Do you agree?  Also,
> for most systems the ability to deliberately construct a covert channel
> between two processes or VMs isn't considered a vulnerability.  The
> system designers would need to specifically claim to prevent covert
> channels in order for this to become a vulnerability.
>=20
> As to attack type 1, cryptographic key theft, I'd be interested in more
> detail on it.  Am I correct that this attack relies on the victim
> program doing secret-dependent branching or at least secret-dependent
> indexing (in the latter case, out-of-order execution might be affected
> by caching and by cache bank conflicts)?  If so, that same program
> might be susceptible to a cache timing attack on its instruction fetches
> (as well as execution unit utilization attack, but like I mentioned this
> is surprisingly lacking published research), and in the latter case also
> to the classic cache timing attack.  Now, "might be" is not same as
> "always is", so there might be cases where your attack is the only known
> one that works.  (For example, I think secret-dependent branching within
> one cache line _might_ be unrealistic to attack as such, but might be
> exploitable via its effect on out-of-order execution and memory
> reordering, or via execution unit utilization.)
>=20
> Do I understand correctly that for attack type 1, there should be at
> least 3 concurrent threads: the victim and two attacker threads (these
> two would be performing reorder-"unsafe" memory operations between
> themselves)?  And that at least the victim and one of the attacker
> threads would need to be scheduled onto the same core (as different
> hardware threads)?
>=20
> Would you release the code, please?  So far, I only saw your receiver.py
> and sender.py, which look like high-level wrappers for a demo, but lack
> the substance.
>=20
> Another aspect is whether "the issue" (the focus of your research) is
> realistically fixable as a vulnerability anywhere.  I don't care about
> CVEs much (and we'll see what MITRE says on this), but FWIW Colin
> Percival's 2005 work did receive a CVE ID:
>=20
> http://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2005-0109
>=20
> and there were a handful of security advisories, such as:
>=20
> https://www.freebsd.org/security/advisories/FreeBSD-SA-05:09.htt.asc
>=20
> At the time, only the workaround of disabling HT was suggested, but e.g.
> the FreeBSD advisory also said:
>=20
> "NOTE:  It is expected that future work in cryptographic libraries and
> operating system schedulers may remedy this problem for many or most
> users, without necessitating the disabling of Hyper-Threading
> Technology.  Future advisories will address individual cases."
>=20
> and we've since seen such work (changes to crypto libraries and
> programs are practical and already deployed, but changes to schedulers
> appear to be more recent and only academic - granting temporary
> exclusive use of CPU cores to programs processing sensitive data).
>=20
> When a particular crypto library or program was found to be vulnerable
> to cache timing side-channels, this was generally treated as a separate
> vulnerability (and getting its own CVE ID).
>=20
> I guess there's probably a 100% overlap between vulnerabilities that
> would be treated as potentially susceptible to cache timing and to
> out-of-order / memory reordering attacks, even if in practice the
> likelihood of exploitation via these methods might vary drastically.
> (This guess is based on my current understanding as described above.)
>=20
> Finally, arguably, systems with any shared resources are knowingly
> taking a performance/$ vs. security tradeoff.  It is very important for
> us to have an idea just how bad (or not) the security impact is in
> practice, so your research is a step in the right direction.
>=20
> Thanks again for working on this.
>=20
> Alexander


--Apple-Mail=_E7A1342E-29E6-4B6B-8F13-50B7A4BF5527
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iQIcBAEBCgAGBQJVy3M/AAoJEF9VyT80G3JxAsQQAL9GUzOeEDgi75iz4IVm1sYI
UnXyIRBXGN0pDQ6sPyM5wmvp65xOUPafxb9eiVclW2KzMCtyK7L6GqDEQJu7hSiI
1Q+/0wvV2CoL3+N5blzpfaUJF+oG8+0pGPn7IiNsNup4McQxo1IcPh2NzKKrqmwW
GF5PGr87jkO2Ggi5v/85YcwZs5Gt9cR7ZJ7Z5DtzObfSybxWmyCgo+xvWPweeUel
pHRsQnL9eT7lCuVMbr+BYPSi+PHEQzTNh9MoJKrIcr0KDPe/+TZB7/5iEmVQ1Zg6
xGtw4Sn0qGcMEtnw9Pps/JO7151oNj2m43MigWNl9GFRmcRTU4u/hyhJaSVqjcTr
eoIN8uEfX8ys03CPTqFyTT1m12hIXWvDqWxA8QTxzhBTLksJ57lq2MtlTRjmWJY9
6TuZmHdB5Q8dZYd5jQBLlZuXZ62E8FKj/J5XQlHO8Fg6KdyF5ECO0mT082gc3CHQ
g7wP3R36ulfwU9reZAFVZ58A11226vZT4EqcB8qCEGhNi/9C3BkUZbuQ0iJ1LzxK
878nNUnaDTFVKmccDO8j206ZcfyXKhl3HjRV38oCY8Zr/jd0N/wKcMkIHIN+x57u
rOkcuEaLYmFYtzY4NQwVrBPDgMZTURiz5aHeo0VWEavIJ1ehhCggrnv9E7VwoBJv
/+FAj69tQvaH5bDe4N/i
=S7/a
-----END PGP SIGNATURE-----

--Apple-Mail=_E7A1342E-29E6-4B6B-8F13-50B7A4BF5527--
