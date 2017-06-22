X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1998" "Thursday" "22" "June" "2017" "22:01:10" "+0100" "Simon McVittie" "smcv@debian.org" "<20170622210110.zqlh2rn5cnzsre65@perpetual.pseudorandom.co.uk>" "47" "[oss-security] CVE-2017-9780: Flatpak: privilege escalation via setuid/world-writable file permissions" nil nil nil "6" "2017062221:01:10" "[oss-security] CVE-2017-9780: Flatpak: privilege escalation via setuid/world-writable file permissions" (number mark "U       smcv@debian. Jun 22   47/1998  " thread-indent "\"[oss-security] CVE-2017-9780: Flatpak: privilege escalation via setuid/world-writable file permissions\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23944 invoked by uid 550); 22 Jun 2017 21:01:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23909 invoked from network); 22 Jun 2017 21:01:26 -0000
Date: Thu, 22 Jun 2017 22:01:10 +0100
From: Simon McVittie <smcv@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <20170622210110.zqlh2rn5cnzsre65@perpetual.pseudorandom.co.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20170306 (1.8.0)
Subject: [oss-security] CVE-2017-9780: Flatpak: privilege escalation via
 setuid/world-writable file permissions

Impact: privilege escalation
Attack range: local
Vulnerable: all versions < 0.8.7, 0.9.x < 0.9.6
Fixed in: 0.8.x >= 0.8.7, all versions >= 0.9.6
Reference: https://github.com/flatpak/flatpak/issues/845

Flatpak is a desktop application distribution framework for Linux.

Colin Walters discovered a security vulnerability in versions of Flatpak
prior to 0.8.7. A third-party app repository could include malicious apps
that contain files with inappropriate permissions, for example setuid or
world-writable. Older Flatpak versions would deploy the files with those
permissions, which would let a local attacker run the setuid executable
(escalating their privileges) or write to the world-writable location.

In the case of the system helper used when an app is installed
system-wide, files deployed as part of the app are owned by root, so
in the worst case the app repository could arrange for a setuid root
executable to be present.

There are several mitigations:

* The sandboxed apps installed by Flatpak are run with PR_SET_NO_NEW_PRIVS,
  so the Flatpak app itself cannot escalate privileges via setuid.
* The attacker making use of these inappropriate permissions to escalate
  privileges must be local.
* If you are using Flatpak to install apps from a third-party vendor,
  then there is already a trust relationship: the app is sandboxed, but
  the third-party vendor chooses what parameters are used for the sandbox.
* The default polkit policies will not allow apps to be installed
  system-wide unless a privileged (root-equivalent) user has added the
  third-party app repository, which indicates that the privileged user
  trusts the operator of that repository.

This vulnerability is tracked as
<https://github.com/flatpak/flatpak/issues/845>, and as CVE-2017-9780.

In the 0.8.x stable branch this vulnerability was fixed in version 0.8.7.

In the 0.9.x development branch this vulnerability was fixed in version
0.9.6.

Regards,
    S
-- 
Simon McVittie
Collabora Ltd. / Debian
