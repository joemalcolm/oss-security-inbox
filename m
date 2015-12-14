X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1934" "Tuesday" "15" "December" "2015" "00:54:08" "+0300" "Solar Designer" "solar@openwall.com" "<20151214215407.GA26624@openwall.com>" "39" "Re: [oss-security] User man Local Root Exploit/Linux Kernel setgid Directory Privilege Escalation/PAM Owner Check Weakness" "^Date:" nil nil "12" "2015121421:54:08" "[oss-security] User man Local Root Exploit/Linux Kernel setgid Directory Privilege Escalation/PAM Owner Check Weakness" (number mark "        solar@openwa Dec 15   39/1934  " thread-indent "\"Re: [oss-security] User man Local Root Exploit/Linux Kernel setgid Directory Privilege Escalation/PAM Owner Check Weakness\"\n") "<566F3135.4050009@halfdog.net>" ("<565F679F.9050600@halfdog.net>" "<566E0678.1080808@halfdog.net>" "<86fuz570iy.fsf@desk.des.no>" "<566F3135.4050009@halfdog.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5821 invoked by uid 550); 14 Dec 2015 21:54:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5800 invoked from network); 14 Dec 2015 21:54:19 -0000
Message-ID: <20151214215407.GA26624@openwall.com>
References: <565F679F.9050600@halfdog.net> <566E0678.1080808@halfdog.net> <86fuz570iy.fsf@desk.des.no> <566F3135.4050009@halfdog.net>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <566F3135.4050009@halfdog.net>
User-Agent: Mutt/1.4.2.3i
Date: Tue, 15 Dec 2015 00:54:08 +0300
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] User man Local Root Exploit/Linux Kernel setgid Directory Privilege Escalation/PAM Owner Check Weakness
To: oss-security@lists.openwall.com

halfdog -

> http://www.halfdog.net/Security/2015/MandbSymlinkLocalRootPrivilegeEscalation/
> http://www.halfdog.net/Security/2015/SetgidDirectoryPrivilegeEscalation/

Thank you for documenting these peculiar findings.  While your web pages
are nicely formatted and have helpful cross-references, could you please
post the actual content to oss-security directly?  If you can't easily
include everything into a message body yet keep it reasonable, then you
may attach several text files, including the CreateSetgidBinary.c
program.  I hope your website will still be available with this content
years later, but regardless I'd prefer discussion threads in here not to
rely on external content unnecessarily.  If we can make a discussion
thread more self-contained, we should.  Including external URLs for
reference and better formatting and cross-references is great, but it
does not eliminate the need to also include the most essential content
directly in your posting.

On Mon, Dec 14, 2015 at 09:14:29PM +0000, halfdog wrote:
> Dag-Erling Smorgrav wrote:
> > And the PAM issue?
> 
> That's the most questionable. Should it be expected from the pam
> libraries to refuse authentication, when the owner/group of
> /etc/shadow is completely off? Of course, attacker with possibility to
> modify ownership of a single file would also find numerous other
> targets to work on, but should it be so easy?

(You mean PAM modules like pam_unix here, not PAM libraries like libpam.
And of course this question is not limited to systems with PAM.)

I don't feel about this strongly, but I also see little need to
introduce this kind of paranoia into pam_unix and the like.  As you
point out, there are "numerous other targets", and some of them are not
much or any harder to make use of - e.g., root's cron jobs, sshd_config
"Subsystem" line, lots of scripts and binaries (but these might require
waiting until they're run next).

Alexander
