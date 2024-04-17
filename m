Received: (qmail 3403 invoked by uid 550); 17 Apr 2024 13:06:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1938 invoked from network); 17 Apr 2024 12:52:27 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1713358338;
	bh=/dizMEM9FsiGgjGspvjJTymir6G83eGOvlkoacjYlDI=;
	h=Message-ID:Subject:From:To:Date:In-Reply-To:References:
	 Content-Type:MIME-Version;
	b=wbrhzAXQFxCn72tHKJhgesu0SMFYM4K4w973lgLys5xclpbLfFuBJlSZASQV5cc1l
	 IsZKZZbKijGpvjsGbe3J54GF9Agden8dR8NS1BdOfvnpZmSiF5xHAYbXSVNhVAw1+a
	 MMEtrZZ7C5F2fbjNfw++3l+dN7wVfnsX2scVOG8leMf1kKmlj1qQO5SBzT88ULL9WO
	 eCJxxUecS8PMHChNWV8lFsd12bzGMnQZFl58vQtjGPPzw3Z5QoitxvgkKLRSqB8XP3
	 wOqj90KNJ3oJBnuJJUApCx50mAA6qsL9YNv1cK4efHvm97z5B+faJO1PSM4Eu90L1t
	 yPKZ/lcmwrmgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713358337; x=1713963137;
        h=mime-version:user-agent:content-transfer-encoding:organization
         :references:in-reply-to:date:to:from:subject:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/dizMEM9FsiGgjGspvjJTymir6G83eGOvlkoacjYlDI=;
        b=he2AWlxj5fhQ0+dOFZo4Ql80W06DQ1+1FIxRvXshSfpOYETMslfSE0U7sLH0R62dYG
         sgudixNHdR/rM/lD5I3VZ2+dlUnoYqw/q2yyZEm+M4QOokZs1hqkQSm1hueU0K8tkhEd
         M4XreFU6HIVZhWVuiqy5DjPCRrqcbJfhJgdmt0U8mx7/VkU8EPyY/DwUgGXU3+PfEWw2
         owoON6E5jNbiUIwesUJoGM5obgdsI+rgl6vNeBwxfECDeteL8xNoGzc2d/lcxPqR88QW
         kw5jdNVz7i0POl1cu+PWLvJ3rIeNMGk6PfxVJu/Sugw4151ace0qiXsxuGfQf628Up+O
         QgKQ==
X-Gm-Message-State: AOJu0Yy1E1it+9E0qu1w5VaXsl983r9jjBxtKvxRIodtZ9XJRYCyi9Ze
	4mRQx2l7WA4YNEzhwZA+n5E5TQmDGbEsjhwJqP84QExSDWCFOw/j5iAETNgO3lHJePvn/QI6AmU
	BXh6U0cJTRL/RyErppOM1C2d/JDqEbvYpY8ylPQ1XiG5iXSumOykl7FFkPq7hqilcOIaWO1SEd8
	tXwmXc92BmQAMm0qf/GTs=
X-Received: by 2002:a2e:94ce:0:b0:2db:153e:cebf with SMTP id r14-20020a2e94ce000000b002db153ecebfmr815077ljh.6.1713358336911;
        Wed, 17 Apr 2024 05:52:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFXS3kiAeXloD2mWOiwC/nzEpiCi+GDw/jZ8fMspsfhRh/8X+ynF6MvsYqU+RkVuW0yjCue0g==
X-Received: by 2002:a2e:94ce:0:b0:2db:153e:cebf with SMTP id r14-20020a2e94ce000000b002db153ecebfmr815069ljh.6.1713358336382;
        Wed, 17 Apr 2024 05:52:16 -0700 (PDT)
Message-ID: <354b913bc1c154c1e3a2fc34ed8ed6b0d4641f11.camel@canonical.com>
From: Georgia Garcia <georgia.garcia@canonical.com>
To: oss-security@lists.openwall.com
Date: Wed, 17 Apr 2024 09:52:10 -0300
In-Reply-To: <20240414190855.GA12716@openwall.com>
References: <20240414190855.GA12716@openwall.com>
Organization: Canonical
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.44.4-0ubuntu2 
MIME-Version: 1.0
Subject: Re: [oss-security] Linux: Disabling network namespaces

