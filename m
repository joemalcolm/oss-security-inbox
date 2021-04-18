X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4487" "Saturday" "17" "April" "2021" "21:51:38" "-0300" "=?UTF-8?B?w4lyaWNvIE5vZ3VlaXJh?=" "ericonr@disroot.org" nil "110" "Re: [oss-security] xscreensaver package caps gets raw socket" nil nil nil "4" nil nil (number mark "U       ericonr@disr Apr 17  110/4487  " thread-indent "\"Re: [oss-security] xscreensaver package caps gets raw socket\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] xscreensaver package caps gets raw socket" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24394 invoked by uid 550); 18 Apr 2021 09:55:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3901 invoked from network); 18 Apr 2021 00:51:55 -0000
X-Virus-Scanned: Debian amavisd-new at disroot.org
To: oss-security@lists.openwall.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1618707102; bh=FcZWV6f248BJBsh8mKMRt7h8mep5DEZpcwSvIroM1hQ=;
	h=To:References:From:Subject:Date:In-Reply-To;
	b=irceUkbo1W9pvz2FYeZAL9ui2dLD/olwqGYkdCy1KDs/YJ10m2+iWL+Wz1U068GFp
	 YK7npSFuSDeSqKV0Zb+dw7MnV8IZcstEVu8zHJVBcXcNKF9Y+wqSFH6e1lJeXp8vsK
	 Dh71dDGu3usyYcZek9aTpIAUyFK8X+9UdgtMA0vviOd0KRUjTJbGuBqJfI1EAdOKKS
	 ZlxEN5fqC4yP3mGeoZrWDDRTwHaFCIzBRcFxSWDu2j9fIWuequi2MoIHpoQCvXGhaQ
	 NVzqhthExtXE3YvxMrt02QNAX/hjI/N66Gh8u9Aj2dCaYCI+fvSS3qzQJOrxui7czm
	 ++pTKHTW9MLJg==
References: <20210417143105.GB3276@thinkstation>
From: =?UTF-8?Q?=c3=89rico_Nogueira?= <ericonr@disroot.org>
Message-ID: <35f3ef89-12b5-5bbd-2ddb-88a9128dd849@disroot.org>
Date: Sat, 17 Apr 2021 21:51:38 -0300
Mime-Version: 1.0
In-Reply-To: <20210417143105.GB3276@thinkstation>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] xscreensaver package caps gets raw socket

Em 17/04/2021 11:31, Tavis Ormandy escreveu:
> Hello, I noticed that at least debian (maybe others) ship xscreensaver
> hack with cap_net_raw enabled:
> 
> $ getcap /usr/libexec/xscreensaver/sonar
> /usr/libexec/xscreensaver/sonar cap_net_raw=p
> 
> That seems like a bug, you can just load some driver and get a raw
> socket. I wrote a quick exploit, this script will run tcpdump without
> needing root.
> 
> $ bash sock.sh
> 17:43:55.000000 IP (tos 0x0, ttl 64, id 14541, offset 0, flags [DF], proto ICMP (1), length 84)
>      debian > sfo07s17-in-f78.1e100.net: ICMP echo request, id 59166, seq 1, length 64
> 17:43:55.000000 IP (tos 0x0, ttl 128, id 42276, offset 0, flags [none], proto ICMP (1), length 84)
>      sfo07s17-in-f78.1e100.net > debian: ICMP echo reply, id 59166, seq 1, length 64
> 
> I sent a report to debian, jwz and mesa. We concluded no embargo is
> necessary, so continuing the discussion here.
> 
> Summary of discussion so far:
> 
> - In theory, mesa support running in a privileged context, their
>    documentation says they disable dangerous features in setuid/setgid
>    binaries:
> 
>      https://mesa-docs.readthedocs.io/en/latest/egl.html
> 
>    In fact, this is broken because they only check if (geteuid() !=
>    getuid()) { ... }. That check doesn't even handle setgid, let alone file
>    caps. If mesa agree this is a bug, simply changing their checks to if
>    (getauxval(AT_SECURE)) { ... } might make this bug go away, and handle
>    file caps and setgid for free. I filed a bug for that, but there
>    hasn't been a response:
>    https://gitlab.freedesktop.org/mesa/mesa/-/issues/4549

The linked issue appears to be private... Not sure it makes sense, since 
the problem has been explained in this public email. FWIW, libglvnd has 
the same issue, though it at leasts (E)GID as well. Sending it here 
because I couldn't find a security contact.

https://github.com/NVIDIA/libglvnd/blob/acc654454867c7cdd681cc1f60f858bcd6e5e729/src/EGL/libeglvendor.c

     if (getuid() == geteuid() && getgid() == getegid()) {
         env = getenv("__EGL_VENDOR_LIBRARY_FILENAMES");
     }

I will look into opening an issue with them and finding a fix.

Using `secure_getenv` in some of these cases would probably work as well 
as checking `getauxval(AT_SECURE)`, especially because it seems (from my 
quick search over at <https://man.bsd.lv>) that both are Linux specific 
anyway.

It would be nice to define a `is_privileged_context()` function that 
works on most platforms to be shared across projects or used as a 
library. Especially because technically speaking a process running as 
root could want to call `setuid()` and still tweak the environment to 
control how mesa and libglvnd work, which would be blocked by their 
"naive" checks for a privileged process.

> 
> - The code could use ping sockets instead, but they're still rarely
>    enabled by default, and users have to set the ping_group_range sysctl.
>    I personally think it's time to enable them by default, but that's a
>    different discussion :-)
> 
> - If neither of those two options work, then I guess we will have to
>    try to make using mesa safe...but it sounds really hard. The obvious
>    fix for right now is trying to clean up the environment, e.g.:
> 
>    (Note: untested)
> 
>      char *allowed[][2] = {
>          { "DISPLAY", 0 },
>          { "XAUTHORITY", 0 },
>          NULL,
>      };
>      for (int i = 0; allowed[i][0]; i++)  {
>          if (getenv(allowed[i][0])) {
>              allowed[i][1] = strdup(getenv(allowed[i][0]));
>          }
>      }
>      if (clearenv() != 0) {
>          abort();
>      }
>      for (int i = 0; allowed[i][0]; i++)  {
>          if (allowed[i][1]) {
>              setenv(allowed[i][0], allowed[i][1], 1);
>              free(allowed[i][1]);
>          }
>      }
> 
>      // ...
>      MesaInitWhatever();
> 
> I *think* this will work in main(), but it's possible there are some
> constructors somewhere that execute before main() I've missed. If that's
> the case, then I guess we will need a wrapper binary that does execve()
> and passes a non-cloexec fd with a sanitized environment?
> 
> The problem is that even if we make cleaning up the environment work,
> you're always going to need $DISPLAY, and any code exec bug connecting
> to a malicious X server will be a security bug.... and that sounds super
> hard to get right?
> 
> I dunno, thoughts on fixing this appreciated...
> 
> Tavis.
> 
