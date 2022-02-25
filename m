X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["8010" "Friday" "25" "February" "2022" "12:32:37" "+0100" "=?UTF-8?B?Q2FybG9zIEzDs3Bleg==?=" "clopez@suse.de" nil "192" "[oss-security] CVE-2022-24986: KCron: Insecure temporary file handling" nil nil nil "2" nil nil (number mark "U       clopez@suse. Feb 25  192/8010  " thread-indent "\"[oss-security] CVE-2022-24986: KCron: Insecure temporary file handling\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2022-24986: KCron: Insecure temporary file handling" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3571 invoked by uid 550); 25 Feb 2022 11:58:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17847 invoked from network); 25 Feb 2022 11:32:50 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1645788758; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=lMBcdWc3aZhlFH/6wd05PsUEcysSgFBHVeqFu4hBOLM=;
	b=hy9R8hld9ZR3GTo572MGN8wdi7HxvwU+GK/75Uq2si1mbThwLZpfZP9c043znwrANvTTOf
	ZHUkrRFXL/raUj9CF4tQi7ClQb4nY7MXYWVLWZw3Epww0rA6NVQu6396Q+rca/Ythd+Fla
	XHQR2lWq4EINa0WGWSSbCHNm+kSqqlU=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1645788758;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=lMBcdWc3aZhlFH/6wd05PsUEcysSgFBHVeqFu4hBOLM=;
	b=+V8d5OghLnyeVpV+gYQ+3LS7hSSTxVykuZB18RMMVz+cwr/8rHSit1bo65tNV+GNlAbzW3
	1fo4J63FVXYnehDA==
Message-ID: <1c07e043-dbbb-65ac-6246-fd03e93894ef@suse.de>
Date: Fri, 25 Feb 2022 12:32:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: oss-security@lists.openwall.com
From: =?UTF-8?Q?Carlos_L=c3=b3pez?= <clopez@suse.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: [oss-security] CVE-2022-24986: KCron: Insecure temporary file handling

Hello list,

Find below our report for CVE-2022-24986: Insecure temporary file 
handling in KDE KCron <= 21.12.2.

# 0. Overview

KCron [0] is a graphical frontend to the classical cron utility for the 
KDE desktop environment. In order to perform elevated tasks, such as 
modifying the system-wide crontab at `/etc/crontab`, a privileged helper 
program is used. Communication (via dbus) and authorization against the 
helper (via Polkit) is abstracted away with the KDE Kauth framework.

# 1. Analysis

The client (unprivileged) code is mainly contained in 
`src/crontablib/ctcron.cpp:CTCron::save()` and 
`src/crontablib/ctSystemCron:CTSystemCron::CTSystemCron()`. The client 
side has two different modes of operation:

- Saving content of the user-specific crontab. This is done via the 
`/usr/bin/crontab` setuid-root binary.
- Saving content of the system-wide crontab. This is done via invocation 
of the privileged privileged helper program on D-Bus 
(`src/helper/kcronhelper.cpp`).

In both cases a temporary file is created with the new contents and it 
is passed on to the respective mechanism. These temporary files are 
created under /tmp using unpredictable file names of the format 
`systemsettings.XXXXXX` with mode `0644`, and are thus world-readable

The first mode of operation is affected by an information leak, and the 
second one by a potential privilege escalation.

## 1.1. Information leak due to improper file permissions

When temporary files are created, the mode passed to the open call is 
`0666`, which causes the file to be world-readable.

```
openat(AT_FDCWD, "/tmp/systemsettings.jhcCtT", 
O_WRONLY|O_CREAT|O_TRUNC|O_CLOEXEC, 0666) = 15
```

Since created temporary files are world-readable, other users in the 
system might gain knowledge about other users' crontabs. The severity of 
this leak depends on the actual contents of the user specific crontab. 
The system wide crontab is usually installed as world-readable, so the 
leak does not apply there by default (but could still be an issue if 
`/etc/crontab` is hardened, and thus not meant to be read). Users could 
place passwords in their crontabs via environment variables, or the 
contents could be hints for further attack vectors.

## 1.2. Privilege escalation due to filename reuse

The name for the temporary file holding user changes is obtained once 
and reused each time the user saves crontab content. This means that, 
after the first time the temporary file is written, other local users in 
the system have knowledge of the used filename, and can stage attacks if 
the user should reuse the same instance of the tool.

```
CTCron::CTCron(...)
{
     ...
     QTemporaryFile tmp;
     tmp.open();
     d->tmpFileName = tmp.fileName(); // [A]
     ...
}

CTSaveStatus CTCron::save()
{
     bool saveStatus = saveToFile(d->tmpFileName); // [B]
     ...
     QFile::remove(d->tmpFileName); // [C]
     ...
}

bool CTCron::saveToFile(const QString &fileName)
{
     QFile file(fileName);
     if (!file.open(QIODevice::WriteOnly | QIODevice::Text))
         ...
     ...
}
```