On Sun, 2024-04-14 at 21:08 +0200, Solar Designer wrote:
> Hi,
>=20
> Many Linux kernel vulnerabilities including the recently exploited
> Netfilter CVE-2024-1086 require CAP_NET_ADMIN in a namespace, yet a
> typically recommended mitigation is to disable user namespaces (not just
> network namespaces).
>=20
> Further, while on Debian/Ubuntu it is possible to disable just
> unprivileged user namespaces with the Debian-specific sysctl
> kernel.unprivileged_userns_clone=3D0, on other distros we'd have to use
> user.max_user_namespaces=3D0, which (unnecessarily) prevents starting of
> containers even by root.

I just wanted to add that in the Ubuntu Noble Numbat release we are
using AppArmor to restrict unprivileged user namespaces.=C2=A0

Applications that don't have an AppArmor profile will use a default
profile which denies the use of capabilities within the user namespace.
Applications that need to use capabilities will have to be confined by
a profile. Since we understand that creating an AppArmor profile might
not be a trivial task for large programs, we introduced the
"unconfined" flag which makes the profile act as if it were unconfined
from the perspective of AppArmor, allowing all operations.

There are more details here:
https://discourse.ubuntu.com/t/noble-numbat-release-notes/39890#unprivilege=
d-user-namespace-restrictions-13

>=20
> Fredrik Nystrom on Rocky Linux Mattermost channel Security pointed out
> that it is reasonable to disable just network namespaces with
> user.max_net_namespaces=3D0 instead, and that the negative effects of
> doing so and how to cope with them are well-documented for Apptainer,
> with its documentation also covering Docker, Podman, and systemd:
>=20
> https://apptainer.org/docs/admin/latest/user_namespace.html#disabling-net=
work-namespaces
>=20
> I hope some of us in here find this useful, and maybe we (including
> distros) will start recommending this milder mitigation when sufficient.
>=20
> I include this section of the Apptainer documentation below, as taken
> from its source at
> https://github.com/apptainer/apptainer-admindocs/blob/main/user_namespace=
.rst
>=20
> ---
> ******************************
>  Disabling network namespaces
> ******************************
>=20
> There have been many Linux kernel exploits that have made use of
> unprivileged user namespaces as a point of entry, but almost all of them
> in the last few years have been in combination with network namespaces.
> Therefore even though the Apptainer project recommends enabling
> unprivileged user namespaces, it recommends disabling network namespaces
> when possible in order to substantially reduce the risk profile
> and need for urgent updates when vulnerabilities are announced.
>=20
> Network namespaces can be disabled on most Linux-based systems
> like this:
>=20
> .. code:: bash
>=20
>    echo "user.max_net_namespaces =3D 0" \
>         >/etc/sysctl.d/90-max_net_namespaces.conf
>    sysctl -p /etc/sysctl.d/90-max_net_namespaces.conf
>=20
> Apptainer does not by default make use of network namespaces, but it
> does have some little-used privileged options beginning with ``--net``
> that do.
> Those options will not work when network namespaces are disabled.
> Unfortunately it is not possible to disable only unprivileged
> network namespaces, so this will affect programs that use them
> even if run as root.
>=20
> Some other container runtimes such as Docker and Podman do make use
> of network namespaces by default.
> Those two runtimes can still work when network namespaces are disabled
> by adding the ``--net=3Dhost`` option.
>=20
> Disabling network namespaces also blocks the systemd PrivateNetwork
> feature.
> To find services that use it, look for ``PrivateNetwork=3Dtrue``
> or ``PrivateNetwork=3Dyes`` in ``/lib/systemd/system/*.service``.
> This can be turned off for each service through a
> ``/etc/systemd/system/<service>.d/*.conf`` file, for example for
> ``systemd-hostnamed``:
>=20
> .. code:: bash
>=20
>    cd /etc/systemd/system
>    mkdir -p systemd-hostnamed.service.d
>    (echo "[Service]"; echo "PrivateNetwork=3Dno") \
>         >systemd-hostnamed.service.d/no-private-network.conf
>=20
> If the service is enabled (that is, actively used) then restart it
> and check its status:
>=20
> .. code:: bash
>=20
>    systemctl status systemd-hostnamed
>    systemctl daemon-reload
>    systemctl restart systemd-hostnamed
>    systemctl status systemd-hostnamed
> ---
>=20
> Alexander

