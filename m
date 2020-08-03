X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["8783" "Monday" "3" "August" "2020" "12:32:50" "-0300" "Marco Benatto" "mbenatto@redhat.com" "<CAOGQQ2_wJ5ONi3XKv3RTho279O6S7S59UPXj+b6aoEjD4JzbqQ@mail.gmail.com>" "243" "Re: [oss-security] Multiple Security Issues in the TrouSerS tpm1.2 tscd Daemon" "^Cc:" nil nil "8" "2020080315:32:50" "[oss-security] Multiple Security Issues in the TrouSerS tpm1.2 tscd Daemon" (number mark "        mbenatto@red Aug  3  243/8783  " thread-indent "\"Re: [oss-security] Multiple Security Issues in the TrouSerS tpm1.2 tscd Daemon\"\n") "<20200520125438.GB12616@f195.suse.de>" ("<20200520125438.GB12616@f195.suse.de>") nil nil nil nil nil nil nil "Re: [oss-security] Multiple Security Issues in the TrouSerS tpm1.2 tscd Daemon" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26375 invoked by uid 550); 3 Aug 2020 18:13:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11454 invoked from network); 3 Aug 2020 15:33:49 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1596468817;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=GOFQO4KVFiVpuKLEwTnQP+WOwXK3lKDXDms1U71ICGI=;
	b=K6CCZFy4hhC3prAN1Dxk9e+wAEbLY85Wl+vvcHb1/5Qz/23k/Y7aT9vOGNg3HiQgYNuiOl
	fgKRjL7uM8M1cUix9e21hvGYpiYm5Y/HpFkNoj4yPRl7c0aczM4Oceew8pbvX2R/zMS/4M
	KOG7uozrzC8ltDhQucmngmk+BYB8/FI=
X-MC-Unique: CHteA-eBM3ibMFZ27f5PNA-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=GOFQO4KVFiVpuKLEwTnQP+WOwXK3lKDXDms1U71ICGI=;
        b=VdNT09NwaiBSOddJTAMGmPQesEdIJL7r9YtbdxZVbww1yqCWhmNYICe2XD7FucjxvK
         0uN6y7V8pgKI8PBWPSjf32cI/AKlyAnMrudtz0fsGexUFgqfyU2GD4c4IeiDvwrvKOAu
         2qKCp/rkifWkiuSkp5KkDghBeMgpoBnihg7YyQ4lNDNFWPRMQ1a772PULmme+J5T+K0Z
         39zTwDf6YXoswSQvjAlsG69tzadqMHJjrF1uvsTTynEJcORhWaRkWA1shENw+JkcjjrJ
         a3NrqZs6oYfAqmSTZl1jYxunagOZjAq9v7va95nmkLfl2dof1wkItG6QoHywLTXRk7Ae
         BhZQ==
X-Gm-Message-State: AOAM531+nJ7G6wqdEJ3xAVqv7cfSQDnXYG/TnOfJqxsYyBMCbY/MB5nD
	mNJeDdnTqBQuJQDCddRXeAr02/Xm9882hBm+wT1DNA6D+QipTkoXUSBBPW7Kvt5wAO7vRYxV4eg
	FlWkxJGixUKcYyQ1KfarbXmCGG/YF5Uh1hNl0eulzIrK8
X-Received: by 2002:a19:cc9:: with SMTP id 192mr8786206lfm.61.1596468809019;
        Mon, 03 Aug 2020 08:33:29 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz2FTpHSj/KHgY/duGhHxn93lYUZmdBzyh3ZazCyrBI6xPFGztlsurIqcb+PI4lph7RDwk0tsocWqWx5OQAhRA=
X-Received: by 2002:a19:cc9:: with SMTP id 192mr8786191lfm.61.1596468808567;
 Mon, 03 Aug 2020 08:33:28 -0700 (PDT)
MIME-Version: 1.0
References: <20200520125438.GB12616@f195.suse.de>
In-Reply-To: <20200520125438.GB12616@f195.suse.de>
Message-ID: <CAOGQQ2_wJ5ONi3XKv3RTho279O6S7S59UPXj+b6aoEjD4JzbqQ@mail.gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Cc: trousers-tech@lists.sourceforge.net
Date: Mon, 3 Aug 2020 12:32:50 -0300
From: Marco Benatto <mbenatto@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Multiple Security Issues in the TrouSerS tpm1.2
 tscd Daemon
To: oss-security@lists.openwall.com

Hello,

