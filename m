X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5302" "Thursday" "27" "January" "2022" "21:05:31" "+0100" "Mathias Krause" "minipli@grsecurity.net" nil "125" "[oss-security] Linux kernel: erroneous error handling after fd_install()" nil nil nil "1" nil nil (number mark "U       minipli@grse Jan 27  125/5302  " thread-indent "\"[oss-security] Linux kernel: erroneous error handling after fd_install()\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Linux kernel: erroneous error handling after fd_install()" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11815 invoked by uid 550); 27 Jan 2022 20:05:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11779 invoked from network); 27 Jan 2022 20:05:44 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=grsecurity.net; s=grsec;
        h=message-id:date:mime-version:user-agent:content-language:from
         :subject:to;
        bh=aoOC6FJ/w5e10oZYztLutxpNqQJdm618qaZxl5xPIAc=;
        b=U87D0dbqYhrKDSv7FWjz8MBN7VHVGXD5svWClTU+hPtK36dLb8zOpN1Y3H8oSuD/ga
         wtp08dzNp+KEPsOhHMG2SijjpiVndtB3IOxBfrfUNz/IK/ryJt9GfngqcCNmyWEuR1aZ
         oRIQQTiG+SJndPpBBX4128D0Gr6Wo2IgfY55LPACs6TTWzyINvGm1j5CpXQ2QnaquCSD
         fKjxrr+u6NqDFx7UeqV4eur3HaJBrXJCuPSFc7K71bQJ1oQXQbvB5/ERQ1f8Pvw+PvIG
         z4TolmaOWA0/9t98X+QWYBp7Eg2e/nj8/CI2ftlJ6AkBu7kcfqVgyUQu17Pd5yxbOJgd
         Elzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent
         :content-language:from:subject:to;
        bh=aoOC6FJ/w5e10oZYztLutxpNqQJdm618qaZxl5xPIAc=;
        b=dFjfZVA5VFAQJQVDJ6sjOzugGzx/fj8fPMi7lGdXPREQXp8SPijmUozuwSqoEhpqpf
         ZXoalpg1NMwIzDStb+LZNcBmrZZHB/35F8gs6Bqu51ijHqKSyFQPA1Kq562+WqEX12Mi
         P5JixVB6Ll1lsI8aW4JAhTDumBpvQnU6y8d87yhIAOuVX4oNDNRQShxnfqXRxHu+ZKBq
         1lelw7+rEOn/V8aJa0P0H0qEtl5eihbX/jYlOjOnnXmWVydiawWzwl8VZrXEn84Ocn76
         8w08Zqc4qGe+TMxb7ALXYVjiNlAAPdXP589S6HdfMogWlaHXmbrw1+dNMipSl6ci8eHo
         L2sQ==
X-Gm-Message-State: AOAM532EP7Hv+NQ0SZ2q9+JevqMg213ZJGi5BaBvPIVcKmxZA76tKvmN
	p2SFUyRPC6x1UEf7IwgZXKnO7ACPIwzq8w==
X-Google-Smtp-Source: ABdhPJzOCODzUWTaWc4im5zr+dCBKWu5rz3l7tkVNK2lzUDwrnWB9IWogbrCdjxHgk5futrsqO8uow==
X-Received: by 2002:a5d:67d1:: with SMTP id n17mr4226818wrw.271.1643313933199;
        Thu, 27 Jan 2022 12:05:33 -0800 (PST)
Message-ID: <e42a27f3-a888-dbbe-8833-9d8cf5c43038@grsecurity.net>
Date: Thu, 27 Jan 2022 21:05:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
From: Mathias Krause <minipli@grsecurity.net>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------ls01ws0i10mCxaMJ2Bq0GDLY"
Subject: [oss-security] Linux kernel: erroneous error handling after fd_install()

--------------ls01ws0i10mCxaMJ2Bq0GDLY
Content-Type: multipart/mixed; boundary="------------bdN2txYb073ZBSOgWgLpxP73";
 protected-headers="v1"
From: Mathias Krause <minipli@grsecurity.net>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Message-ID: <e42a27f3-a888-dbbe-8833-9d8cf5c43038@grsecurity.net>
Subject: Linux kernel: erroneous error handling after fd_install()

--------------bdN2txYb073ZBSOgWgLpxP73
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi again!

As requested by Alexander, here's the disclosure of two more issues and
a description of the general bug pattern behind all of them.

# The Bug Pattern

During the work on the vmwgfx issue[1], it was noticed, that there are
more code constructs in the kernel falling prone to the error pattern of
calling fd_install(fd, file) and trying to make sense of either 'fd' or
'file' afterwards. This is generally not safe, as the fd_install(...)
call will make them reachable by userland.

