X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2386" "Sunday" "18" "April" "2021" "14:51:52" "+0200" "Solar Designer" "solar@openwall.com" nil "54" "Re: [oss-security] xscreensaver package caps gets raw socket" nil nil nil "4" nil nil (number mark "U       solar@openwa Apr 18   54/2386  " thread-indent "\"Re: [oss-security] xscreensaver package caps gets raw socket\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] xscreensaver package caps gets raw socket" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 4036 invoked by uid 550); 18 Apr 2021 12:53:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3767 invoked from network); 18 Apr 2021 12:52:29 -0000
Date: Sun, 18 Apr 2021 14:51:52 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20210418125151.GA20535@openwall.com>
References: <20210417143105.GB3276@thinkstation> <35f3ef89-12b5-5bbd-2ddb-88a9128dd849@disroot.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <35f3ef89-12b5-5bbd-2ddb-88a9128dd849@disroot.org>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] xscreensaver package caps gets raw socket

On Sat, Apr 17, 2021 at 09:51:38PM -0300, Érico Nogueira wrote:
> Em 17/04/2021 11:31, Tavis Ormandy escreveu:
> >Summary of discussion so far:
> >
> >- In theory, mesa support running in a privileged context, their
> >   documentation says they disable dangerous features in setuid/setgid
> >   binaries:
> >
> >     https://mesa-docs.readthedocs.io/en/latest/egl.html
> >
> >   In fact, this is broken because they only check if (geteuid() !=
> >   getuid()) { ... }. That check doesn't even handle setgid, let alone file
> >   caps. If mesa agree this is a bug, simply changing their checks to if
> >   (getauxval(AT_SECURE)) { ... } might make this bug go away, and handle
> >   file caps and setgid for free. I filed a bug for that, but there
> >   hasn't been a response:
> >   https://gitlab.freedesktop.org/mesa/mesa/-/issues/4549
> 
> The linked issue appears to be private... Not sure it makes sense, since 
> the problem has been explained in this public email. FWIW, libglvnd has 
> the same issue, though it at leasts (E)GID as well. Sending it here 
> because I couldn't find a security contact.
> 
> https://github.com/NVIDIA/libglvnd/blob/acc654454867c7cdd681cc1f60f858bcd6e5e729/src/EGL/libeglvendor.c
> 
>     if (getuid() == geteuid() && getgid() == getegid()) {
>         env = getenv("__EGL_VENDOR_LIBRARY_FILENAMES");
>     }
> 
> I will look into opening an issue with them and finding a fix.

Related:

https://www.openwall.com/lists/oss-security/2019/12/04/6

"search for LIBGL_DRIVERS_PATH finds that Mesa appears to have the same
issue, and it also finds that we should also search for GBM_DRIVERS_PATH
(apparently, for older Mesa) and maybe EGL_DRIVERS_PATH and EGL_DRIVER,
and LIBVA_DRIVERS_PATH and LIBVA_DRIVER_NAME.  There are probably more."

> Using `secure_getenv` in some of these cases would probably work as well 
> as checking `getauxval(AT_SECURE)`, especially because it seems (from my 
> quick search over at <https://man.bsd.lv>) that both are Linux specific 
> anyway.
> 
> It would be nice to define a `is_privileged_context()` function that 
> works on most platforms to be shared across projects or used as a 
> library.

Historically, that's __libc_enable_secure on glibc (although if
secure_getenv() does what's needed in a given context, then you don't
need to use __libc_enable_secure directly) and issetugid(2) on OpenBSD.

Alexander
