Received: (qmail 8090 invoked by uid 550); 18 Apr 2023 19:29:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5897 invoked from network); 18 Apr 2023 19:24:33 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sudo.ws; s=selector2;
	t=1681845861; h=from:from:reply-to:subject:subject:date:date:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=6QNVsRbGSuI+Xw1kT23dIinO0SA4/91mvi27WcWAj/Q=;
	b=FqD6v3Yv17wh5boCxNQpPiVxbu6zm/cSPi0Af4lbIkbUqKnuSrKNUh4eeA1Cd53pFRvD6X
	vldG0eFIvIA2VaXepoktGElmQgSc/lUd7JIpT0Bp/02AEp1UPOtAnW41F+UMdkfSnROVqZ
	4SqDmLwSVwmX2xu9HT4PTxXZp4OJXh9nQq3cMaNqAxsXd9YuSK0k/Ubv05OCQa1zTCOxAi
	d/3eGREZXyWiQitna99DJXPG7lrjk/Jy9W323BrsoKfaegteoAfeHnToh3YG9xRPJoD4Qk
	UgI2/dmbZD270krqWFfzw7wMK3BYXegWOY08owbNWcgRXePq523q1N7NdI+aAw==
From: "Todd C. Miller" <Todd.Miller@sudo.ws>
To: Ruihan Li <lrh2000@pku.edu.cn>
cc: Solar Designer <solar@openwall.com>, oss-security@lists.openwall.com
In-reply-to: Your message of "Wed, 19 Apr 2023 02:59:26 +0800."
             <wbhfpn7kbwg64jordjxtpqfmmowes5rncupgzfbnqdz3uljioq@hgz2w4thzmya>
References: <w7boj4fg4x2o2bjz7a7zkjk4bgxqvqyuxycdqqw2dl3bhanh6a@h4jtbccffxgv> <20230416205727.0XQJ2%steffen@sdaoden.eu> <20230418005741.GA25557@openwall.com> <np5pdxoq5ymnbm53vmsjsuxkvh72buihwbqpsaruzm4mcmz3tq@zyz7o5ey2xzt> <043b82cc304acacf@millert.dev> <wbhfpn7kbwg64jordjxtpqfmmowes5rncupgzfbnqdz3uljioq@hgz2w4thzmya>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-ID: <82886.1681845861.1@xerxes.sudo.ws>
Date: Tue, 18 Apr 2023 13:24:21 -0600
Message-ID: <043b8fbe6e014f17@millert.dev>
Subject: Re: [oss-security] CVE-2023-2002: Linux Bluetooth: Unauthorized management command execution

On Wed, 19 Apr 2023 02:59:26 +0800, Ruihan Li wrote:

> Yeah, I see that you are removing ioctl calls on standard file
> descriptors. So actually, just to confirm, it is feasible to avoid
> all ioctl calls to standard file descriptors with root privileges
> (under all command line arguments), by using /dev/tty, assuming
> something like the window size... Right?

For the most part, yes.  There are still some calls to isatty(3)
using the standard file descriptors when setting up the event loop
to run the program but that is after the user has been verified.
I will add checks that the fd is a character special file before
calling isatty(3).  In most cases the code wants the contents of
struct stat anyway, so the S_ISCHR check is basically free.

> If this is the case, I think it should not be difficult for other
> setuid programs to do similar things.  I am just thinking for a
> while, and cannot find a case where ioctl calls are unavoidable.

If there are setuid programs that call ttyname(3) that will also
call tcgetattr(3).  Also, the glibc getpass(3) function will use
tcgetattr(3) and tcsetattr(3) (to disable echo) on the standard
input if /dev/tty is not available.  For getpass(3) this could be
avoided by only trying to disable echo when using /dev/tty.  That
would change the behavior of things like:

    su < /some/other/tty 

when /dev/tty is unavailable but I don't know what use case that
would actually support.

 - todd