Is there any follow up already for this issue in upstream (CVE
assigned or upstream commits)?

Thanks,

Marco Benatto
Red Hat Product Security
secalert@redhat.com for urgent response

On Wed, May 20, 2020 at 9:55 AM Matthias Gerstner <mgerstner@suse.de> wrote:
>
> Hello,
>
> I have discovered multiple security issues in the tcsd daemon of the Trou=
SerS
> [1] tpm 1.2 stack.
>
> Introduction
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> The tcsd daemon manages access to the tpm 1.2 compliant /dev/tpm0 device =
on
> Linux systems. The daemon utilizes an unprivileged user and group account=
 to
> run as. These are called tss:tss by default.
>
> The tcsd can be started directly as the tss user and group e.g. via syste=
md or
> via start-stop-daemon. In this case the /dev/tpm0 device needs to be owne=
d by
> the tss user. This mode of operation is safe and is not affected by the
> following findings.
>
> If the tcsd is started with root privileges then it opens /dev/tpm0 as ro=
ot
> and drops privileges to the unprivileged user afterwards. In this case th=
e tss
> user can achieve privilege escalations. The following logic is performed =
by
> the tcsd:
>
> 1) the daemon reads in the configuration in /etc/tcsd.conf after making s=
ure
>   that the config file is owned by tss:tss mode 0600 (function
>   `conf_file_init()`). From this configuration file the path `system_ps_f=
ile`
>   (by default /var/lib/tpm/system.data) is parsed and used for further
>   operations.
>
> 2) the daemon makes sure that the directory where the `system_ps_file` is
>   contained in exists (function `ps_dirs_init()`, /var/lib/tpm by default=
).
>   The directory is created, if necessary, using `mkdir()` and mode 0700.
>   Afterwards an explicit `chown()` to mode 0700 is made in case the mode =
of
>   the directory doesn't match this mode yet.
>
> 3) in the function `ps_init_disk_cache()` the function `get_file()` is ca=
lled
>   which opens the `system_ps_file` using `O_RDWR|O_CREAT` and mode 0600:
>
>   `openat(AT_FDCWD, "/var/lib/tpm/system.data", O_RDWR|O_CREAT, 0600) =3D=
 4`
>
> 4) only after these steps a privilege drop to the tss uid is performed in
>    the `main()` function.
>
> Security Issues
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> The security issues resulting from this are as follows:
>
> a) Since /var/lib/tpm is owned by the tss user (as per dist/Makefile.am),=
 the
>    creation of the `system.data` file in step 3) is prone to symlink atta=
cks. The
>    tss user can thereby cause the creation of new files or the corruption=
 of
>    existing files. These new files end up with mode 0600 and no `chown()`=
 to the
>    tss user is performed by the tcsd. Thus it looks like no full local ro=
ot
>    privilege escalation can be achieved but only DoS attacks.
>
> b) The tcsd only drops the root uid, not the root gid in step 4). A call =
to
>    `setgid()` is missing. Therefore the tcsd continues to run with root g=
roup
>    privileges it doesn't actually require. This could allow further privi=
lege
>    escalations when combined with other, yet unknown attack vectors.
>
> c) The configuration file /etc/tcsd.conf is _required_ by the tcsd to be
>    owned by tss:tss mode 0600. Therefore the unprivileged user can change=
 all
>    daemon related settings, including the `system_ps_file` path. This mea=
ns
>    the `mkdir()` and `chmod()` performed in step 2) can be directed to an
>    arbitrary path. This also includes the symlink attack described in a)
>    for arbitrary paths.
>
>    Further security issues could stem from this by manipulating other con=
fig
>    file options. I did not look deeper into this.
>
> d) Not directly related to the logic above. The example RPM spec file [5]=
 in
>    the TrouSerS repository is using unsafe file and directory modes for
>    /var/lib/tpm and /usr/sbin/tcsd:
>
>    ```
>    # create the default location for the persistent store files
>    if test -e %{_localstatedir}/tpm; then
>         mkdir -p %{_localstatedir}/tpm
>         /bin/chown tss:tss %{_localstatedir}/tpm
>         /bin/chmod 1777 %{_localstatedir}/tpm
>    fi
>
>    # chown the daemon
>    /bin/chown tss:tss %{_sbindir}/tcsd
>    ```
>
>    So here a public sticky-bit directory is setup in /var/lib/tpm. This c=
ould
>    allow arbitrary users to setup the symlink attack mentioned in a). It =
could
>    also lead to an information leak. Once the tcsd is started as root the=
 mode
