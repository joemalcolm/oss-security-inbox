X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2259" "Friday" "12" "June" "2015" "22:27:48" "+0300" "Solar Designer" "solar@openwall.com" "<20150612192748.GA13099@openwall.com>" "58" "Re: [oss-security] Linux namespaces: It is possible to escape from bind mounts" nil nil nil "6" "2015061219:27:48" "[oss-security] Linux namespaces: It is possible to escape from bind mounts" (number mark "        solar@openwa Jun 12   58/2259  " thread-indent "\"Re: [oss-security] Linux namespaces: It is possible to escape from bind mounts\"\n") "<20150403105802.GA21110@pc.thejh.net>" ("<20150403105802.GA21110@pc.thejh.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 25704 invoked by uid 550); 12 Jun 2015 19:28:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 25675 invoked from network); 12 Jun 2015 19:28:08 -0000
Message-ID: <20150612192748.GA13099@openwall.com>
References: <20150403105802.GA21110@pc.thejh.net>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150403105802.GA21110@pc.thejh.net>
User-Agent: Mutt/1.4.2.3i
Cc: Jann Horn <jann@thejh.net>
Date: Fri, 12 Jun 2015 22:27:48 +0300
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux namespaces: It is possible to escape from bind mounts
To: oss-security@lists.openwall.com

On Fri, Apr 03, 2015 at 12:58:02PM +0200, Jann Horn wrote:
> See here for the corresponding patches:
> <http://permalink.gmane.org/gmane.linux.kernel.containers/29173>
> <http://permalink.gmane.org/gmane.linux.kernel.containers/29177>
> 
> Given that it went over a public mailinglist now, I guess there's
> not much sense in keeping it secret anymore.
> 
> Containers on Linux normally use bind mounts to restrict how much
> of the filesystem is visible for processes inside the container.
> However, if an attacker can gain capabilities within such a
> container or can create another user and mount namespace within
> the existing container, he can do something similar to a
> double-chroot attack to break out of the bind mount and gain
> access to the full filesystem to which the bind mount refers:
> 
> Create folders /A, /A/B, /C, /D inside the namespace.
> Bind-mount the /A inside the namespace to /D.
> Let a process chdir to /D/B.
> Move /D/B over into /C.
> The process which chdir'ed to /D/B is now in /C/B, but at the
> same time it is in a bind mount with /D as root. It can then
> traverse upwards, past what looks like / inside the namespace.

I had Jann's message flagged as needing further attention, but I never
got back far enough in my stack of e-mails.  Luckily, Jann was
persistent enough and tested OpenVZ for this issue, and found it
vulnerable, and reported the issue to OpenVZ developers.  Thanks!

So, yes, OpenVZ simfs-based (but not ploop-based) containers turned out
to be affected by this issue, allowing an in-container root to access
outside files up to the mount point of the underlying filesystem (so
e.g. up to /vz if a separate filesystem is mounted on /vz on a server).

With proper bind mount(s) already precreated, a non-root in-container
user could exploit this as well, but that's uncommon.

OpenVZ bug:
https://bugzilla.openvz.org/show_bug.cgi?id=3256

OpenVZ/RHEL6 fix:
https://openvz.org/Download/kernel/rhel6-testing/042stab108.3

OpenVZ/RHEL5 fix:
https://openvz.org/Download/kernel/rhel5-testing/028stab119.2

(And a fix went into Owl last night.)

A slightly simpler variation of the attack, without a "d" directory:

cd /
mkdir a a/b c
mount -o bind a c
cd c/b
mv /a/b /
ls -l ../../../../../..

Alexander
