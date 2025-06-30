Received: (qmail 28394 invoked by uid 550); 30 Jun 2025 16:14:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 10058 invoked from network); 30 Jun 2025 14:40:57 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sudo.ws; s=selector2;
	t=1751294458; h=from:from:reply-to:subject:subject:date:date:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=ZI9/Z7iB1VRk6pPVpl3wseH0XcXd5aDvYUe4zBlzlzU=;
	b=IIyxUfbJdWtlJlp9VY7vSW/10ghububYmBXzxItLzNdBee0A3gLSAX+HucqFDxqpXa9Mwc
	bEKYI1gk4n4IEnbllf1Du5PhWrh7E5SMEgKqiOLvrVbJzSOJO6sg88PD2SZcSQZBb8DuR3
	vbGXPszHu+zeekcm89VphqwYyJDy0AEDw8qrcqTayPHywtTUofla58IQixzrjbrp0oWDPR
	7IdVqrSBJlh4mGP0JqDcMX00RBXsVTAk8yUno06qj9TnEwD6GXzV/cpG28FmrENDvD1Sah
	05T1mk42ROF55Lr5l98EBuMPQzwoyYOSY3ENM5NUthpyVqjbnKeGUUMXmpSGAA==
From: "Todd C. Miller" <Todd.Miller@sudo.ws>
To: oss-security@lists.openwall.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-ID: <11867.1751294458.1@xerxes.sudo.ws>
Date: Mon, 30 Jun 2025 08:40:58 -0600
Message-ID: <0d043d8697db72f0@millert.dev>
Subject: [oss-security] CVE-2025-32463: sudo local privilege escalation via chroot option

An attacker can leverage sudo's -R (--chroot) option to run
arbitrary commands as root, even if they are not listed in the
sudoers file.

Sudo versions affected:

    Sudo versions 1.9.14 to 1.9.17 inclusive are affected.

CVE ID:

    This vulnerability has been assigned CVE-2025-32463 in the
    Common Vulnerabilities and Exposures database.

Details:

    Sudo's -R (--chroot) option is intended to allow the user to
    run a command with a user-selected root directory if the sudoers
    file allows it.  A change was made in sudo 1.9.14 to resolve
    paths via chroot() using the user-specified root directory while
    the sudoers file was still being evaluated.  It is possible for
    an attacker to trick sudo into loading an arbitrary shared
    library by creating an /etc/nsswitch.conf file under the
    user-specified root directory.

    The change from sudo 1.9.14 has been reverted in sudo 1.9.17p1
    and the chroot feature has been marked as deprecated.  It will
    be removed entirely in a future sudo release.  Because of the
    way sudo resolves commands, supporting a user-specified chroot
    directory is error-prone and this feature does not appear to
    be widely used.

    A more detailed description of the bug and its effects can be
    found in the Stratascale advisory:
    https://www.stratascale.com/vulnerability-alert-CVE-2025-32463-sudo-chroot

Impact:

    On systems that support /etc/nsswitch.conf a user may be able
    to run arbitrary commands as root.

Fix:

    The bug is fixed in sudo 1.9.17p1.

Credit:

    Thanks to Rich Mirch from Stratascale Cyber Research Unit (CRU)
    for reporting and analyzing the bug.  The Stratascale advisory
    can be found at:
    https://www.stratascale.com/vulnerability-alert-CVE-2025-32463-sudo-chroot
