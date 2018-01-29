X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3571" "Monday" "29" "January" "2018" "11:06:59" "-0500" "Michael Orlitzky" "michael@orlitzky.com" "<efa2af21-aeb9-39a0-bc87-38842e56a9b2@orlitzky.com>" "95" "[oss-security] CVE-2018-18078: systemd-tmpfiles root privilege escalation with fs.protected_hardlinks=0" nil nil nil "1" "2018012916:06:59" "[oss-security] CVE-2018-18078: systemd-tmpfiles root privilege escalation with fs.protected_hardlinks=0" (number mark "U       michael@orli Jan 29   95/3571  " thread-indent "\"[oss-security] CVE-2018-18078: systemd-tmpfiles root privilege escalation with fs.protected_hardlinks=0\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19924 invoked by uid 550); 29 Jan 2018 16:07:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19901 invoked from network); 29 Jan 2018 16:07:13 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=orlitzky.com; s=mail2;
	t=1517242020; bh=+ouFBjKO9eiamZKeB2gKTCem+mQOmhNsaZgeICe1eN8=;
	h=To:From:Subject:Date;
	b=F1l5JBRvv8Tu9FG8q0ql25kOKhKJVCet6PQQEN2pVybysPbP1xUTitDLGPy1eOZZC
	 RWuk7MJ4lY8kuZ6Oe7wD7ChTQtmHXfaRQPuHjvfatFUv9vjy52QX1qNb8ZwLsj+9QE
	 RxU7UcKgBAZzsUBW4ldCY2qe44+3l5192mRLTp3Y=
To: oss-security@lists.openwall.com
From: Michael Orlitzky <michael@orlitzky.com>
Message-ID: <efa2af21-aeb9-39a0-bc87-38842e56a9b2@orlitzky.com>
Date: Mon, 29 Jan 2018 11:06:59 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.5.2
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Subject: [oss-security] CVE-2018-18078: systemd-tmpfiles root privilege escalation with
 fs.protected_hardlinks=0

Product: systemd (systemd-tmpfiles)
Versions-affected: 236 and earlier
Author: Michael Orlitzky
Fixed-in: commit 5579f85 , version 237
Bug-report: https://github.com/systemd/systemd/issues/7736
Acknowledgments: Lennart Poettering who, instead of calling me an idiot
  for not realizing that systemd enables fs.protected_hardlinks by
  default, went out of his way to harden the non-default configuration.


== Summary ==

Before version 237, the systemd-tmpfiles program will change the
permissions and ownership of hard links. If the administrator disables
the fs.protected_hardlinks sysctl, then an attacker can create hard
links to sensitive files and subvert systemd-tmpfiles, particularly
with "Z" type entries.

Systemd as PID 1 with the default fs.protected_hardlinks=1 is safe.


== Details ==

When running as PID 1, systemd enables the fs.protected_hardlinks
sysctl by default; that prevents an attacker from creating hard links
to files that he can't write to. If, however, the administrator should
decide to disable that sysctl, then hard links may be created to any
file (on the same filesystem).

Before version 237, the systemd-tmpfiles program will voluntarily
change the permissions and ownership of a hard link, and that is
exploitable in a few scenarios. The most problematic and easiest to
exploit is the "Z" type tmpfiles.d entry, which changes ownership and
permissions recursively. For an example, consider the following
tmpfiles.d entries,

  d /var/lib/systemd-exploit-recursive 0755 mjo mjo
  Z /var/lib/systemd-exploit-recursive 0755 mjo mjo

Whenever systemd-tmpfiles is run, those entries make mjo the owner of
everything under and including /var/lib/systemd-exploit-recursive. After
the first run, mjo can create a hard link inside that directory pointing
to /etc/passwd. The next run (after a reboot, for example) changes the
ownership of /etc/passwd.

A proof-of-concept can be run from the systemd source tree, using
either two separate terminals or sudo:

  root # sysctl -w fs.protected_hardlinks=0
  root # sysctl -w kernel.grsecurity.linking_restrictions=0
  root # ./build/systemd-tmpfiles --create
  mjo $ ln /etc/passwd /var/lib/systemd-exploit-recursive/x
  root # ./build/systemd-tmpfiles --create
  mjo $ /bin/ls -l /etc/passwd
  -rwxr-xr-x 2 mjo mjo 1504 Dec 20 14:27 /etc/passwd

More elaborate exploits are possible, and not only the "Z" type is
vulnerable.


== Resolution ==

The recursive change of ownership/permissions does not seem to be safely
doable without fs.protected_hardlinks enabled.

In version 237 and later, systemd-tmpfiles calls fstatat() immediately
after obtaining a file descriptor from open():

  fd = open(path, O_NOFOLLOW|O_CLOEXEC|O_PATH);
  if (fd < 0) {
    ...
  }
  if (fstatat(fd, "", &st, AT_EMPTY_PATH) < 0)

The st->st_nlink field is then checked to determine whether or not fd
describes a hard link. If it does, the ownership/permissions are not
changed, and an error is displayed:

  if (hardlink_vulnerable(&st)) {
    log_error("Refusing to set permissions on hardlink...", path);
    return -EPERM;
  }

There is still a tiny window between open() and fstatat() where the
attacker can fool this countermeasure by removing an existing hard
link to, say, /etc/passwd. In that case, st->st_nlink will be 1, but
fd still references /etc/passwd. The attack succeeds, but is much
harder to do, and the window is as narrow as possible. More to the
point, it seems unavoidable when implementing the tmpfiles.d
specification.


== Mitigation ==

Leave the fs.protected_hardlinks sysctl enabled.
