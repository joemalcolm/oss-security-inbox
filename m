X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5356" "Wednesday" "26" "June" "2019" "10:13:58" "-0400" "Sasha Levin" "sashal@kernel.org" "<20190626141358.GK7898@sasha-vm>" "119" "[oss-security] linux-distros membership application - Microsoft" "^Cc:" nil nil "6" "2019062614:13:58" "[oss-security] linux-distros membership application - Microsoft" (number mark "        sashal@kerne Jun 26  119/5356  " thread-indent "\"[oss-security] linux-distros membership application - Microsoft\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] linux-distros membership application - Microsoft" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26249 invoked by uid 550); 26 Jun 2019 15:10:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26275 invoked from network); 26 Jun 2019 14:14:11 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1561558439;
	bh=j9mr3a/ItbToPSJ7M2Ie7Ol2PtLbPn7u4R9MoCd+jhE=;
	h=Date:From:To:Cc:Subject:From;
	b=n4rnuh+C64XeD+omBfRGQ+VPQkLskF6b80kyySvuYi6bO17i+Y0QM9YpeRjzwOAMA
	 YsIdt5sVqFLb/VmGa2DEg46357IZkXwdKMibHZpiCiM4f3I1NLnfeAxHo/QQPRaJ+U
	 u4ooiEsxMCmP1qpFAWtRP58DTxh5iIZMt8WxQN9o=
Message-ID: <20190626141358.GK7898@sasha-vm>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
Cc: gregkh@linuxfoundation.org
Date: Wed, 26 Jun 2019 10:13:58 -0400
From: Sasha Levin <sashal@kernel.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] linux-distros membership application - Microsoft
To: oss-security@lists.openwall.com

> 1. Be an actively maintained Unix-like operating system distro with
> substantial use of Open Source components

Microsoft provides several distro-like builds which are not derivative
of an existing distribution that are based on open source components:

 - Azure Sphere
   (https://azure.microsoft.com/en-us/services/azure-sphere/): This
   Linux-based IoT device provides, among various things, security
   updates to deployed IoT devices. As the project is about to step out
   of public preview into the GA stage, we expect millions of these
   devices to be publicly used.

 - Windows Subsystem for Linux v2
   (https://devblogs.microsoft.com/commandline/wsl-2-is-now-available-in-windows-insiders/):
   A Linux based distro that runs as a virtual machine on top of Windows
   hosts. WSL2 is currently available for public preview and scheduled
   for GA early 2020.

 - Products such as Azure HDInsight
   (https://azure.microsoft.com/en-us/free/hdinsight) and the Azure
   Kubernetes Service
   (https://azure.microsoft.com/en-us/services/kubernetes-service/)
   provide public access to a Linux based distribution.

> 2. Have a userbase not limited to your own organization

Microsoft customers have millions of cores running the various workloads
described above.

> 3. Have a publicly verifiable track record, dating back at least 1
> year and continuing to present day, of fixing security issues
> (including some that had been handled on (linux-)distros, meaning that
> membership would have been relevant to you) and releasing the fixes
> within 10 days (and preferably much less than that) of the issues
> being made public (if it takes you ages to fix an issue, your users
> wouldn't substantially benefit from the additional time, often around
> 7 days and sometimes up to 14 days, that list membership could give
> you).

Microsoft has decades long history of addressing security issues via
MSRC (https://www.microsoft.com/en-us/msrc). While we are able to
quickly (<1-2 hours) create a build to address disclosed security
issues, we require extensive testing and validation before we make these
builds public. Being members of this mailing list would provide us the
additional time we need for extensive testing.

> 4. Not be (only) downstream or a rebuild of another distro (or else we
> need convincing additional justification of how the list membership
> would enable you to release fixes sooner, presumably not relying on
> the upstream distro having released their fixes first?)

None of our builds are based on an existing distribution. For few of
these workloads we have a very custom kernel and userspace (such as for
Azure Sphere), while some share a more conventional kernel/userspace
configuration.

> 5. Be a participant and preferably an active contributor in relevant
> public communities (most notably, if you're not watching for issues
> being made public on oss-security, which are a superset of those that
> had been handled on (linux-)distros, then there's no valid reason for
> you to be on (linux-)distros)

We follow closely public discussions with regards to security issues
that would affect us. While there was only a minor contribution back to
these lists mostly as we did not have any value to add back.

During past years I've reported multiple security issues which were
assigned CVEs.

> 6. Accept the list policy (see above)

We accept the list's policy.

> 7. Be able and willing to contribute back (see above), preferably in
> specific ways announced in advance (so that you're responsible for a
> specific area and so that we know what to expect from which member),
> and demonstrate actual contributions once you've been a member for a
> while

We understand this need and will be contributing back. Looking at the
list of vacant positions I can suggest the following, but I suspect that
existing list members will have better suggestions.

Technical:

3. Review and/or test the proposed patches and point out potential
issues with them (such as incomplete fixes for the originally reported
issues, additional issues you might notice, and newly introduced bugs),
and inform the list of the work done even if no issues were encountered
- primary: Amazon, backup: vacant

Administrative:

3. Evaluate if the issue (or one of the issues) is effectively already
public (e.g., a fix is committed upstream with a descriptive message)
or/and is low severity and thus the report (or its portion pertaining to
the issue) should be made public right away for one or both of these
reasons, get a few other list members to confirm this understanding, and
if there are no objections then communicate this strong preference to
the reporter - primary: CloudLinux, backup: vacant

> 8. Be able and willing to handle PGP-encrypted e-mail

I am able and willing to handle PGP-encrypted e-mail.

> 9. Have someone already on the private list, or at least someone else
> who has been active on oss-security for years but is not affiliated
> with your distro nor your organization, vouch for at least one of the
> people requesting membership on behalf of your distro (then that one
> vouched-for person will be able to vouch for others on your team, in
> case you'd like multiple people subscribed)

Greg Kroah-Hartman <gregkh@linuxfoundation.org> would vouch for me
(Sasha Levin <sashal@kernel.org>).

--
Thanks,
Sasha
