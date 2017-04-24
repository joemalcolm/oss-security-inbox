X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2546" "Monday" "24" "April" "2017" "10:06:52" "-0400" "Russ Cox" "rsc@swtch.com" "<CADSkJJWpn3Z6VermSdq9f2ckxQ59BUXDZ4y=_A0gSQKv7YZ+zg@mail.gmail.com>" "63" "[oss-security] remote DoS via CPU exhaustion in anon FTP server glob expansion" "^Date:" nil nil "4" "2017042414:06:52" "[oss-security] remote DoS via CPU exhaustion in anon FTP server glob expansion" (number mark "        rsc@swtch.co Apr 24   63/2546  " thread-indent "\"[oss-security] remote DoS via CPU exhaustion in anon FTP server glob expansion\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3122 invoked by uid 550); 24 Apr 2017 15:04:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30459 invoked from network); 24 Apr 2017 14:07:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=swtch.com; s=google;
        h=mime-version:from:date:message-id:subject:to;
        bh=KvxIXiWJjxtNp1OSNMlZdXjjggdWBgXQHqQRW9sYmgk=;
        b=NQjfFffnPK9tg7/mnX5BiUtPCFX8cU40Hul61Ol2XOsJXZP8E/F3Z8u9oFr+uCzaH+
         oxVTnMyT6lUOp80ydIRtsSkZLUoFAZfXUdtcidEWKzWUnrNhZJF08edP5hdr4Pu0nFeV
         Q0i6A0gMo1cGYx76boUaWD34aqGueEbn8l+/jrnU3JUuz1iNqrQsumpFYWpT/IcLbywB
         xXwTlfnio7rjQDiNt0hbj1N0TeUFbdA8v4jLQx2fAgAWaBzJXbidds2lJRY7BvWEBrrW
         nl5T7RAca7D4767UQGYCWPHPbsrCmNXaEt2a6pJ864lxq/zb4Hd+OLjmNBd1hnZ6CsHF
         A6Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=KvxIXiWJjxtNp1OSNMlZdXjjggdWBgXQHqQRW9sYmgk=;
        b=XVR/JwZqdu9XXtWAU2oxx40skcdPvHpWzDdhCY0/N7gKu5yELwv6XbQ8gMcf/2sHlK
         SXM2ZaOOY88pVpj1hEfGRMiLJSUdhYPz001WnYCJ3SnsFd7VVi+u9nBZ76VgWmQCEnRq
         8NatFt3pQvVaAQnkstdENvQ6/EjwnQ4OH/pmXeEPmZLaTOX+TRpt1ML9SF7KjKjFqy3q
         DMkSOfqSaBGJTfIPeuwigvQ+WD3kD4W0YcLi6bfK76VhhRVUjMBDqOKT13A6agK5tu33
         Va4xJqk/KgLAAKCO3v3zqpzb6fE79QJ6EYEQ/ZHO3H6UgmoprBxSqrWKBp4WIiRU9ii+
         I+/Q==
X-Gm-Message-State: AN3rC/6/XFev+/wWO2I+zo8xp4kHL1Sbo0MacQKUMQQKYVgULxaqCr1W
	JlndH7yOJunZvXiku5u6LcC2L/8sQSE5nGs=
X-Received: by 10.98.199.18 with SMTP id w18mr15847993pfg.209.1493042832697;
 Mon, 24 Apr 2017 07:07:12 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CADSkJJWpn3Z6VermSdq9f2ckxQ59BUXDZ4y=_A0gSQKv7YZ+zg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Date: Mon, 24 Apr 2017 10:06:52 -0400
From: Russ Cox <rsc@swtch.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] remote DoS via CPU exhaustion in anon FTP server glob expansion
To: oss-security@lists.openwall.com

Essentially all Unix shells and many popular programming languages use
an exponential-time algorithm to decide whether a glob pattern matches
a particular file name. For example, on my Linux system, matching
a*a*a*a*a*a*a*a*b unsuccessfully against a file name consisting of 100
a's takes half an hour using Java 8 and 15 minutes using BSD libc's
glob(3) function.

If an attacker can control the pattern used against even moderately
sized file names (40 characters would be fine), a single failed
pattern match against a single file name can easily consume
hours of CPU.

This can happen in anonymous FTP servers, creating a possible remote
DoS attack.

Affected:
- tnftpd, a fork of the NetBSD ftpd, as shipped with macOS 10.12.4 and earlier
- Pure-FTPd 1.0.36

Possibly affected:
- standard ftpd on BSD-based systems

Not affected:
- netkit ftpd 0.17, if run on Linux
- ProFTPD 1.3.5
- vsftpd 3.0.2

On the language side, C on BSD and macOS systems, Java, Perl, and Tcl
implement glob pattern-matching with an exponential-time algorithm.
Code passing untrusted glob patterns to those implementations would
also be affected. Because BSD libc is affected, I expect that most of
the standard *BSD ftpd implementations are affected as well, but I have
not tested them.

C on Linux systems (using GNU glibc), Go, Ruby, and Rust implement
glob pattern-matching with a linear-time algorithm. Code passing
untrusted glob patterns to those implementations should be unaffected.

This problem is not CVE-2001-1501, nor CVE-2010-2632, nor
CVE-2015-5917, all of which are about patterns matching many files.
In this case, the pattern matches no files.

The closest previous report is CVE-2005-0256 (CPU problems caused by
repeated adjacent stars), which is a special case of the underlying
general problem here.

Due to the widespread but limited ("only" CPU exhaustion) nature of
the problem, I have not attempted any embargoed prenotification.
I will forward this note directly to product-security@apple.com and
bugs@pureftpd.org. I filled out the "DWF Open Source Request Form v2"
for a CVE number for the generic problem, and I will reply here when
I receive the number.

In addition to fixing the matching algorithms, I would suggest that
all FTP implementations impose CPU time limits on individual FTP
sessions to guard against future problems and consider removing glob
support entirely. I would also suggest that affected sites consider
not running anonymous FTP servers.

More details at https://research.swtch.com/glob.

Russ Cox
rsc@swtch.com