For example, a concurrent thread calling close(fd) in a tight loop
(remember that file descriptors are allocated in a predictable manner,
so the value of fd is known in advance) will release the associated
'file', likely leading to use-after-free bugs in kernel code, still
making use of it.

That should make it clear, that it's generally unsafe to reason about
'fd' or 'file' after a call to fd_install(). Now, in the vmwgfx case the
code tried to clean up by itself, by closing the (assumed unused) fd and
releasing the file using put_unused_fd(fd) and fput(file) respectively,
basically like this:

    fd_install(fd, file);
    ...
    if (copy_to_user(...)) {
        put_unused_fd(fd);
        fput(file);
        return -EFAULT;
    }

If copy_to_user() fails (returns a non-zero value), the code tries to
recover by releasing the allocated resources.

Now, this is an even worse bug, as 'fd' isn't "unused". It was populated
by fd_install(). What the error handling code instead allows is having a
valid file descriptor 'fd' for an already released 'file'. A typical
use-after-free scenario. It's just that an attacker doesn't have to look
for an KASLR leak, SMEP / SMAP bypass or other memory corruption aiding
bugs. One just has to sit and wait and look every now and then at the
file descriptor to see what actual file is currently attached to that
memory. That's because such an exploit doesn't try to introduce some
type confusion bug. It simply wants (and relies on) the memory to get
reallocated for a new 'file' object to gain access to other newly opened
files in the system, e.g. /etc/shadow. And that's very likely, as 'file'
objects use a dedicated slab cache.

# Additional Bugs

The following additional two code paths failing prone to the above bug
pattern have been identified in the Linux kernel:

1/ fanotify

If the copy_info_records_to_user() call in copy_event_to_user() fails,
it'll erroneously call put_unused_fd(fd) + fput(f) on a file that was
already populated by fd_install(). The erroneous code path, however, is
only reachable by privileged users, as one needs to pass the
"!FAN_GROUP_FLAG(group, FANOTIFY_UNPRIV)" test which won't if one isn't
already capable(CAP_SYS_ADMIN), i.e. has the CAP_SYS_ADMIN capability in
the _init_ user namespace, which basically means root.

The bug was introduced by commit f644bc449b37 ("fanotify: fix
copy_event_to_user() fid error clean up"), which is Linux v5.13.

A patch for the issue is pending and to be submitted by Dan Carpenter
anytime soon.

2/ fastrpc

The fastrpc driver is prone to an additional fput() after having called
fd_install() if the copy_to_user() fails in the fastrpc_dmabuf_alloc()
function. This is similar to the above described bug pattern. It's just
missing the put_unused_fd() which isn't needed to exploit the bug. In
fact, the lack of calling put_unused_fd() even avoids a warning in
alloc_fd() in case new file descriptors get allocated in the exploiting
process.

This bug was introduced by commit 6cffd79504ce ("misc: fastrpc: Add
support for dmabuf exporter"), which is Linux v5.1.

A patch for this issue can be found here:
https://patchwork.kernel.org/project/linux-arm-msm/patch/20220127130218.809=
261-1-minipli@grsecurity.net/

Thanks,
Mathias

[1] https://www.openwall.com/lists/oss-security/2022/01/27/4

--------------bdN2txYb073ZBSOgWgLpxP73--

--------------ls01ws0i10mCxaMJ2Bq0GDLY
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wsD5BAABCAAjFiEEd7J359B9wKgGsB94J4hPxYYBGYYFAmHy+wsFAwAAAAAACgkQJ4hPxYYBGYai
WQwAo0ddhzrGh76Cp/YpFbnN90dsNEjwhPmsqU6hqtGFEqVS9a/I4RrC0RDxurYd7eIzqGmk6Iw5
/QeYL+aoSVsZ5HuGFHy5CHZ+rhSUVqQK+QFOW+eYf5aLYQ2M8IR31ThTbeTJ1o9C1eyoSi0avD4D
PiuyeYvEZ/Gsdx/P7fwTAT5Ymx3caomc1cMRbEFg244K6GrNPmfx2f45FafHJcsDUa671Bi1WQrz
dSB5rPXqG0Dbx4sgdk3qwFEdaMGRxtZN8zJxd/WMJsETdSpAzSRDg+8i43WcodHhhXOkAPvLsZH5
AbkXo7CQ8lIcjgsfVviLvnDb5O9ByHoeYJUEf2kUdx6cJGC72P7kLUnDhyaLBpF6pEYLGySkELiq
75T27oinM90tKzoG5eTILKvXyG43sjTNO7/ANHMnVxHpbvqjheYyioByONzSiAhDrbDCUvbSs7KX
83CnfXRyFI+Nfqi1ojU85+pIAtCUAMvD4KdL+XTq2PmXKaHEGJjjNTGNoBN6
=SyEK
-----END PGP SIGNATURE-----

--------------ls01ws0i10mCxaMJ2Bq0GDLY--
