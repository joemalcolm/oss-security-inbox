X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3706" "Tuesday" "4" "April" "2017" "08:05:19" "-0400" "Vladis Dronov" "vdronov@redhat.com" "<845680427.10758757.1491307519668.JavaMail.zimbra@redhat.com>" "86" "Re: [oss-security] CVE-2017-7184: kernel: Local privilege escalation in XFRM framework" nil nil nil "4" "2017040412:05:19" "[oss-security] CVE-2017-7184: kernel: Local privilege escalation in XFRM framework" (number mark "U       vdronov@redh Apr  4   86/3706  " thread-indent "\"Re: [oss-security] CVE-2017-7184: kernel: Local privilege escalation in XFRM framework\"\n") "<20170401203314.GA12852@openwall.com>" ("<f7bff499-47e8-c5f2-e867-eb7f7bf329d8@canonical.com>" "<20170401182736.GA12311@openwall.com>" "<20170401203314.GA12852@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30248 invoked by uid 550); 4 Apr 2017 12:05:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30210 invoked from network); 4 Apr 2017 12:05:32 -0000
DMARC-Filter: OpenDMARC Filter v1.3.2 mx1.redhat.com 1173C51EF2
Authentication-Results: ext-mx06.extmail.prod.ext.phx2.redhat.com; dmarc=none (p=none dis=none) header.from=redhat.com
Authentication-Results: ext-mx06.extmail.prod.ext.phx2.redhat.com; spf=pass smtp.mailfrom=vdronov@redhat.com
DKIM-Filter: OpenDKIM Filter v2.11.0 mx1.redhat.com 1173C51EF2
Date: Tue, 4 Apr 2017 08:05:19 -0400 (EDT)
From: Vladis Dronov <vdronov@redhat.com>
To: Solar Designer <solar@openwall.com>
Cc: oss-security@lists.openwall.com
Message-ID: <845680427.10758757.1491307519668.JavaMail.zimbra@redhat.com>
In-Reply-To: <20170401203314.GA12852@openwall.com>
References: <f7bff499-47e8-c5f2-e867-eb7f7bf329d8@canonical.com> <20170401182736.GA12311@openwall.com> <20170401203314.GA12852@openwall.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.40.1.12]
Thread-Topic: CVE-2017-7184: kernel: Local privilege escalation in XFRM framework
Thread-Index: MOcba7yC2WHCJu6BVuRmUUQR4PDUyw==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.30]); Tue, 04 Apr 2017 12:05:20 +0000 (UTC)
Subject: Re: [oss-security] CVE-2017-7184: kernel: Local privilege
 escalation in XFRM framework

Hello, Alexander,

Indeed you are right, RHEL-5,6 are invulnerable to this XFRM bug.

This was an incorrect analysis on our side. Thank you much for
raising this. We are changing the vulnerability statement in this
bugzilla bz1435153 and in the CVE description.

As for unprivileged user namespaces, they were considered too
insecure up to and including RHEL-7.3 to be enabled by default.
There are plans to enable them (by sysctl parameter) in RHEL-7.4.

Best regards,
Vladis Dronov | Red Hat, Inc. | Product Security Engineer

----- Original Message -----
From: "Solar Designer" <solar@openwall.com>
To: oss-security@lists.openwall.com
Sent: Saturday, April 1, 2017 10:33:15 PM
Subject: Re: [oss-security] CVE-2017-7184: kernel: Local privilege escalation in XFRM framework

On Sat, Apr 01, 2017 at 08:27:36PM +0200, Solar Designer wrote:
> I address this message primarily to Red Hat, but I'd like us to discuss
> it in public so that others can benefit from this information as well.
> 
> On Wed, Mar 29, 2017 at 04:43:28PM -0500, Tyler Hicks wrote:
> > A security issue was reported by ZDI, on behalf of Chaitin Security
> > Research Lab, against the Linux kernel in Ubuntu. It also affected the
> > upstream kernel.
> > 
> > Chaitin Security Research Lab discovered that xfrm_replay_verify_len(),
> > as called by xfrm_new_ae(), did not verify that the user-specified
> > replay_window was within the replay state buffer.
> > 
> > This allowed for out-of-bounds reads and writes of kernel memory.
> > Chaitin Security showed that this can lead to local privilege escalation
> > by using user namespaces in order to configure XFRM. XFRM configuration
> > requires CAP_NET_ADMIN so this issue is mitigated in kernels which do
> > not enable user namespaces by default.
> > 
> > Fixes:
> > - https://git.kernel.org/linus/677e806da4d916052585301785d847c3b3e6186a
> > - https://git.kernel.org/linus/f843ee6dd019bcece3e74e76ad9df0155655d0df
> 
> Red Hat claims that all of RHEL5, RHEL6, and RHEL7 are affected,
> although the issue is mitigated by it requiring CAP_NET_ADMIN and/or
> unprivileged user namespaces, neither of which are available by default:
> 
> https://access.redhat.com/security/cve/cve-2017-7184

Bugzilla, including the same statement in a comment, but without
explanation on how this statement was arrived at:

https://bugzilla.redhat.com/show_bug.cgi?id=1435153

> RHEL7 does indeed contain the vulnerable upstream code, but RHEL5 and
> RHEL6 don't - at least not the same code that the commits referenced
> above patch.  This leaves me with two other interpretations of Red Hat's
> analysis:
> 
> 1. Similar issues existed for other inputs (not ESN) and were silently
> fixed some time between RHEL6 and RHEL7 (perhaps in equivalent upstream
> revisions).  Maybe with the current renewed attention, Red Hat realized
> that older fixes were missed, which are now finally understood as
> security-relevant.  The code does look to me like this may be the case,
> but I didn't spend much time on its analysis yet.
> 
> -OR-
> 
> 2. Red Hat's analysis is not correct, and RHEL5 and RHEL6 are not
> affected at all.
> 
> Which is it, or something else I haven't thought of?
> 
> While for RHEL itself this is almost a non-issue either way due to the
> mitigations mentioned above, better understanding is required for other
> distros where such mitigations might not fully apply (such as along with
> use of containers, where container root would have CAP_NET_ADMIN).
> 
> And while I am at it, kudos to Red Hat for patching out unprivileged
> user namespaces in RHEL7!
> 
> /* While user namespaces remain in tech preview disable them */
> static bool enable_user_ns_creation;

Alexander