The file name is obtained once in [A], when the CTCron object is 
instantiated, and reused in [B] every time the user saves their changes. 
The file is then removed explicitly in [C].

Temporary files are opened without passing the `O_EXCL` or `O_NOFOLLOW` 
flags, which can be exploited in two ways.

First, if `/proc/sys/fs/protected_symlinks` is disabled (see the manual 
page for proc(5)), the absence of `O_NOFOLLOW` means that the 
application will happily follow any symlink. Note that this protection 
is disabled by default for the vanilla kernel, but it is enabled by most 
distributions.

This can be exploited as follows:

- An attacker creates a world-writable directory under its own control 
and prepares a symlink attack into this directory:
   1. `mkdir -m 777 /tmp/evil-directory`
   2. `ln -s /tmp/evil-directory/evil-file /tmp/systemsettings.abcdef`
- When KCron re-creates the temporary file, the call will succeed, 
because the target file does not yet exist.
- After the file has been created in `/tmp/evil-directory`, the attacker 
can remove the `/tmp/evil-directory/evil-file`, as they have write 
permissions in the directory. After that, a new file under the 
attacker's control is created in its stead that contains malicous data. 
This is the race condition that needs to be won.
- Once either the KAuth helper or the crontab binary is invoked, the 
malicious data is placed as the new crontab content, allowing arbitrary 
code execution as the victim user (or as an arbitrary user in the case 
of the system crontab).

Second, if `/proc/sys/fs/protected_regular` is disabled, the absence of 
`O_EXCL` means that the call to `openat()` will not fail if the file 
already exists and is owned by a different user. In this case, the 
attacker does not even need to set up a symlink, as they can simply 
create a file with the appropiate name and world-writeable permissions. 
Once KCron is done writing to the temporary file, but before it is 
copied to its destination, the attacker can modify its contents, as the 
file is still under their control.

This all stems from a misuse of the `QTemporaryFile` object of the Qt 
framework. The abstractions this class provides make its use fairly 
non-obvious, as we already noted in the past [1].

# 2. Other minor issues

During our analysis we noticed other minor issues that do not pose an 
immediate security threat, but that we communicated to the maintainer 
nonetheless. These have since been addressed through upstream patches.

  - The helper's error handling is incomplete, only warnings will be 
logged, but neither is the operation aborted on errors nor are errors 
propagated back to the caller. No proper polkit authentication dialog 
with the active source/target arguments is displayed.
  - The helper's functionality is not limited to saving a crontab file, 
as it accepts source and destination arguments (i.e. an arbitrary file 
move scheme). If the helper were improperly parametrized, it could be 
used for arbitrary local root exploits. In the past we already 
identified issues with overly generic D-Bus file system APIs which can 
lead to security bugs [2].
  - There is an additional DoS vector due to file name reuse, as other 
users might place files at the expected temporary locations. This breaks 
the application, as it will not be able to create said temporary files. 
Of course, this is not an issue for a privileged user, which can remove 
the malicious files, and the option to update the crontab manually via 
CLI is still available, but it would defeat the purpose of the GUI program.

The referenced upstream patch to fix the issues [3] still contains a 
problem. With the patch the source (temporary) file under user control 
is `chmod()`ed by the helper program [4] to give it the right 
permissions for moving it to `/etc/crontab`. Our suggestion is to to 
overwrite the destination file instead. An upstream merge request is 
currently in the works to address this [5].

# 3. Timeline

2022-01-26 - Issues reported to upstream
2022-01-31 - Upstream starts working on fixes
2022-02-02 - Embargo date set to 2022-02-16
2022-02-04 - Patch proposal from maintainer
2022-02-15 - Patch pushed to upstream repository
2022-02-16 - KDE report goes public [6]

# 4. References

[0] https://invent.kde.org/system/kcron
[1] https://www.openwall.com/lists/oss-security/2018/04/24/1
[2] https://www.openwall.com/lists/oss-security/2019/07/09/3
[3] 
https://invent.kde.org/system/kcron/-/commit/ef4266e3d5ea741c4d4f442a2cb12a317d7502a1
[4] 
https://invent.kde.org/system/kcron/-/commit/ef4266e3d5ea741c4d4f442a2cb12a317d7502a1#87f74e7efe41bc6f7cbe1f834b88b2e31889c804_47_47
[5] https://invent.kde.org/system/kcron/-/merge_requests/14
[6] https://kde.org/info/security/advisory-20220216-1.txt

Best regards,

Carlos

-- 
Carlos López
Jr. Security Engineer
SUSE Software Solutions

