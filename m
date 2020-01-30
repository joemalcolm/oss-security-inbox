X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3904" "Thursday" "30" "January" "2020" "11:23:28" "-0700" "Todd C. Miller" "Todd.Miller@sudo.ws" "<aff309c0b243705e@sudo.ws>" "114" "[oss-security] CVE-2019-18634: buffer overflow in sudo when pwfeedback is enabled" "^Date:" nil nil "1" "2020013018:23:28" "[oss-security] CVE-2019-18634: buffer overflow in sudo when pwfeedback is enabled" (number mark "        Todd.Miller@ Jan 30  114/3904  " thread-indent "\"[oss-security] CVE-2019-18634: buffer overflow in sudo when pwfeedback is enabled\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2019-18634: buffer overflow in sudo when pwfeedback is enabled" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 18299 invoked by uid 550); 30 Jan 2020 21:07:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 20282 invoked from network); 30 Jan 2020 18:23:41 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=sudo.ws; h=from:to
	:subject:mime-version:content-type:content-id:date:message-id;
	 s=selector1; bh=YWo3SpLYpcWCF3EqTsLbzuP+1a5BBXTBKkLNeyFKrDo=; b=
	kTqYWMGVVHsNPNCQLMfvdtHLSzg2LlWPVU9ik35iDILw6wKeZrm4TYyhhWZum2Gj
	qDRBWc4WxBVJ7LTWipkd+grglSQ3IWUKxuIBu+gFoVrRgAUn2MI9fbKQWzzSUP9P
	R+e2oVE+86R8TQCnsfLUzp6eNSOHg9Gkm6NJ12gd5bI=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=sudo.ws; h=from:to:subject
	:mime-version:content-type:content-id:date:message-id; q=dns; s=
	selector1; b=SHHQauyzUJhoMwBlpCbhfEthafpXHI6mAqiD7FavXgnHM9u+U1H
	4xoY7VBbr9QyOxjfJOAUAGPKgTi9ygIqzuA9hb/3RIlBA9P8Dc9kiknVdNfAPtDk
	fY884bke2lNDlZcsPkykuLDf7rA4+yoAhetxBuqU9/GaLC2NJy6sYEEs=
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-ID: <99670.1580408608.1@xerxes.sudo.ws>
Message-ID: <aff309c0b243705e@sudo.ws>
Date: Thu, 30 Jan 2020 11:23:28 -0700
From: "Todd C. Miller" <Todd.Miller@sudo.ws>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2019-18634: buffer overflow in sudo when pwfeedback is enabled
To: oss-security@lists.openwall.com

[CVE-2019-18634 was made public unexpectedly early yesterday which
 is why there was no advance notice for the distros list.]

Summary:

Sudo's "pwfeedback" option can be used to provide visual feedback
when the user is inputting their password.  For each key press, an
asterisk is printed.  This option was added in response to user
confusion over how the standard "Password:" prompt disables the
echoing of key presses.  While "pwfeedback" is not enabled by default
in the upstream version of sudo, some systems, such as Linux Mint
and Elementary OS, do enable it in their default sudoers files.

Due to a bug, when the "pwfeedback" option is enabled in the sudoers
file, a user may be able to trigger a stack-based buffer overflow.
This bug can be triggered even by users not listed in the sudoers
file.  There is _no_ impact unless "pwfeedback" has been enabled.

Sudo versions affected:

Sudo versions 1.7.1 to 1.8.30 inclusive are affected but only if
the "pwfeedback" option is enabled in sudoers.

A user with sudo privileges can check whether "pwfeedback" is enabled
by running:

    $ sudo -l

If "pwfeedback" is listed in the "Matching Defaults entries" output,
the sudoers configuration is affected.  In the following example,
the sudoers configuration is vulnerable:

    $ sudo -l
    Matching Defaults entries for millert on linux-build:
	insults, pwfeedback, mail_badpass, mailerpath=/usr/sbin/sendmail

    User millert may run the following commands on linux-build:
	(ALL : ALL) ALL

CVE ID:

This vulnerability has been assigned CVE-2019-18634 in the Common
Vulnerabilities and Exposures database.

Details:

Exploiting the bug does not require sudo permissions, merely that
pwfeedback be enabled.  The bug can be reproduced by passing a large
input to sudo via a pipe when it prompts for a password.  For
example:

    $ perl -e 'print(("A" x 100 . "\x{00}") x 50)' | sudo -S id
    Password: Segmentation fault

There are two flaws that contribute to this vulnerability:

    1.	The "pwfeedback" option is not ignored, as it should be,
	when reading from something other than a terminal device.
        Due to the lack of a terminal, the saved version of the
        line erase character remains at its initialized value of 0.

    2.	The code that erases the line of asterisks does not
        properly reset the buffer position if there is a write
        error, but it does reset the remaining buffer length.
	As a result, the getln() function can write past the
	end of the buffer.

On systems with unidirectional pipes, an attempt to write to the
read end of the pipe will result in a write error.  Because the
remaining buffer length is not reset correctly on write error when
the line is erased, a buffer on the stack can be overflowed.

Impact:

There is no impact unless "pwfeedback" has been enabled in the
sudoers file.

If "pwfeedback" is enabled in sudoers, the stack overflow may allow
unprivileged users to escalate to the root account.  Because the
attacker has complete control of the data used to overflow the
buffer, there is a high likelihood of exploitability.

Workaround:

If the sudoers file has "pwfeedback" enabled, disabling it by
pre-pending an exclamation point is sufficient to prevent exploitation
of the bug.  For example, change:

    Defaults pwfeedback

To:

    Defaults !pwfeedback

After disabling "pwfeedback" in sudoers using the visudo command,
the example "sudo -l" output becomes:

    $ sudo -l
    Matching Defaults entries for millert on linux-build:
	insults, mail_badpass, mailerpath=/usr/sbin/sendmail

    User millert may run the following commands on linux-build:
	(ALL : ALL) ALL

Fix:

The bug is fixed in sudo 1.8.31.

The following commit fixes CVE-2019-18634:
https://github.com/sudo-project/sudo/commit/fa8ffeb17523494f0e8bb49a25e53635f4509078

Credit:

Joe Vennix from Apple Information Security found and analyzed the bug.
