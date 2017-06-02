X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1524" "Friday" "2" "June" "2017" "12:48:20" "-0600" "Todd C. Miller" "Todd.Miller@courtesan.com" "<85f9558a0a5e1fa9@courtesan.com>" "30" "[oss-security] Arbitrary terminal access via sudo on Linux" "^Date:" nil nil "6" "2017060218:48:20" "[oss-security] Arbitrary terminal access via sudo on Linux" (number mark "        Todd.Miller@ Jun  2   30/1524  " thread-indent "\"[oss-security] Arbitrary terminal access via sudo on Linux\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26604 invoked by uid 550); 2 Jun 2017 18:49:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 25636 invoked from network); 2 Jun 2017 18:48:33 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=courtesan.com; h=from:to
	:subject:mime-version:content-type:content-id:date:message-id;
	 s=selector1; bh=Xoe6HaW/TY8l+ewtQyLzOBs6l0s=; b=hfSDvD4BQKDHNiB
	8JLjFbv/XlPnGjrGt+TQVjrB5KsGQk7FVWeHQ+GWqhxBLBlPyTHobMAcUVAX/J6S
	hBEYwOWa/5SCbVlGspq1ZAVymBOzPeJQuKXHA7mz41wIbCHL79YZZV7S8pOabPgg
	zArzVnvylG7ELX+5kUaY3fZTwQyQ=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=courtesan.com; h=from:to
	:subject:mime-version:content-type:content-id:date:message-id;
	 q=dns; s=selector1; b=TvKogwoVUykqlad738lmIjZYf49L8S5IpJDiqQjCj
	yccjgZGZBNHNexoW9+pFRNtjK4jkQqjDsNOr3h0/qlrSfuNq24eXf53+ZpcepJRa
	bumQqoPGEcpYIfsumLCkEWip1rKqDgJRI6bFCW0Lgsrvuvk3eN/NJhX8hy9PH8tU
	ac=
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-ID: <22594.1496429300.1@xerxes.courtesan.com>
Message-Id: <85f9558a0a5e1fa9@courtesan.com>
Date: Fri, 02 Jun 2017 12:48:20 -0600
From: "Todd C. Miller" <Todd.Miller@courtesan.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Arbitrary terminal access via sudo on Linux
To: Open Source Security <oss-security@lists.openwall.com>

The fix for CVE-2017-1000367 present in sudo 1.8.20p1 was incomplete
as it did not address the posibility of a program name that contains
a newline character.  This was fixed by sudo 1.8.20p2.  At the time,
this was not believed to be a security issue due to the change in
/dev traversal that was also part of sudo 1.8.20p1.

However, there is another vector that can be exploited in sudo's
get_process_ttyname() function under Linux.  The user can choose a
device number that corresponds to a terminal currently in use by
another user.  This allows an attacker to run any command allowed
by sudo with read and write access to an arbitrary terminal device.
Depending on the command, it may be possible to read sensitive data
(such as a password) from another user's terminal.

This alternate vector is still exploitable in sudo 1.8.20p1 when a
symbolic link is made from the sudo binary to a name that contains
a newline followed by a valid device number.  The full fix is
included in sudo 1.8.20p2, released May 31, 2017.

I have updated https://www.sudo.ws/alerts/linux_tty.html accordingly.
As before, the bug is specific to Linux systems that have SELinux
enabled.  Sudo reopens the terminal device after changing its SELinux
context when a role or type is specified on the command line.

Thanks to Stephane Chazelas, who pointed out that the original patch
did not address command names that include a newline, and Solar
Designer, who noticed that the bug could also be used to access
another user's terminal.

 - todd
