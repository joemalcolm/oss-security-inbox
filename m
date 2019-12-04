X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2151" "Wednesday" "4" "December" "2019" "23:05:11" "+0100" "Solar Designer" "solar@openwall.com" "<20191204220511.GA16998@openwall.com>" "49" "Re: [oss-security] Authentication vulnerabilities in OpenBSD" "^Date:" nil nil "12" "2019120422:05:11" "[oss-security] Authentication vulnerabilities in OpenBSD" (number mark "        solar@openwa Dec  4   49/2151  " thread-indent "\"Re: [oss-security] Authentication vulnerabilities in OpenBSD\"\n") "<20191204204020.GB7012@localhost.localdomain>" ("<20191204204020.GB7012@localhost.localdomain>") nil nil nil nil nil nil nil "Re: [oss-security] Authentication vulnerabilities in OpenBSD" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 23692 invoked by uid 550); 4 Dec 2019 22:06:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22405 invoked from network); 4 Dec 2019 22:05:24 -0000
Message-ID: <20191204220511.GA16998@openwall.com>
References: <20191204204020.GB7012@localhost.localdomain>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191204204020.GB7012@localhost.localdomain>
User-Agent: Mutt/1.4.2.3i
Date: Wed, 4 Dec 2019 23:05:11 +0100
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Authentication vulnerabilities in OpenBSD
To: oss-security@lists.openwall.com

On Wed, Dec 04, 2019 at 08:49:22PM +0000, Qualys Security Advisory wrote:
> 1. CVE-2019-19521: Authentication bypass

> This is the second piece of the puzzle: if an attacker specifies the
> username "-schallenge" (or "-schallenge:passwd" to force a passwd-style
> authentication), then the authentication is automatically successful and
> therefore bypassed.

Wow, this is the new -froot.

> 2. CVE-2019-19520: Local privilege escalation via xlock
> ==============================================================================
> 
> On OpenBSD, /usr/X11R6/bin/xlock is installed by default and is
> set-group-ID "auth", not set-user-ID; the following check is therefore
> incomplete and should use issetugid() instead:
> 
> ------------------------------------------------------------------------------
> 101 _X_HIDDEN void *
> 102 driOpenDriver(const char *driverName)
> 103 {
> ...
> 113    if (geteuid() == getuid()) {
> 114       /* don't allow setuid apps to use LIBGL_DRIVERS_PATH */
> 115       libPaths = getenv("LIBGL_DRIVERS_PATH");
> ------------------------------------------------------------------------------
> 
> A local attacker can exploit this vulnerability and dlopen() their own
> driver to obtain the privileges of the group "auth":

I think this library issue isn't OpenBSD-specific.  A quick Google web
search for LIBGL_DRIVERS_PATH finds that Mesa appears to have the same
issue, and it also finds that we should also search for GBM_DRIVERS_PATH
(apparently, for older Mesa) and maybe EGL_DRIVERS_PATH and EGL_DRIVER,
and LIBVA_DRIVERS_PATH and LIBVA_DRIVER_NAME.  There are probably more.

Related discussion for X.Org, which ends with Alan Coopersmith saying:

"Yeah, I really would rather not have a setuid-root program dlopen and execute
code from a user supplied path.  Can we have something in there to prevent
disasters, such as issetugid() or secure_getenv()?"

[PATCH xserver] Search for DRI drivers at LIBGL_DRIVERS_PATH environment variable.
https://lists.x.org/archives/xorg-devel/2016-April/049336.html

It sounds like the patch adding the dangerous getenv() didn't get in,
but I didn't verify that.

Alexander
