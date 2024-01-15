Received: (qmail 30436 invoked by uid 550); 15 Jan 2024 22:57:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24095 invoked from network); 15 Jan 2024 22:51:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705359183; x=1705963983; darn=lists.openwall.com;
        h=content-transfer-encoding:autocrypt:subject:from:to
         :content-language:user-agent:mime-version:date:message-id:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mJN/lvYxda6S0JT6kDgcGWhR5DhHZccUb7A/s1AQcHU=;
        b=KM/f6L9jbc+gX34RRuZCm1vMpGIrRXl81GPd4Wb7qNVLHq/7GEzzIIO7xDLmcAgExW
         HG946UvGoR6CQtaSsOOMvqNJpUj4TM0To2wRu/B2VF7KFHrrNz0JT+dlUNjY4uQVEv3l
         eK1lPgpZcusAE+isS0b6Fm3uvSbsq1h037uCKP+LXyg2xCWooIBf2Kdk5NvXMpVUILGd
         jjRaTs2ndsicw9nj/SE5W973ceok72zUVvuaMFLeSt4E0kq3QhlSZ/32hw5NPY6HIhXC
         jf4QeEch73SRc9ike7IqkG7Nkqk/Gs+UNcsaNdzx9esXlV8VMm8IT24Oo6VmSCGnJgSr
         dAig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705359183; x=1705963983;
        h=content-transfer-encoding:autocrypt:subject:from:to
         :content-language:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mJN/lvYxda6S0JT6kDgcGWhR5DhHZccUb7A/s1AQcHU=;
        b=RNaB0cAcYdSENTsh55Whc0xcjVhcDWYB0eI8pLM5umks7nTs/J5kwair4VjZnDJYqu
         xCn3jzCvssiZHO6NKZQJgVX20RwHtq6D8Btvk/5KJQkvYZukqFBbiAw357yq7xf/ZTS0
         l96CMAgZM+qDNQ9iAqEq55Q1FJoKoPtTFBQpDFIcwZyUz4VLE+V+M+6zjvMlRXNaDSun
         GWSePUncDmlX7oidtZ0bRGi8vIUlCIOcQPszEvM7AbuAxBiDO7f/x4M+JUk4Aba7vuQz
         ER6HMBwB8fchYpz0jMwQAigejyMH4yrGX9CPMjS2InM1CqyKILb9CDu+pFdw8LhqwOmV
         qdxA==
X-Gm-Message-State: AOJu0YxFucSYugRf13SidabUsJFuXX7kCwWwa716zr2pTkRBAhmaOhoP
	yolDejuHLxd6XbhjSehqtM/TEXMu3BovCwKy
X-Google-Smtp-Source: AGHT+IF4HSP+v2NzqsdSxGcAkOb17YvyLExibJ2St15T6M9ljfyEezm7Ov8lc2XjCSScQhfzcii8wQ==
X-Received: by 2002:a05:6512:368e:b0:50e:7410:d293 with SMTP id d14-20020a056512368e00b0050e7410d293mr2737691lfs.135.1705359182722;
        Mon, 15 Jan 2024 14:53:02 -0800 (PST)
Message-ID: <36df55b7-dae7-4ea3-a986-92446a6441dc@gmail.com>
Date: Tue, 16 Jan 2024 01:52:16 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US, ru-RU
To: oss-security@lists.openwall.com
From: Maxim Suhanov <dfirblog@gmail.com>
Autocrypt: addr=dfirblog@gmail.com; keydata=
 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
 dYogk0etDpLCVA4wRpRiqXUSxs8=
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: [oss-security] CVE-2023-4001: a password bypass vulnerability in the downstream GRUB
 boot manager

References:

https://dfir.ru/2024/01/15/cve-2023-4001-a-vulnerability-in-the-downstream-grub-boot-manager/
https://access.redhat.com/security/cve/cve-2023-4001

Plain-text details taken from the first reference:

One can set a password to protect the boot menu entries and the 
command-line shell of the GRUB boot manager (see the official manual and 
the Red Hat manual). This is an additional security measure to be used 
along with a BIOS/UEFI password (e.g., to protect corporate computers 
from unprivileged users trying to leverage their physical access to boot 
another operating system or to escalate the privileges in an installed 
operating system).

Under the hood, this feature is implemented as two GRUB commands: 
“password” and “password_pbkdf2“. When one of these commands is issued 
with a proper set of arguments, a user with a specified password (or its 
hash) is created. And only those users listed in the “superusers” 
environment variable (when it’s set by issuing the “set” command) are 
allowed to edit boot menu entries and execute commands in the GRUB 
shell. (A physically-present user is required to authenticate as a 
superuser when trying to edit a menu entry or trying to enter the GRUB 
shell.)

In most cases, commands to set the “superusers” variable and to create 
corresponding users are stored in the GRUB configuration file, 
“grub.cfg” (which is more like a script, not a pure configuration file).

There were some vulnerabilities affecting the GRUB password protection 
feature, like weak permissions for the GRUB configuration file that 
allowed unprivileged users to obtain plain-text passwords and/or 
password hashes (for example: CVE-2012-2314, CVE-2013-4577, and 
CVE-2021-3981), an integer underflow (CVE-2015-8370), and even an 
improper string comparison (CVE-2009-4128).

Now, there is one more: CVE-2023-4001.

This vulnerability allows unprivileged users with physical access to a 
computer to bypass the password protection feature of the GRUB boot 
manager on many (but not all) UEFI-based computers. In some uncommon 
setups, no unprivileged access is required (so, physical access without 
an ability to log in into an operating system is enough).

