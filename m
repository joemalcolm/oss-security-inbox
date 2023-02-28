Received: (qmail 26038 invoked by uid 550); 28 Feb 2023 14:33:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24173 invoked from network); 28 Feb 2023 14:31:27 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=millert.dev; s=selector2;
	t=1677594671; h=from:from:reply-to:subject:subject:date:date:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=yK3f0NyHWy0BhmLmbgcEsJ/+mdVPRtvLC7sUKO/mKtU=;
	b=S/vaqaur+ms1QjfND16276YNN0Trd1rfcbqyeQZT/Bs3HLMdCPY/ZvKs2NZK4Fl0mU7z1L
	e6IRjTxAjUgeNgeRjPowu70tKQl6WUVhXJn6M82wBn7nitW7rXTIUtNU9zo7/JpHfayEFF
	9ta1wyJFkC6eDvOrsjpuz/E0Ub6v+2PtFFUaIdOSkBHCrMbV1i6dN7KdunwZzdfsVdbfQh
	O98nN4sM0aUdS1LkEfXT5+knzEAHFb7XXz0urhXjDCxYL7qPbxWsznp1Vigm3GBdwLPc1E
	aW/ERLG3zHv6sFAt4B5gojFvioljrv5viLcd8IeGb9JRyl3vCZxXloIkmaBr+A==
From: "Todd C. Miller" <Todd.Miller@millert.dev>
To: oss-security@lists.openwall.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-ID: <17348.1677594671.1@xerxes.sudo.ws>
Date: Tue, 28 Feb 2023 07:31:11 -0700
Message-ID: <6ce790cbffb04331@millert.dev>
Subject: [oss-security] sudo: double free with per-command chroot sudoers rules

A flaw exists in sudo's per-command chroot feature that could result
in the variable that stores the command being freed more than once.

I believe this is a fairly low-impact bug as the per-command chroot
feature is not widely used.  The bug was caught by glibc's double-free
detection while I was performing some chroot-related testing.  No
one else has reported the bug which leads me to believe it probably
has not been encountered in the wild.

Sudo versions affected:

    Sudo versions 1.9.8 through 1.9.13p1 inclusive are affected.
    Versions of sudo prior to 1.9.8 are not affected.

Details:

    Starting with Sudo 1.9.3, it is possible to specify an alternate
    root directory that sudo will change to before executing the
    command.  For example:

	someuser ALL = CHROOT=/var/www /bin/sh

    will result in /bin/sh being run inside the chroot jail /var/www
    when the specific user runs "sudo sh".

    Sudo 1.9.8 included a fix for a memory leak in the set_cmnd_path()
    function which can result in the "user_cmnd" variable being
    freed twice, but only when processing a sudoers rule that
    contains a "CHROOT" setting.  This does not affect the "chroot"
    Defaults setting.  Only a per-rule "CHROOT" setting will trigger
    the bug.

Impact:

    The bug can only be triggered by a user that has been granted
    sudo privileges using a sudoers rule that contain a "CHROOT"
    setting and the rule must match the current host.  If no users
    have sudoers rules containing "CHROOT" there is no impact.  This
    feature is not commonly used.

Workaround:

    Remove rules from the sudoers file than contain a "CHROOT"
    setting if using an affected version of sudo.

Fix:

    The bug is fixed in sudo 1.9.13p2.
