X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2018/01/11/4
Message-ID: <1068-1515706439.624909@uP7q.LsC9.WmNw>
Date: Thu, 11 Jan 2018 21:33:59 +0000
From: halfdog <me@...fdog.net>
To: oss-security@...ts.openwall.com
Subject: OpenSSH sftp remote code execution in chroot mode in VERY RARE cases
Content-Type: text/plain; charset=utf-8

Hello list,

This sounds worse, but it is not. And it is public anyway, so FYI:

With internal-sftp and chroot, sftp still attempts to execute
code from /etc/ssh/sshrc. See [0] for more information on testing
the issue. It will only affect you when using a writable chroot
(which is already documented in man-pages to be insecure) but
also some strange configuration settings, e.g. when using

ChrootDirectory /home

as recommended in [1] and having a user named "etc" and "bin"
created.

When creating a user "proc" that way, another issue prohibits
closing of inherited file descriptors, that then again may leak
to the two other users.

hd

[0] https://www.halfdog.net/Security/2018/OpensshSftpChrootCodeExecution/
[1] https://www.tecmint.com/restrict-sftp-user-home-directories-using-chroot/


