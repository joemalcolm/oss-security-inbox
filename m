Received: (qmail 26488 invoked by uid 550); 30 Jun 2025 16:14:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9663 invoked from network); 30 Jun 2025 14:40:55 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sudo.ws; s=selector2;
	t=1751294443; h=from:from:reply-to:subject:subject:date:date:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=46Xg6omi3bzHVOVODx8t49Gn/3KqBWM8lnEcJvDEnCM=;
	b=DAUNpgTtwRzA00DGgnZOQo8NFz5eauy9SN+hgL/FLy2gjgGLFtrhYQTA8iPJBGUT/KgksV
	rfhCI1psLi6enjtWUzYure7APpCJi1rpKpi/lDGIXJU5nVhrJc56wCs9NghOrvybOCAJ8o
	yTfEbSbw1Cyb7/RdSzLSvs0MuoMU0qqvwEbB2HFt7WxYArAYPuvlMGNhjarE/rkcyGWoS2
	1EvzP+HG9n0hoj7tNi6hvVxWUSAka3f7b4wU4RerKZa7xSWAA+t7VCZQkmq22Kn/O0yoHR
	baOfKZjVXdk6ZKXTMbTrXUl58p3OICErnxjJTOxa1Qsw7ttR7dOZmIHzrervpg==
From: "Todd C. Miller" <Todd.Miller@sudo.ws>
To: oss-security@lists.openwall.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-ID: <39280.1751294443.1@xerxes.sudo.ws>
Date: Mon, 30 Jun 2025 08:40:43 -0600
Message-ID: <0d043d81e86deba3@millert.dev>
Subject: [oss-security] CVE-2025-32462: sudo local privilege escalation via host option

Sudo's host (-h or --host) option is intended to be used in
conjunction with the list option (-l or --list) to list a user's
sudo privileges on a host other than the current one.  However, due
to a bug it was not restricted to listing privileges and could be
used when running a command via `sudo` or editing a file with
sudoedit.  Depending on the rules present in the sudoers file
this could allow a local privilege escalation attack.

Sudo versions affected:

    Sudo versions 1.8.8 to 1.9.17 inclusive are affected.

CVE ID:

    This vulnerability has been assigned CVE-2025-32462 in the
    Common Vulnerabilities and Exposures database.

Details:

    The intent of sudo's -h (--host) option is to make it possible
    to list a user's sudo privileges for a host other than the current
    one.  It was only intended be used with in conjunction with the
    -l (--list) option.

    The bug effectively makes the hostname portion of a sudoers rule
    irrelevant since the user can set the host to be used when evaluating
    the rules themselves.  A user must still be listed in the sudoers
    file, but they do not needed to have an entry for the current host.

    For example, given the sudoers rule:

    alice cerebus = ALL

    user alice would be able to run "sudo -h cerebus id" on any host,
    not just cerebus.  For example:

    alice@hades$ sudo -l
    Sorry, user alice may not run sudo on hades.

    alice@hades$ sudo -l -h cerebus
    User alice may run the following commands on cerebus:
	(root) ALL

    alice@hades$ sudo -h cerebus id
    uid=0(root) gid=0(root) groups=0(root)

Impact:

    Sudoers files that include rules where the host field is not the
    current host or "ALL" are affected.  This primarily affects sites
    that use a common sudoers file that is distributed to multiple
    machines.  Sites that use LDAP-based sudoers (including SSSD) are
    similarly impacted.

    For example, a sudoers rule such as:

    bob ALL = ALL

    is not affected since the host "ALL" already matches any hosts,
    but a rule like:

    alice cerebus = ALL

    could allow user alice to run any command even if the current
    host is not cerebus.

Fix:

    The bug is fixed in sudo 1.9.17p1.

Credit:

    Thanks to Rich Mirch from Stratascale Cyber Research Unit (CRU)
    for reporting and analyzing the bug.  The Stratascale advisory
    can be found at:
    https://www.stratascale.com/vulnerability-alert-CVE-2025-32462-sudo-host
