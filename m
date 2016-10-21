X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1452" "Friday" "21" "October" "2016" "02:31:04" "+0200" "Solar Designer" "solar@openwall.com" "<20161021003104.GA16605@openwall.com>" "30" "[oss-security] CVE-2016-5195 \"Dirty COW\" Linux kernel privilege escalation vulnerability" nil nil nil "10" "2016102100:31:04" "[oss-security] CVE-2016-5195 \"Dirty COW\" Linux kernel privilege escalation vulnerability" (number mark "U       solar@openwa Oct 21   30/1452  " thread-indent "\"[oss-security] CVE-2016-5195 \"Dirty COW\" Linux kernel privilege escalation vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21929 invoked by uid 550); 21 Oct 2016 00:32:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21750 invoked from network); 21 Oct 2016 00:31:35 -0000
Date: Fri, 21 Oct 2016 02:31:04 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20161021003104.GA16605@openwall.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.4.2.3i
Subject: [oss-security] CVE-2016-5195 "Dirty COW" Linux kernel privilege escalation vulnerability

Hi,

This was brought to the linux-distros list (and briefly inadvertently to
the distros list, although discussion continued on linux-distros only)
on October 13 and it was made public yesterday, so it must be in here as
well.  Unfortunately, no one posted about it in here so far (the person
who brought this to [linux-]distros must have done so!), and I don't
have time to make a proper posting (with full detail in the message
itself, as per oss-security list content guidelines), but I figured it's
better for me to post something than nothing at all.

Red Hat's description:

"A race condition was found in the way the Linux kernel's memory
subsystem handled the copy-on-write (COW) breakage of private read-only
memory mappings.  An unprivileged local user could use this flaw to gain
write access to otherwise read-only memory mappings and thus increase
their privileges on the system."

https://access.redhat.com/security/cve/cve-2016-5195
https://bugzilla.redhat.com/show_bug.cgi?id=1384344
https://security-tracker.debian.org/tracker/CVE-2016-5195
http://www.v3.co.uk/v3-uk/news/2474845/linux-users-urged-to-protect-against-dirty-cow-security-flaw
https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=19be0eaffa3ac7d8eb6784ad9bdbc7d67ed8e619
https://lkml.org/lkml/2016/10/19/860
https://dirtycow.ninja
https://github.com/dirtycow/dirtycow.github.io/wiki/VulnerabilityDetails
https://twitter.com/DirtyCOWVuln

Alexander