>    of /var/lib/tpm will be corrected in step 1), however.
>
>    Passing ownership of /usr/sbin/tcsd to the tss user would allow the tss
>    user to replace the tcsd binary by malicious code that will potentiall=
y be
>    executed by the root user, leading to arbitrary code execution.
>
>    I'm not aware of any distribution actually using this spec file or par=
ts of
>    it. Still it is a very bad example.
>
> Mitigation and Bugfixes
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> It seems best to me to run the tcsd as the tss:tss user and group right a=
way
> and to not rely on the privilege drop logic implemented in the daemon its=
elf.
> All of a), b) and c) should no longer be problematic in this case. I found
> that on Debian and Gentoo Linux this is already the case. To make this wo=
rk a
> udev rule needs to be packaged that passes ownership of /dev/tpm0 device =
to
> the tss user. To prevent regressions when switching from the privilege dr=
op
> approach to this new approach, a possibly already existing
> /var/lib/tpm/system.auth file needs to be safely chown()'ed to the tss us=
er
> during package updates.
>
> On SUSE and Fedora Linux the tcsd is started as root via systemd, thus th=
ey
> are affected by the security issues. A preliminary suggested source code =
fix
> is attached to this mail. It makes sure that `O_NOFOLLOW` is added to ste=
p 3)
> to prevent a symlink attack. It also adds a drop of the root gid to the t=
ss
> gid. And it modifies the check of /etc/tcsd.conf such that ownership root=
:tss
> and mode 0640 are necessary. The packaging needs to be adjusted according=
ly.
>
> The correct long term fix should probably be to *only* open /dev/tpm0 as =
root,
> immediately drop to tss:tss and only then perform the further initializat=
ion
> steps. The initialization sequence in `tcsd_startup()` is currently runni=
ng
> completely in the root user context and seems rather complex. Maybe there=
 are
> more details to this that I don't know of yet. For this reason I didn't t=
ry a
> patch in this direction yet.
>
> Upstream Reporting
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> I reported issues a), b) and d) privately to the documented upstream cont=
acts
> without much success (see Timeline below). The SUSE Security Team 90 days
> maximum disclosure time has been reached, therefore I'm publishing this n=
ow in
> an uncoordinated way. While working on a fix I additionally discovered is=
sue
> c). SUSE is tracking the issues in bsc#1164472 [6] currently.
>
> Issues a), b) and c) deserve CVE assignments in my opinion. I can't reque=
st
> CVEs myself though, because IBM upstream is a CNA themselves. Therefore
> upstream is required to assign their own CVEs.
>
> Timeline
> =3D=3D=3D=3D=3D=3D=3D=3D
>
> 2020-02-19: I reported findings a), b) and d) to honclo@linux.vnet.ibm.co=
m,
>             the security contact of the project according to the README f=
ile [2].
> 2020-02-28: I reported findings a), b) and d) to debora@linux.ibm.com, the
>             maintainer of the project according to the AUTHORS file [3].
> 2020-03-16: I received a reply from debora@linux.ibm.com, stating that she
>             will look into the findings.
> 2020-05-06: I reminded debora@linux.ibm.com that the latest disclosure ti=
me
>             [4] for the findings is approaching and asked for any updates.
> 2020-05-20: I started working on a bugfix and mitigations, discovered the
>             additional finding c) and started publishing the findings.
>
> [1]: https://sourceforge.net/projects/trousers
> [2]: https://sourceforge.net/p/trousers/trousers/ci/master/tree/README
> [3]: https://sourceforge.net/p/trousers/trousers/ci/master/tree/AUTHORS
> [4]: https://en.opensuse.org/openSUSE:Security_disclosure_policy
> [5]: https://sourceforge.net/p/trousers/trousers/ci/master/tree/dist/trou=
sers.spec.in
> [6]: https://bugzilla.suse.com/show_bug.cgi?id=3D1164472
>
> Best Regards
>
> Matthias
>
> --
> Matthias Gerstner <matthias.gerstner@suse.de>
> Dipl.-Wirtsch.-Inf. (FH), Security Engineer
> https://www.suse.com/security
> Phone: +49 911 740 53 290
> GPG Key ID: 0x14C405C971923553
>
> SUSE Software Solutions Germany GmbH
> HRB 36809, AG N=C3=BCrnberg
> Gesch=C3=A4ftsf=C3=BChrer: Felix Imend=C3=B6rffer
>