In theory, commands required to properly enable the password protection 
feature (i.e., to create a user and to set a list of superusers) of the 
GRUB boot manager can be stored in two locations: in the configuration 
file embedded in the GRUB image (which is an EFI executable) and in the 
“external” configuration file (which is most likely named “grub.cfg“).

In the UEFI Secure Boot world, GRUB images are signed, so they can’t 
contain anything other than a hard-coded (vendor-defined) password or 
its hash (and, hopefully, there are none). So, the corresponding 
commands have to be stored in the “external” configuration file, “grub.cfg“.

Originally, on BIOS-based systems, this configuration was stored as a 
single file in the same directory with the GRUB files.

But on UEFI computers this configuration became split between two files: 
the first one in the EFI System Partition volume 
(“/boot/efi/EFI/<vendor>/grub.cfg“; it’s usually a FAT12/16/32 file 
system) and the second one in the “/boot” volume (“/boot/grub/grub.cfg” 
or “/boot/grub2/grub.cfg“; it’s usually a file system not supported by 
the UEFI firmware: e.g., Ext2/4 or XFS). The latter will called “the 
main configuration file” here.

A thorough explanation of this new scheme can be found here: 
https://fedoraproject.org/wiki/Changes/UnifyGrubConfig.

When the GRUB password is set (e.g., using the “grub2-set-password” 
tool), it’s written to the main configuration file. And the first 
configuration file is just a simple script to locate and execute the 
main configuration file (as shown on the screenshot below).

<screenshot>

A configuration file found in the EFI System Partition (CentOS Stream 9)

If the password-related commands were stored in the first configuration 
file, there would be no issue described in this post. But they are 
stored in the main configuration file, which is found and then executed 
by the first configuration file.

What if the main configuration file isn’t found? The GRUB boot manager 
will spawn its shell.

Interestingly, we can force the main configuration file to “disappear” 
(at least on some systems) when the first configuration file is 
executed. So, there would be no password prompt (because no 
password-related commands are ever executed after the power-on event) 
and the GRUB shell will be immediately available to a physically-present 
user.

The UUID is the key! The main configuration file is located using a 
predefined path: “<device>/grub2/grub.cfg” (as shown on the screenshot 
above). Here, “<device>” is a volume found by its file system UUID using 
the “search” command.

And duplicate file system UUIDs pose a security problem…

If there are two file systems sharing the same UUID, one of them is the 
real “/boot” volume and another one is an empty volume, the GRUB boot 
manager could, under some circumstances, pick a wrong device as 
containing the main configuration file. And if there is no main 
configuration file stored (that empty volume case), the GRUB shell is 
spawned.

Internally, the “search” command tries every partition on every block 
device until a specified signature (a file system UUID in this case, but 
the command also supports searching by a volume label and by a file) is 
found.

All block devices are tried in the same order as returned when 
enumerating their EFI handles (“hd0”, “hd1”, “hd2” and so on, “hd0” 
corresponds to the first EFI handle returned when enumerating EFI block 
devices). Some UEFI implementations enumerate non-removable drives 
before removable ones, while others do exactly the opposite (e.g., my 
Lenovo laptop exposed this behavior; the UEFI implementation of 
VirtualBox with USB3 support enabled enumerates USB sticks before 
internal drives too).

So, if an attached removable drive (like a USB stick) becomes “hd0” in 
the GRUB boot manager (and the computer’s internal drive is “hd1” in 
that case), it’s possible to bypass the GRUB password protection feature 
by placing an empty file system with the same UUID as the real “/boot” 
volume onto that removable drive and attaching it to the computer before 
the boot. During the boot, the GRUB boot manager will simply spawn its 
shell, without even asking for a password (and without changing the boot 
order, of course).

Unprivileged users can learn the UUID value of the “/boot” volume using 
the “lsblk” tool (because file system UUIDs are exposed to unprivileged 
users).

Here is a video demonstrating the attack: 
https://drive.google.com/file/d/1mMlEIgfnUKIgaOEBNmtWuRo7RUAqjDrT/view?usp=sharing.

It should be noted that some Linux distributions provide enough debug 
output in a separate console, so a necessary UUID can be obtained from 
there (and no unprivileged access to the operating system is required in 
this case).

Timeline

  2023-04-03: the vulnerability was discovered by me.
  2023-07-17: the vulnerability was reported by me to Red Hat.
  2023-10-17: an initial fix is available for testing.
  2023-10-18: an issue was discovered by me in that fix (an attacker 
could bypass an additional check implemented by the patch by attaching 
10 removable drives to the computer, if that number of removable drives 
is supported by the firmware).
  2023-10-30: a new fix is available for testing.
  2023-10-31: two issues were discovered in that fix (one issue is a 
“huge” heap overflow introduced when working with strings in the patched 
code, another issue is a minor out-of-bounds write of a null byte).
  2023-10-31: a final fix is available.
  2023-11-23: the disclosure date is agreed upon — 2024-01-15.
  2024-01-12: the vulnerability is disclosed by Red Hat.
  2024-01-15: this post has arrived.

Fix

A fix proposed by Red Hat implements a new argument to the “search” 
command, which restricts the UUID scan to the block device used to 
launch the GRUB boot manager. This means that the “/boot” volume must 
reside on the same drive as the EFI System Partition.

An alternative (but not implemented) approach would be to use something 
that isn’t exposed to unprivileged users as a signature to locate the 
“/boot” volume. This could be a file with a random name residing in a 
directory with restricted permissions.

