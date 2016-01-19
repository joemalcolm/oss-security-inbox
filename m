X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/01/19/2
Message-ID: <1889645664.9659032.1453204718551.JavaMail.zimbra@redhat.com>
Date: Tue, 19 Jan 2016 06:58:38 -0500 (EST)
From: Wade Mealing <wmealing@...hat.com>
To: OSS Security List <oss-security@...ts.openwall.com>
Subject: Linux kernel: use after free in keyring facility.
Content-Type: text/plain; charset=utf-8

Gday,

It was reported that possible use-after-free vulnerability in keyring facility, possibly leading to local privilege escalation was found. The function join_session_keyring in security/keys/process_keys.c holds a reference to the requested keyring, but if that keyring is the same as the one being currently used by the process, the kernel wouldn't decrease keyring->usage before returning to userspace. The usage field can be overflowed causing use-after-free on the keyring object.

This was introduced in commit 3a50597de8635cd05133bd12c95681c82fe7b878.

Perception point reported this vulnerability to Red Hat and it has been assigned CVE-2016_0728.  

Red Hat Bugzilla flaw:
 https://bugzilla.redhat.com/show_bug.cgi?id=1297475

Investigation:
 http://perception-point.io/2016/01/14/analysis-and-exploitation-of-a-linux-kernel-vulnerability-cve-2016-0728/

Patches will be available shortly with the upstream fix and are also explained in the investigation link above.
