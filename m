Received: (qmail 2002 invoked by uid 550); 22 Feb 2024 20:02:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1814 invoked from network); 22 Feb 2024 20:02:26 -0000
Date: Thu, 22 Feb 2024 21:05:42 +0100
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20240222200542.GA14535@openwall.com>
References: <7e78b8d8-860c-47f5-bbec-a967c277d539@oracle.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7e78b8d8-860c-47f5-bbec-a967c277d539@oracle.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] CVEs issued by the Linux kernel CNA

On Tue, Feb 20, 2024 at 03:30:28PM -0800, Alan Coopersmith wrote:
> As recently announced [1], kernel.org is now a CNA for the Linux kernel, and

See also discussion here:

https://lwn.net/Articles/961961/

> today issued its first 8 CVEs, as seen in the archives of their mailing list
> at https://lore.kernel.org/linux-cve-announce/ .

There are many more already, all of them also archived at:

https://lists.openwall.net/linux-cve-announce/

> Their documentation [2] warns that we should expect a "seemingly large 
> number of CVEs that are issued by the Linux kernel team".
> 
> Since there's already an archived mailing list covering the CVE assignments,
> I don't think it makes sense to mirror that large amount of traffic here, 
> but to only bring to oss-security those that are especially interesting or 
> useful to discuss further.  What do others think?
> 
> [1] http://www.kroah.com/log/blog/2024/02/13/linux-is-a-cna/
> [2] https://docs.kernel.org/process/cve.html

Yes, I agree.  Besides "especially interesting or useful to discuss
further", another exception will be for issues that were brought to
linux-distros, for transparency.

Speaking of which, we allow for CVEs to be requested via linux-distros,
to be assigned by one of the CNAs in there.  The current Linux kernel
CVE documentation is very strict about rejecting such third-party
assignments if they're "for an actively supported kernel":

"Any CVE that is assigned against the Linux kernel for an actively
supported kernel version, by any group other than the kernel assignment
CVE team should not be treated as a valid CVE. Please notify the kernel
CVE assignment team at <cve@kernel.org> so that they can work to
invalidate such entries through the CNA remediation process."

So I guess we should now exclude upstream actively supported kernels
from this offer/practice.  Distro CNAs can still assign CVEs for issues
limited to downstream/distro kernels and for issues in upstream kernels
that are not currently supported upstream.  I guess they can also assign
CVEs against downstream/distro kernels even if the code is the same as
in an upstream actively supported kernel, but the threat model is
different (e.g., untrusted filesystem images are brought into the threat
model in a distro).  Sounds right?

Alexander
