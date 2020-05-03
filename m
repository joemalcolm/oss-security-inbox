X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3462" "Monday" "4" "May" "2020" "00:24:19" "+0100" "Piotr Krysiuk" "piotras@gmail.com" "<CAFzhf4qP-kM7S7AciJgv_j90bDN6J2nunEerPW3aDAN3OxCbzw@mail.gmail.com>" "93" "[oss-security] [CVE-2020-12114] Linux kernel denial of service by corrupting mountpoint reference counter" nil nil nil "5" "2020050323:24:19" "[oss-security] [CVE-2020-12114] Linux kernel denial of service by corrupting mountpoint reference counter" (number mark "U       piotras@gmai May  4   93/3462  " thread-indent "\"[oss-security] [CVE-2020-12114] Linux kernel denial of service by corrupting mountpoint reference counter\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2020-12114] Linux kernel denial of service by corrupting mountpoint reference counter" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32188 invoked by uid 550); 4 May 2020 10:10:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22353 invoked from network); 3 May 2020 23:24:42 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=WgNU/ZePiEwaN/lip3PwbDAph+RsaT/pR3ONmhVn/o8=;
        b=hBDJyLKZMuc7PJS8YauT315jM/NuIZ+EY+//q1ig/tAUce9LP6cudt4azTbh1vRUqg
         XNj02Y+fSeSHJSDzkWqaLwfWSa7wAxx3HpkI9dYPQJJz3g9vHDHyvJepLttBF75eD8av
         D6FlUqpTTn7UEeoREsNtUiajlJrO0KiLBZIrb4nryPKEQB+U3zYLaT3IvrjXc/A+vlws
         1am6qwNXqASxnqtEQ0fFUS2Dph0pYNuA/mYFf4qusowbPhrZa3Y5yiW2u5sdRKRGS8VJ
         91Giedv2m0EDVSU0S5i6z7p+qIR2u6xrNFA4VPz9N3m4YTRnQWufhlcO/JD6n4FdLJKl
         +GVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=WgNU/ZePiEwaN/lip3PwbDAph+RsaT/pR3ONmhVn/o8=;
        b=phEAncevaW9bf1EQLN/EhHg4gppy1oh+UjC6oUakko26Gys0Vy5eYgYqmJbhgSlt8x
         30j79h/C0JtQkbcWa1TDoKlvJe6QpPGRhzznLECeiNBb67wqxwc19B3U+XIdjdH/a86O
         gxyRp7GClUyBgUWiC25ikwlBwr0MBcNayrP2mmWJR2MdlZGZBukDXNf6sosxZF0h1htK
         e+df4d/d3jXImdGxuAhe8sbUXr7G9jN6X20zEm6AfUobZj5N+gylOwT2Ec7weJAFUYGn
         vkmtnLAb0/UUkCkTsQRkfgepySvvEJZ69KsMW7v64JBpXDhyYeGcs/rwHcTJQnZHgMNh
         26mg==
X-Gm-Message-State: AGi0PuZghXO4qanYr8OjDSytud62rVKh+NiAssosnxpU5FqrqoKzGp09
	NeDwmeTkf9zFcd/UGmpMSW3FlM23jCdKk8loRwee3d8Gke0=
X-Google-Smtp-Source: APiQypLpQWvO7rvZC4M2FUCGHg2ld5KxSNloc2Aplys0vq6ZWwKHfdqVWX0/SdIcrkQ5MPqO5nvy1axNvJIN0TjsaN0=
X-Received: by 2002:adf:f08c:: with SMTP id n12mr3096413wro.105.1588548270234;
 Sun, 03 May 2020 16:24:30 -0700 (PDT)
MIME-Version: 1.0
From: Piotr Krysiuk <piotras@gmail.com>
Date: Mon, 4 May 2020 00:24:19 +0100
Message-ID: <CAFzhf4qP-kM7S7AciJgv_j90bDN6J2nunEerPW3aDAN3OxCbzw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000005b207a05a4c6b796"
Subject: [oss-security] [CVE-2020-12114] Linux kernel denial of service by corrupting
 mountpoint reference counter

--0000000000005b207a05a4c6b796
Content-Type: text/plain; charset="UTF-8"

A race condition in fs/namespace.c in the Linux kernel allows unprivileged
local users to cause a denial of service by corrupting mountpoint reference
counter

# Affected Versions

The denial of service has been reproduced against the following Linux
kernel releases from kernel.org:
* 4.19.118 (longterm release)
* 4.14.177 (longterm release)
* 4.9.220 (longterm release)
* 4.4.220 (longterm release)

The denial of service has also been reproduced against the following
distribution kernel versions provided by current Ubuntu LTS releases:
* 5.0.0-1034-gcp (distribution kernel provided by package
"linux-image-5.0.0-1034-gcp" from Ubuntu 18.04.4 LTS)
* 4.15.0-1061-gcp (current distribution kernel provided by package
"linux-image-4.15.0-1061-gcp" from Ubuntu 16.04.6 LTS with all updates
installed)

Linux kernel releases 5.3 and newer from kernel.org are not affected.

# Root Cause

Unprivileged local user can cause kernel panic by triggering destruction of
a mountpoint that is still in use.

This is possible by exploiting a race condition to corrupt mountpoint
reference counter when simultaneously executing put_mountpoint() and
pivot_root():
* one thread increments m_count member of struct mountpoint
  [under namespace_sem, but not holding mount_lock]
    pivot_root()
* another thread simultaneously decrements the same m_count
  [under mount_lock, but not holding namespace_sem]
    put_mountpoint()
      unhash_mnt()
        umount_mnt()
          mntput_no_expire()

# Bug Fix

To fix this race condition, grab mount_lock before updating m_count in
pivot_root().
This requires swapping two lines in fs/namespace.c:
```
@@ -3142,8 +3142,8 @@ SYSCALL_DEFINE2(pivot_root, const char __user *,
new_root,
  /* make certain new is below the root */
  if (!is_path_reachable(new_mnt, new.dentry, &root))
  goto out4;
- root_mp->m_count++; /* pin it so it won't go away */
  lock_mount_hash();
+ root_mp->m_count++; /* pin it so it won't go away */
  detach_mnt(new_mnt, &parent_path);
  detach_mnt(root_mnt, &root_parent);
  if (root_mnt->mnt.mnt_flags & MNT_LOCKED) {
```

The above fix has been merged into all relevant longterm branches by
upstream Linux kernel.

The following Linux kernel releases from kernel.org incorporate the fix:
* 4.19.119 (longterm release), see commit
https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/commit/?h=v4.19.119&id=f511dc75d22e0c000fc70b54f670c2c17f5fba9a
* 4.14.178 (current longterm release), see commit
https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/commit/?h=v4.14.178&id=e21c8c03af20932c15d8b1d3bb9cbad9607a6eab
* 4.9.221 (current longterm release), see commit
https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/commit/?h=v4.9.221&id=91e997939dda1a866f23ddfb043dcd4a3ff57524
* 4.4.221 (current longterm release), see commit
https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/commit/?h=v4.4.221&id=83354adbd7a967230bd23a547c5b695567ddba2c

# Proof Of Concept

I developed a PoC that allows unprivileged local users to reliably trigger
kernel panic inside VM instances on Compute Engine of Google Cloud Platform.

The PoC has been shared privately with <security@kernel.org> and via a
private bug report with Ubuntu.

# Discoverer

Piotr Krysiuk <piotras@gmail.com>

# References

CVE-2020-12114 (reserved via https://cveform.mitre.org/)

--0000000000005b207a05a4c6b796--
