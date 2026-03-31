Received: (qmail 32685 invoked by uid 550); 31 Mar 2026 16:36:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 20148 invoked from network); 31 Mar 2026 12:03:11 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1774958580;
	bh=xMtEDxZldQVyple4JC7IxqlXzJrwjZOFN66KpAwTEoY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ETSsekGo5aVrRvd0ubeBxLoKO7e0bYXQi6o2vCYHGCiTIIxV25LhH+JC+9AQO2mYC
	 IsQWHv9JzxKGR9QNDci6jwhtqcKi8W8PCWGHY7Rt4aDZoTp25X0h6QQNYqk9Vl/20Z
	 DBGUxCfX3XDR7C0cy2P4ifT36QnxtIMHEknrEY+o=
Date: Tue, 31 Mar 2026 14:02:56 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: John Johansen <john.johansen@canonical.com>
Cc: Qualys Security Advisory <qsa@qualys.com>,
	"cve@kernel.org" <cve@kernel.org>,
	"oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Message-ID: <2026033146-geography-croak-4865@gregkh>
References: <20260312212345.GA2728@localhost.localdomain>
 <20260312213345.GA3105@localhost.localdomain>
 <20260326183559.GA22540@localhost.localdomain>
 <2026032744-resale-jeep-2d72@gregkh>
 <20260327145022.GA30102@localhost.localdomain>
 <2026032823-outspoken-haven-c701@gregkh>
 <f8de07b7-edc8-4ffb-ba71-612ad1e0ab80@canonical.com>
 <2026032950-chute-skinning-32dc@gregkh>
 <2856a7ec-f90f-4b74-b742-aaa15df179d7@canonical.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2856a7ec-f90f-4b74-b742-aaa15df179d7@canonical.com>
Subject: [oss-security] Re: Multiple vulnerabilities in AppArmor

On Tue, Mar 31, 2026 at 12:43:48AM -0700, John Johansen wrote:
> On 3/28/26 23:18, Greg KH wrote:
> > On Sat, Mar 28, 2026 at 02:41:23PM -0700, John Johansen wrote:
> > > On 3/27/26 22:55, Greg KH wrote:
> > > > On Fri, Mar 27, 2026 at 02:50:42PM +0000, Qualys Security Advisory wrote:
> > > > > Hi Greg, John, all,
> > > > > 
> > > > > On Fri, Mar 27, 2026 at 07:23:24AM +0100, Greg KH wrote:
> > > > > > On Thu, Mar 26, 2026 at 06:36:17PM +0000, Qualys Security Advisory wrote:
> > > > > > > Since two weeks have passed now (since the fixes were released), would
> > > > > > > it be possible to please assign CVEs to the remaining seven AppArmor
> > > > > > > vulnerabilities:
> > > > > > We were told that these all required elevated privileges to hit, and so
> > > > > > were not classified as individual vulnerabilities.  If the Apparmor
> > > > > > maintainer tells us that these really all should be assigned a CVE, we
> > > > > > will be glad to do so, but until then, we're just going to stick with
> > > > > > the ones that we have assigned already.
> > > > > 
> > > > > Thank you very much for your reply! Adding John Johansen then
> > > > > (AppArmor's maintainer), since he will have the authoritative answer.
> > > > > 
> > > > > The problem is that containers can be allowed to manage their own
> > > > > AppArmor profiles (via AppArmor namespaces), in which case an attacker
> > > > > inside such a container can directly write to AppArmor's .load, .replace
> > > > > and .remove files and trigger all these vulnerabilities, even without
> > > > > CVE-2026-23268 (the confused-deputy vulnerability).
> > > > > 
> > > > > The way we see it:
> > > > > 
> > > > > - either CVEs should be assigned to the remaining seven vulnerabilities,
> > > > >     in light of the container use case described above;
> > > > > 
> > > > > - or CVE-2026-23269 ("validate DFA start states are in bounds") should
> > > > >     be rejected, because this vulnerability is no different from the other
> > > > >     seven vulnerabilities.
> > > > 
> > > > Looks like this one should be rejected, but I will defer to John as to
> > > > what he wishes to have done here, as he is the maintainer of this part
> > > > of the kernel.
> > > > 
> > > It is possible to exploit from a user namespace under the correct
> > > circumstances. Specifically
> > > 
> > > A privileged process must do the setup, such that it creates a policy
> > > namespace (requires administrative privileges) and ties the "root"
> > > process of the user namespace to the the policy namespace. The "root"
> > > user of the user namespace, then has privilege to load policy to the
> > > policy namespace tied to the container. The root user of the container
> > > could then use the policy load bugs to attack the kernel.
> > > 
> > > Incus/LXD can setup a policy namespace for a container, the patch
> > > allowing LXD to do this is what introduced the LPE.
> > > 
> > > Without the LPE a regular user, or even root in a user namespace
> > > can not use the other bugs to attack the kernel, except in the
> > > case outlined above where a privileged process setups a policy
> > > namespace and ties it to the container.
> > > 
> > > I should also note there is an easy mitigation for the container
> > > case. Sysadmins can set the sysctl unprivileged_userns_apparmor_policy
> > > to false. This will stop root within the container from being able
> > > to load policy even when the policy namespace is tied to the user
> > > namespace.
> > > 
> > 
> > So do you feel the above CVE should be revoked, or that CVEs should be
> > issued for all of the other commits as well?
> > 
> As much as I dislike it, with lxd/incus actively allowing use of policy
> namespaces. I think CVEs should probably be issued for the other commits
> as well.

Ok, will go assign them later today, thanks.

greg k-h
