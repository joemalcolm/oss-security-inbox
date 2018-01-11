X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["798" "Thursday" "11" "January" "2018" "21:33:59" "+0000" "halfdog" "me@halfdog.net" "<1068-1515706439.624909@uP7q.LsC9.WmNw>" "25" "[oss-security] OpenSSH sftp remote code execution in chroot mode in VERY RARE cases" "^Date:" nil nil "1" "2018011121:33:59" "[oss-security] OpenSSH sftp remote code execution in chroot mode in VERY RARE cases" (number mark "        me@halfdog.n Jan 11   25/798   " thread-indent "\"[oss-security] OpenSSH sftp remote code execution in chroot mode in VERY RARE cases\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 18019 invoked by uid 550); 11 Jan 2018 21:34:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17912 invoked from network); 11 Jan 2018 21:34:31 -0000
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Message-ID: <1068-1515706439.624909@uP7q.LsC9.WmNw>
Date: Thu, 11 Jan 2018 21:33:59 +0000
From: halfdog <me@halfdog.net>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] OpenSSH sftp remote code execution in chroot mode in VERY RARE cases
To: oss-security@lists.openwall.com

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


