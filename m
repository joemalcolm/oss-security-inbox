Received: (qmail 15761 invoked by uid 550); 3 May 2026 02:32:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13543 invoked from network); 3 May 2026 02:32:07 -0000
Date: Sun, 3 May 2026 04:32:06 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20260503023206.GA10982@openwall.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.4.2.3i
Subject: [oss-security] syzkaller "Reporting Linux kernel bugs" out of date

Hi,

It came up in a discussion(*) on linux-distros that these guidelines:

https://github.com/google/syzkaller/blob/master/docs/linux/reporting_kernel_bugs.md

are years out of date.  They assume the good times when the Linux
kernel security team and linux-distros cooperated, and when MITRE and
distros could assign CVEs to kernel issues (so before Linux CNA).

I see this file isn't unmaintained - there are not-too-old commits
updating other parts of it - so maybe the maintainers simply didn't
realize this part became outdated so badly.

I guess I could volunteer to fix this via a pull request, but as I
didn't get around to even trying for a while now, I am at least bringing
this up in here.

One possible fix would be to rewrite parts to reflect the current
reality - and then maintain that.  Another would be to drop the
specifics and just refer to the kernel "Security bugs" page (there's
already a link to it, but it's also outdated/broken) and the distros
and oss-security wiki pages (these links exist and work).

In either case, I think it's inappropriate to give the linux-distros
posting address directly because instructions specific to that list are
a must read before sending anything to there, for both technical and
policy reasons.

(*) Of course, the mentioned "discussion" is of a certain issue being
currently mishandled in part as a result of these old instructions.

Alexander
