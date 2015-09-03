X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1159" "Thursday" "3" "September" "2015" "09:36:29" "+0300" "Solar Designer" "solar@openwall.com" "<20150903063629.GA29383@openwall.com>" "20" "Re: [oss-security] CVE request: screen stack overflow (deep recursion)" nil nil nil "9" "2015090306:36:29" "[oss-security] CVE request: screen stack overflow (deep recursion)" (number mark "U       solar@openwa Sep  3   20/1159  " thread-indent "\"Re: [oss-security] CVE request: screen stack overflow (deep recursion)\"\n") "<2ECE9D9EEF1F524185270138AE23265954E74D77@S0MSMAIL112.arc.local>" ("<87vbbusojr.fsf@mid.deneb.enyo.de>" "<20150903051105.6AB28B2E4ED@smtpvbsrv1.mitre.org>" "<2ECE9D9EEF1F524185270138AE23265954E74D77@S0MSMAIL112.arc.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22475 invoked by uid 550); 3 Sep 2015 06:36:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22445 invoked from network); 3 Sep 2015 06:36:34 -0000
Message-ID: <20150903063629.GA29383@openwall.com>
References: <87vbbusojr.fsf@mid.deneb.enyo.de> <20150903051105.6AB28B2E4ED@smtpvbsrv1.mitre.org> <2ECE9D9EEF1F524185270138AE23265954E74D77@S0MSMAIL112.arc.local>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2ECE9D9EEF1F524185270138AE23265954E74D77@S0MSMAIL112.arc.local>
User-Agent: Mutt/1.4.2.3i
Date: Thu, 3 Sep 2015 09:36:29 +0300
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE request: screen stack overflow (deep recursion)
To: oss-security@lists.openwall.com

On Thu, Sep 03, 2015 at 05:25:11AM +0000, Fiedler Roman wrote:
> What about "tail -f /var/log/syslog", Apache or other kind of logs for
> debugging? [Yes, that's often how logs are running over the screen in videos
> when talking about IT-security]. It's convenient and I'm using screen
> exactly to avoid any injection of commands via TIOCSTI into my current TTY
> when a context switch is needed before starting tail, e.g. when working with
> LXC containers.

"tail -f" on a log file is indeed very common, but it is bad practice
(akin to other very common bad practices like a sysadmin going into a
user's homedir as root).  A safer alternative in terms of terminal
escapes is the "F" keypress in "less -nU" (or in "less -nUEX" to more
closely resemble "tail -f").  Unfortunately, I am not aware of a
command-line option that would do this (that is, assume that "F" was
pressed right away) - perhaps one should be added, if it's not already
in there.  Unfortunately, less is more complicated and has greater
attack surface than tail.  Maybe this can be partially mitigated by
using the C locale with it (no UTF-8), but I did not look into that.

Alexander
