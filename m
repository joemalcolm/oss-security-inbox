X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6393" "Saturday" "29" "January" "2022" "20:07:27" "+0100" "Mathias Krause" "minipli@grsecurity.net" nil "144" "[oss-security] Linux kernel: use-after-free of user namespace on shm and mqueue destruction" nil nil nil "1" nil nil (number mark "U       minipli@grse Jan 29  144/6393  " thread-indent "\"[oss-security] Linux kernel: use-after-free of user namespace on shm and mqueue destruction\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Linux kernel: use-after-free of user namespace on shm and mqueue destruction" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24524 invoked by uid 550); 29 Jan 2022 19:07:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24485 invoked from network); 29 Jan 2022 19:07:42 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=grsecurity.net; s=grsec;
        h=message-id:date:mime-version:user-agent:content-language:from
         :subject:to;
        bh=LZEB7NU3a8f91TLthdpNJ1ZIirERm9+juGQjH8hpSls=;
        b=mSbAeG/fN9FjOIfbQ6BppxBAdTqc4WS0/Z4X4VjYyon9qgoh9Z/ZXNEQTPRnp4Sa2m
         rQaDKFDySPqLqC/int3S0z3vh4/fVp4OJwL9ZmxET0NXGKe/xygJWS4HU8CeVk0LMBYM
         H96x3w7hixZ93TT0wmII+kiFezF5j1/yBNhRyye2z90DwNRGdUKgDl2mbCmeSktdX8Bb
         11tWO1bzsyHIDrDm43JPQNlM63GbGTcxmH0JewR65gSP1mYnyOstx8KI37LKhocVEy1D
         vKsvd7c5w3Xsx2KKmUwjzv1a0WJKyZgg1WRaPi3kj22zf7S/0biEv8n4sgxKTD7TqUjK
         SVvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent
         :content-language:from:subject:to;
        bh=LZEB7NU3a8f91TLthdpNJ1ZIirERm9+juGQjH8hpSls=;
        b=wUUV3EfG5ntgl+R34c3Ncx3Iyju6/DCWZvI3aUrB2zH9MsNQWYsYJqz+tVeGwE8UbS
         ZYv1wQ4S0yXv/fP9bksWc8BdjY480NG/8o3jrJfOdulsvcA0ZZq5CR630wJfKwrErW9n
         1tgvY1xE+DuyO+b1INlBidUxYFDn3MUKNEri5MOLcg0+Ztu+JmSakm6c9eU1dPc+8rAB
         PNd6IkH155AKWkUxOxadWtZXFeyfvLK5D7iZ5NrAsv6VXw5+yHJbLotJfFkpDjSI0D3r
         Ex7l+XxU7MIK10bIMS7R1y3tOSIxNSkn/QVpXKAfBB/ZiCfHVaLneYje+tTdbLv/Frkw
         6YOg==
X-Gm-Message-State: AOAM531pwQ0u04U8ErDs268kJ9Ekg/lltWiaBSZ9T0g1qFkR80l+ZB/J
	cJiibIoPKC+j0GnSXAFGbZj1Z4GxbGt60Q==
X-Google-Smtp-Source: ABdhPJz7HiIMdAKXO/cPFAlEB+vzEpZ8pXNu9kKwz4MdZq09IfNAb41UEZj5zqYuvu01EKeQh6x7Wg==
X-Received: by 2002:a17:907:1b15:: with SMTP id mp21mr11203174ejc.533.1643483250690;
        Sat, 29 Jan 2022 11:07:30 -0800 (PST)
Message-ID: <69014e75-e96d-6200-a9d3-13248d35d864@grsecurity.net>
Date: Sat, 29 Jan 2022 20:07:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
From: Mathias Krause <minipli@grsecurity.net>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------3dSz9VduE4RvwxLOLoccXVRv"
Subject: [oss-security] Linux kernel: use-after-free of user namespace on shm and mqueue
 destruction

--------------3dSz9VduE4RvwxLOLoccXVRv
Content-Type: multipart/mixed; boundary="------------o0nJcuferTHm5eb8LSTolT00";
 protected-headers="v1"
From: Mathias Krause <minipli@grsecurity.net>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Message-ID: <69014e75-e96d-6200-a9d3-13248d35d864@grsecurity.net>
Subject: Linux kernel: use-after-free of user namespace on shm and mqueue
 destruction

--------------o0nJcuferTHm5eb8LSTolT00
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi!

