X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1655" "Tuesday" "14" "July" "2015" "12:53:58" "+0200" "Martin Carpenter" "mcarpenter@free.fr" "<1436871238.28364.89.camel@juliet.mcarpenter.org>" "56" "[oss-security] CVE request: ansible zone/chroot/jail escape" nil nil nil "7" "2015071410:53:58" "[oss-security] CVE request: ansible zone/chroot/jail escape" (number mark "        mcarpenter@f Jul 14   56/1655  " thread-indent "\"[oss-security] CVE request: ansible zone/chroot/jail escape\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22170 invoked by uid 550); 14 Jul 2015 10:54:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22151 invoked from network); 14 Jul 2015 10:54:11 -0000
Authentication-Results: sfrmc.priv.atos.fr; dkim=none (no signature);
	dkim-adsp=none (no policy) header.from=mcarpenter@free.fr
X-SFR-UUID: 20150714105359666.A2C117000096@msfrf2219.sfr.fr
Message-ID: <1436871238.28364.89.camel@juliet.mcarpenter.org>
X-Mailer: Evolution 3.10.4-0ubuntu2
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: cve-assign@mitre.org
Date: Tue, 14 Jul 2015 12:53:58 +0200
From: Martin Carpenter <mcarpenter@free.fr>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request: ansible zone/chroot/jail escape
To: oss-security@lists.openwall.com

Hi,

I recently found a symlink attack that enables a malicious
zone/chroot/jail managed by ansible to escape into the managing host.
This was fixed in ansible 1.9.2 (commit list below, see
https://github.com/ansible/ansible).

I am not an ansible committer but Toshio requested I follow up. I
understand that a request was made by Toshio to CVE-assign on 1st July
but no response was received. The commits are already public and it has
been announced on ansible's security page:
http://www.ansible.com/security.

Could a CVE please be assigned to this issue?


Thanks,

Martin.


commit 548a7288a90c49e9b50ccf197da307eae525b899
Author: Toshio Kuratomi <toshio@fedoraproject.org>
Date:   Wed Jun 24 01:00:22 2015 -0700

    Use BUFSIZE when putting file as well as fetching file.

commit 270be6a6f5852c5563976f060c80eff64decc89c
Author: Toshio Kuratomi <toshio@fedoraproject.org>
Date:   Tue Jun 23 22:27:45 2015 -0700

    Fix exec_command to not use a shell

commit 952166f48eb0f5797b75b160fd156bbe1e8fc647
Author: Toshio Kuratomi <toshio@fedoraproject.org>
Date:   Mon Jun 22 20:07:29 2015 -0700

    Fix problem with chroot connection plugins and symlinks from within
the chroot.

commit 0777d025051bf5cf3092aa79a9e6b67cec7064dd
Author: Toshio Kuratomi <toshio@fedoraproject.org>
Date:   Fri Jun 19 11:09:48 2015 -0700

    Fix problem with jail and zone connection plugins and symlinks from
within the jail/zone.

commit ca2f2c4ebd7b5e097eab0a710f79c1f63badf95b
Author: Toshio Kuratomi <toshio@fedoraproject.org>
Date:   Fri Jun 19 09:41:48 2015 -0700

    Fix problem with jail and zone connection plugins and symlinks from
within the jail/zone.



