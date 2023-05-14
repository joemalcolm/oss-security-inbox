Received: (qmail 11645 invoked by uid 550); 14 May 2023 20:26:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 10111 invoked from network); 14 May 2023 20:24:34 -0000
Date: Sun, 14 May 2023 22:24:09 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20230514202409.GA17111@openwall.com>
References: <17f7ebb7-22ee-e68f-02ac-8e2740e7f015@canonical.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <17f7ebb7-22ee-e68f-02ac-8e2740e7f015@canonical.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] Clarification on embargoed testing in a partner cloud

Hi Marc,

Thank you for bringing this up.  I'll share my current thoughts below.
I do not have a conclusion nor a decision yet, but I hope we'll arrive
at one in further discussion.

On Thu, May 11, 2023 at 07:36:44AM -0400, Marc Deslauriers wrote:
> The Ubuntu security team shares and obtains information about embargoed 
> issues from the distros and linux-distros mailing lists.
> 
> One of our large cloud partners has asked the Ubuntu security team to do 
> automated testing of embargoed security updates on their public cloud 
> before the CRD. While technically we would not be directly sharing details 
> of embargoed issues with them as the tests will be run under accounts owned 
> by the Ubuntu security team, they will be run on their infrastructure. As 
> such, this may hinder our ability to conduct a comprehensive internal 
> investigation of any leak that may occur.
> 
> I'm not exactly sure how this scenario fits within the policy of these 
> lists, and would like to validate before we go ahead. ( Policy can be found 
> here: https://oss-security.openwall.org/wiki/mailing-lists/distros )
> 
> Would testing embargoed updates obtained from the distros and linux-distros 
> lists on an external cloud infrastructure violate the terms of those 
> mailing lists?

I think this is a gray area.  The policy talks about not sharing beyond
the need-to-know for getting the issue fixed for your distro's users.
It also talks about not delivering or deploying.  However, usage of
cloud resources under the distro's accounts is not exactly sharing, and
testing in the target environment is relevant to getting the issue fixed
for the distro's users.

Sure this adds risks.  However, realistically we probably already do
have distros on the list that use a public cloud for some processing of
embargoed information.  At least Amazon Linux probably uses AWS -
probably dedicated instances with no other concurrent VMs on the same
hardware, but still.  (I am just guessing here.  Maybe it's more
separated from the public cloud.)

Also, some use third-party e-mail servers, e.g. domains pointing to
Gmail MX'es.  While mail relayed by (linux-)distros arrives encrypted
(except for headers), I doubt all other e-mail communication within the
distros' teams is - and if it is not, then they rely on a similar
security and legal boundary already (the distro's accounts with a
third-party provider).  If we don't consider sending e-mail through
Google servers as sharing with Google, then I guess usage of Google's
cloud is not sharing either.

Thus, it could be inconsistent to say that, no, Ubuntu cannot test in
the cloud while some other distros might be exposing the information to
similar cloud risks.  It would be wrong to penalize Ubuntu for asking.

Another angle is: what's the motivation for testing in the cloud?
I guess it's about compatibility with the cloud environment
(hypervisor?), so it is perhaps most relevant to testing of updates to
low-level components - especially the Linux kernel?  Well, we've granted
an exception allowing public commits of Linux kernel security fixes.
Can we at the same time reasonably object to testing of a distro's Linux
kernel updates under a public cloud account (thus, with more limited
exposure than the public commits have)?  Well, kind of yes since updates
can be more revealing than the public fixes - updates typically do
mention security relevance in change logs.  Also, this exception is made
use of only for a subset of Linux kernel issues handled on
linux-distros, not for all.

That said, maybe exposure of testing in the public cloud can be reduced
by only doing such testing for low-level packages, not for typical
userland packages that are not expected to be affected by whether they
run on Ubuntu's own servers and VMs vs. the cloud?

Yet another angle is where linux-distros itself is to be hosted.  So
far, I insist on non-cloud hosting.  Arguably, allowing for processing
of embargoed information in the cloud by the member distros is a reason
for me to give in and accept a cloud hosting offer.  OTOH, a distro's
usage of the cloud exposes somewhat different information to the risks
than the list's hosting would.  Only issues being handled by that distro
rather than all, sometimes only in processed form rather than original
(e.g., binary update packages vs. list messages), with some delay rather
than immediately, and no exposure of the list's long-term private key.

> Would testing embargoed updates on an external cloud 
> infrastructure be contrary to the expectations of the vendors posting 
> embargoed issues to those lists?

Not only "vendors" post embargoed issues to those lists.  I think we
shouldn't violate any sender's reasonable expectations.  That said,
vendor postings are an interesting subset.  Maybe other distro vendors
can comment on this, please?  Marcus from SUSE has already commented
(thanks!), but I think not yet on this specific aspect.

Alexander
