Received: (qmail 23986 invoked by uid 550); 28 Oct 2025 01:52:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 17966 invoked from network); 28 Oct 2025 01:50:58 -0000
Date: Tue, 28 Oct 2025 02:49:09 +0100
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20251028014909.GA6430@openwall.com>
References: <aP_msOoiyHJ_M4Yx@mertle> <20251027163220.8c7ede47-6b3a-4190-ad4b-e52761b341de@korelogic.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251027163220.8c7ede47-6b3a-4190-ad4b-e52761b341de@korelogic.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] Questionable CVE's reported against dnsmasq

On Mon, Oct 27, 2025 at 05:15:09PM -0600, Hank Leininger wrote:
> On 2025-10-27, Michael Orlitzky wrote:
> > On 2025-10-27 19:21:54, Moritz Mühlenhoff wrote:
> > > > On Mon, Oct 27, 2025 at 09:34:03AM -0700, Alan Coopersmith wrote:
> > > > 
> > > > and if you can replace the server's configuration file you don't
> > > > need to play games with putting invalid contents in to break the
> > > > parser, but can simply change the configuration directly.
> >
> > > The same nonsense also happened for the Kamailio SIP server
> > > (CVE-2025-12204, CVE-2025-12205, CVE-2025-12206 and CVE-2025-12207).
> >
> > Config parser exploits are not necessarily bogus. The admin might
> > allow group/ACL edits to the configuration files knowing that it
> > allows group members to torch the service in question, while, at the
> > same time, not trusting those group members to execute arbitrary
> > commands as root.
> 
> For a particular package/system/deployment, sure. For the dnsmasq
> package? I don't think the project claims it's safe to make dnsmasq.conf
> editable by non-root-equivalent users. Heck just use the dhcp-script=...
> hook along with user=root to keep privs. Or in the case of kamailio, it
> looks like it has exec_*, app_*, etc.
> 
> Somebody could, on a per-package basis, investigate config
> options/syntax, decide if it's safe / try to create a safe wrapper
> around config-editing, which knows how to lint edits and which
> parameters are dangerous, or something.
> 
> Which works fine until it doesn't. It's like the #2 way to break out of
> appliances' locked-down custom CLIs or web UI, after simple command
> injection.
> 
> However, in that case it'd be CVEs in the appliance/wrapper thing,
> "XYZ CLI privilege escalation via malicious dnsmasq.conf edits", great.
> A CVE in OpenSSH that requires writing to sshd_config would be bonkers.
> A CVE for an appliance whose CLI allows you to set an arbitrary "banner"
> string and write it to /etc/ssh/sshd_config.d/pwned? Sure!

Right.  "Config parser exploits are not necessarily bogus", but that
doesn't mean the parsers or the immediate programs they're part of are
the vulnerable components.  Perhaps not as robust as we'd have liked,
but generally not vulnerable as far as CVE is concerned.

What's common about the CVEs mentioned in this thread, including those
against GNU Bison (so not config file parsing, but just bogus CVEs), is
that all of them were assigned by VulDB as the CNA.  VulDB even went to
the effort (or automation?) to generate CVSS 2.0, 3.0, 3.1, and 4.0
vectors for all of these.  It's pretty ridiculous for a CNA not only to
assign bogus CVEs, but also have CVSS vectors and scores for them
without realizing the error.  This suggests a lack of proper process
and/or expertise.

At this point, I think we want to hear from VulDB on this, and from
MITRE on their requirements for CNAs in general and VulDB in particular
to review CVE requests before assignment.  Maybe VulDB is in violation.

Alexander