A use-after-free vulnerability was found in the way certain rlimit
conversions to 'ucounts' were done, affecting kernels containing merge
commit c54b245d0118 ("Merge branch 'for-linus' of
git://git.kernel.org/pub/scm/linux/kernel/git/ebiederm/user-namespace")
which is Linux v5.14 and newer.

The underlying issue was already noticed last year in a KASAN report[1]
in the mqueue code but could only be recently root-caused with the help
of our report and reproducer.

The fix was merged yesterday into Linux mainline:
https://git.kernel.org/linus/f9d87929d451d3e649699d0f1d74f71f77ad38f5

However, in our opinion neither the commit itself nor its merge commit
(https://git.kernel.org/linus/76fcbc9c7c57a5d4) clearly expresses the
impact of the vulnerability.

See below for some background information about 'ucounts' and our
analysis of the issue that we previously shared in a similar form with
security@kernel.org on January 21st:

The 'ucounts' scheme "bubbles up" limit changes to the uppermost user
namespace by attaching and traversing a user namespace to the 'ucounts'
object. However, that user namespace pointer isn't reference-counted. As
the lifetime of a 'ucounts' object isn't strictly tied to that of the
user namespace it was created for, it can outlive the latter, making its
'ns' member pointing to free'd memory. Such usages may happen in the shm
and mqueue code by making use of current_ucounts() and getting a
reference to it via get_ucounts().

We noticed the issue during testing and root-caused it to a
use-after-free of a user namespace object on shm destruction as follows:

1/ A process creates a new shm segment.

2/ It then forks a child that enters a new user namespace, so it gets
   its own 'ucounts' (alloc_ucounts() will create a new one via
   inc_user_namespaces(), as the namespaces differ) that gets attached
   to the new user namespace.

3/ The child process attaches its 'ucounts' to the shm object by a call
   to semctl(SHM_LOCK), see ipc/shm.c:shmctl_do_lock(), lines 1198 and
   1203 in particular:

   1197     if (cmd =3D=3D SHM_LOCK) {
   1198         struct ucounts *ucounts =3D current_ucounts();
   1199
   1200         err =3D shmem_lock(shm_file, 1, ucounts);
   1201         if (!err && !(shp->shm_perm.mode & SHM_LOCKED)) {
   1202             shp->shm_perm.mode |=3D SHM_LOCKED;
   1203             shp->mlock_ucounts =3D ucounts;
   1204         }
   1205         goto out_unlock0;
   1206     }

   shmem_lock() in line 1200 calls user_shm_unlock() which calls
   get_ucounts() to get a reference to the 'ucounts' object, which
   allows the ucounts object to outlive its user namespace.

4/ The child process terminates, which leads to the destruction of its
   task_struct, the various cred objects and, in turn, the user
   namespace, as there's no reference (but pointers!) to it any more.
   The 'ucounts' object, however, survives, as it still has a live
   reference from the shmem_lock() done before. But it now has a
   dangling 'ns' pointer, as the user namespace was destroyed already.

5/ The parent process now destroys the shm segment which leads to
   shm_destroy() calling shmem_lock() with the (still valid) 'ucounts'
   of the already dead child, leading to ... -> user_shm_unlock() ->
   dec_rlimit_ucounts() dereferencing a dangling 'ns' pointer when
   trying to advance 'iter' in line 285:

   285   for (iter =3D ucounts; iter; iter =3D iter->ns->ucounts) {
   286       long dec =3D atomic_long_sub_return(v, &iter->ucount[type]);
   287       WARN_ON_ONCE(dec < 0);
   288       if (iter =3D=3D ucounts)
   289           new =3D dec;
   290   }

We shared a reproducer for the bug including exploitation notes with the
report to security@kernel.org, but we don't intend to share it any
further, as the above bug description should allow easy recreation
thereof anyway.

Exploiting this issue for privilege escalation requires the availability
of unprivileged user namespaces. With that granted, a possible way of
exploitation is by reallocating the memory of the released user
namespace object of step 4 and by introducing a type confusion bug
(ensure the user namespace release in step 4 empties the complete slab
page, get it reallocated, e.g. by some kmalloc slab cache and introduce
a fake 'user_namespace' object, e.g. via 'msg_msg' object spraying)
which will allow a decrement operation at an attacker controlled kernel
address (the '->ucounts' pointer of the crafted 'user_namespace'
object). The decrement value is under attacker control as well (the size
of the shm segment, up to RLIMIT_MEMLOCK).

Beside from patching, a possible mitigation is to disable unprivileged
user namespaces:

# sysctl -w kernel.unprivileged_userns_clone=3D0

To our knowledge, no CVE has been assigned to this issue so far.

Thanks,
Mathias

[1]  https://lore.kernel.org/lkml/YZV7Z+yXbsx9p3JN@fixkernel.com/

--------------o0nJcuferTHm5eb8LSTolT00--

--------------3dSz9VduE4RvwxLOLoccXVRv
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wsD5BAABCAAjFiEEd7J359B9wKgGsB94J4hPxYYBGYYFAmH1kG8FAwAAAAAACgkQJ4hPxYYBGYZK
1QwAkZLseMucUIXfms2iFus49IqmeSTZV39P/WhAnix6hk53QAS0Pf6Wwp9i0IgdnXtFu5RjZ9yI
K41/r3W9c86lftWQHwD/vXxr8cZYHmp7qD/L9irXZVHwFuHBt7BkZ/xwaXcCSvbBMkmWR0wlm4KQ
do4DPA196y5gD7vXvRDmsKbRx1MUg0MAqPC0EWGcIR6GfU1+YF6i3ovpFylxgvracHhIWH5rVUfy
xrTf7D4XyViMJ1+Idd624TQF7SSy5sYWbKeCakttTSgJaENIFHj7IWDxo5bvYsWKEBy0sVelKGzW
tSvEzmUUKWoozXZY+8Fg6kfpmrcb6mVPBecA1BtsB8Zo20WYeNlxeK1sZBXi79Z5B0C1gLiXQbJV
Sl6e5LI5j8rL5qOiHFWOB6AxByxu6fkpaJTMz4EivkYOgnHem+zl/jD5J2dBzIM98KEM7jZKYply
4rNqiaQcK5R2Y/f3k/UQt//bj0X3WU+xjg3VKOzprh4pnG7Q6Sc7G/09Vz2t
=VJj+
-----END PGP SIGNATURE-----

--------------3dSz9VduE4RvwxLOLoccXVRv--
