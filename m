Received: (qmail 21766 invoked by uid 550); 27 Oct 2025 21:40:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 21700 invoked from network); 27 Oct 2025 21:40:11 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=orlitzky.com; s=mail2;
	t=1761601201; bh=Tj1v6j+8McrXSur3S3y3i1qs381shFjSSbFMTRSsAo4=;
	h=Date:From:To:Subject:References:In-Reply-To;
	b=FqyvLXIdQMnJRUrNLRbGOvQnUwXmA5dXyo+T8O50kipZyIFVMNBrxCe3IKND4E6fO
	 9SjM+8r6K4i8cSdLCOtdGH300xIG7a/r70rsZOtIHR9LQtMRjWW6kkthG1hMUQcwDH
	 hsdW+MmET0w3kS8ugtVnf5b2BMY0rrhaXGbw2p60=
Date: Mon, 27 Oct 2025 17:40:00 -0400
From: Michael Orlitzky <michael@orlitzky.com>
To: oss-security@lists.openwall.com
Message-ID: <aP_msOoiyHJ_M4Yx@mertle>
References: <2ccbcc13-fc25-484c-a34d-56f27ac87db7@oracle.com>
 <aP_GUo51BVldIFVQ@inutil.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <aP_GUo51BVldIFVQ@inutil.org>
Subject: Re: [oss-security] Questionable CVE's reported against dnsmasq

On 2025-10-27 19:21:54, Moritz Mühlenhoff wrote:
> On Mon, Oct 27, 2025 at 09:34:03AM -0700, Alan Coopersmith wrote:
> > Among the new CVE's published this weekend were these from the VulDB CNA:
> > 
> > For all three bugs, the documented "exploit" requires "Replace the default
> > configuration file (/etc/dnsmasq.conf) with the provided malicious file."
> > and if you can replace the server's configuration file you don't need to
> > play games with putting invalid contents in to break the parser, but can
> > simply change the configuration directly.
> 
> The same nonsense also happened for the Kamailio SIP server (CVE-2025-12204,
> CVE-2025-12205, CVE-2025-12206 and CVE-2025-12207).

Config parser exploits are not necessarily bogus. The admin might
allow group/ACL edits to the configuration files knowing that it
allows group members to torch the service in question, while, at the
same time, not trusting those group members to execute arbitrary
commands as root.

If the daemon is launched as an unprivileged user (before reading the
config file) the risk is minimized, but often that isn't the case when
you want to bind to privileged ports or read private keys that are
defined in the config file.
