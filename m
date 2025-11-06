Received: (qmail 23989 invoked by uid 550); 6 Nov 2025 17:46:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3646 invoked from network); 6 Nov 2025 08:04:44 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=akendo.eu; s=MBO0001;
	t=1762416272;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=PIpdW51F76y04PaCaby0ZfTZQ1B/XN9IriNGAVYz4r0=;
	b=iiHOQjyQaWGL/GuYRc94e7D4ELXCAjaXD4YdYYRc+142FFZkKP9LUV5D53OLC5qkaaH15U
	weNUaVnpE8jRhsSy5PCFhIaLRls1n+KFPuHT+1DbJoiDdqcVFnEmkb6EwETkf6HMQCOg0O
	RnbuXhs5wqgg63vECWH0ad3ExornPwILS6lYCBKBYMaQG6AGqC3N++utLIEERpwjJtCWqb
	BJmqPyL8xW36ABMkIZ4UH5jwacFLD+upZCpXRZuZqV44YI/h08UKcCJWk0ywJ7zwiqcsI3
	hyNFAtDoS1wuDmjCT5uBBkexxGgJH+uL1jrx1tD1GJkEPxFYeBJBWPfIz6extA==
Authentication-Results: outgoing_mbo_mout;
	dkim=none;
	spf=pass (outgoing_mbo_mout: domain of akendo@akendo.eu designates 2001:67c:2050:b231:465::2 as permitted sender) smtp.mailfrom=akendo@akendo.eu
From: "akendo@akendo.eu" <akendo@akendo.eu>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>,
	"fulldisclosure@seclists.org" <fulldisclosure@seclists.org>
Thread-Topic: [oss-security] runc container breakouts via procfs writes:
 CVE-2025-31133, CVE-2025-52565, and CVE-2025-52881
Thread-Index: AVNlaWVlrjSPTPLmeedGS8tsWFSqjpHTEzb+
X-MS-Exchange-MessageSentRepresentingType: 1
Date: Thu, 6 Nov 2025 08:04:30 +0000
Message-ID:
	<VI0P189MB27662827477671D5A42635DDAEC2A@VI0P189MB2766.EURP189.PROD.OUTLOOK.COM>
References:
	<2025-11-05-remember-remember-the-fifth-of-november-3EtRdS@cyphar.com>
In-Reply-To:
	<2025-11-05-remember-remember-the-fifth-of-november-3EtRdS@cyphar.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-Exchange-Organization-SCL: -1
X-MS-TNEF-Correlator:
X-MS-Exchange-Organization-RecordReviewCfmType: 0
x-ms-reactions: allow
Content-Type: multipart/alternative;
	boundary="_000_VI0P189MB27662827477671D5A42635DDAEC2AVI0P189MB2766EURP_"
MIME-Version: 1.0
Subject: Re: [oss-security] runc container breakouts via procfs writes:
 CVE-2025-31133, CVE-2025-52565, and CVE-2025-52881

--_000_VI0P189MB27662827477671D5A42635DDAEC2AVI0P189MB2766EURP_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Thank you for sharing this. I wondered how big the impact of this vulnerabi=
lity is when you have only the ability to access runs via the Kubernetes AP=
I? Would you argue that the vulnerability becomes harder (or impossible?) t=
o exploit when you can only interact with the service via another API?

In my current understanding of the vulnerabilities, it seems like you need =
to be able to interact with runs directly.

Furthermore, the ability to =93replace=94 /dev/null seems rather only possi=
ble when conducted by a user with higher permissions?

Lastly, I do not see a container break when /proc/sysrq-trigger is not enab=
led. I am not sure if there are other ways, there will be, but I am not see=
ing this exploitable in most environments.

Thank you, great work!

So far,
Akendo



Lastly, when you do not have
On 05.11.25, 10:55, "Aleksa Sarai" <cyphar@cyphar.com> wrote:

| NOTE: This advisory was sent to <security-announce@opencontainers.org<mai=
lto:security-announce@opencontainers.org>>
| on 2025-10-16. If you ship any Open Container Initiative software, we
| highly recommend that you subscribe to our security-announce list in
| order to receive more timely disclosures of future security issues.
| The procedure for subscribing to security-announce is outlined here:
| <https://github.com/opencontainers/.github/blob/main/SECURITY.md#disclosu=
re-distribution-list>

Hello,

This is a notification to vendors that use or ship runc about THREE (3)
high-severity vulnerabilities (CVE-2025-31133, CVE-2025-52565, and
CVE-2025-52881). All three vulnerabilities ultimately allow (through
different methods) for full container breakouts by bypassing runc's
restrictions for writing to arbitrary /proc files.

Today we have released the following runc releases which include more
than 20 patches to resolve this issue:

* runc v1.4.0-rc.3 <https://github.com/opencontainers/runc/releases/tag/v1.=
4.0-rc.3>
* runc v1.3.3 <https://github.com/opencontainers/runc/releases/tag/v1.3.3>
* runc v1.2.8 <https://github.com/opencontainers/runc/releases/tag/v1.2.8>

We strongly recommend you update as soon as possible. For your own
reference I have attached a tarball of the patches (which apply cleanly
on top of runc v1.2.7, v1.3.2 and v1.4.0-rc.2).

Unfortunately the patches are are quite large as they required a lot of
development work in github.com/cyphar/filepath-securejoin along with
quite deep changes to runc. I would recommend just going with the
released versions.

Note that these patches have not been split into per-CVE patches, as the
resolutions for each issue overlap and so some patches help resolve more
than one CVE on the list. We strongly recommend simply applying all of
the provided patches (we have included a squashed single-patch version
for your convenience -- see v1.[234].patch).

| **NOTE**:
| Some vendors were given a pre-release version of this release.
| These public releases include two extra patches to fix regressions
| dIscovered very late during the embargo period and were thus not
| included in the pre-release versions. Please update to this version.
| The above tarball includes these extra patches as well.

/*** Vulnerabilities ***/

Below is a break-down of the key points of each issue. Once this
vulnerability is made public on the embargo date, the linked advisory
pages will contain some more information about the issues.

Please note that while these issues are generally related, the available
mitigations (if any) vary from issue to issue. However, all of these
attacks rely on starting containers with custom mount configurations --
if you do not run untrusted container images from unknown or unverified
sources then these attacks would not be possible to exploit. Note that
Dockerfiles support custom mount configurations (with RUN --mount=3D...)
and so these issues are also exploitable from Dockerfiles.

Also please note that the below CVSS scores are based on the threat
model from *runc's point of view*. If you were to analyse the same
vulnerability from the perspective of network-enabled systems like
Docker or Kubernetes you would likely end up with a much higher
severity.

/* CVE-2025-31133 */

"container escape via 'masked path' abuse due to mount race conditions"

CVSS:4.0/AV:L/AC:L/AT:P/PR:L/UI:A/VC:H/VI:H/VA:H/SC:H/SI:H/SA:H (7.3)

<https://github.com/opencontainers/runc/security/advisories/GHSA-9493-h29p-=
rfm2>

CVE-2025-31133 exploits an issue with how masked paths are implemented
in runc. When masking files, runc will bind-mount the container's
/dev/null inode on top of the file. However, if an attacker can replace
/dev/null with a symlink to some other procfs file, runc will instead
bind-mount the symlink target read-write. This issue affects all known
runc versions.

This stage happens after pivot_root(2) and so cannot be used to
bind-mount host files directly. However, paths like
/proc/sys/kernel/core_pattern which can be used to break out of a
container entirely (coredump helpers are spawned as upcalls, which are
not namespaced and have full host privileges). /proc/sysrq-trigger can
also be used by an attacker to cause the host system to crash or halt.
(This is "Attack 1".)

While developing a fix for this issue, we also discovered that if the
attacker instead deleted /dev/null, runc would purposefully ignore the
error and thus make maskedPath a no-op. This is slightly less serious,
but it would permit some information disclosure through masked files
like /proc/kcore and /proc/timer_list. (This is "Attack 2".)

Potential mitigations for this issue include:

* Using user namespaces, with the host root user not mapped into the
   container's namespace. procfs file permissions are managed using Unix
   DAC and thus user namespaces stop a container process from being able
   to write to them.

* Not running as a root user in the container (this includes disabling
   setuid binaries with noNewPrivileges). As above, procfs file
   permissions are managed using Unix DAC and thus non-root users cannot
   write to them.

* Depending on the maskedPath configuration (the default configuration
   only masks paths in /proc and /sys), using an AppArmor that blocks
   unexpected writes to any maskedPaths (as is the case with the default
   profile used by Docker and Podman) will block attempts to exploit
   this issue. However, CVE-2025-52881 allows an attacker to bypass LSM
   labels, and so this mitigation is not helpful when considered in
   combination with CVE-2025-52881.

* Based on our analysis, SELinux will NOT help mitigate this issue --
   the /dev/null bind-mount used for maskedPaths get re-labeled to the
   container context and thus the container will have access to them.

Thanks to Lei Wang (@ssst0n3 from Huawei) for finding and reporting the
original vulnerability (Attack 1), and Li Fubang (@lifubang from
acmcoder.com, CIIC) for discovering another attack vector (Attack 2)
based on @ssst0n3's initial findings.

/* CVE-2025-52565 */

"container escape with malicious config due to /dev/console mount and relat=
ed races"

CVSS:4.0/AV:L/AC:L/AT:P/PR:L/UI:A/VC:H/VI:H/VA:H/SC:H/SI:H/SA:H (7.3)

<https://github.com/opencontainers/runc/security/advisories/GHSA-qw9x-cqr3-=
wc7r>

CVE-2025-52565 is very similar in concept and application to
CVE-2025-31133, except that it exploits a flaw in /dev/console
bind-mounts. When creating the /dev/console bind-mount (to /dev/pts/$n),
if an attacker replaces /dev/pts/$n with a symlink then runc will
bind-mount the symlink target over /dev/console. This issue affects all
versions of runc >=3D 1.0.0-rc3.

As with CVE-2025-31133, this happens after pivot_root(2) and so cannot
be used to bind-mount host files directly, but an attacker can trick
runc into creating a read-write bind-mount of
/proc/sys/kernel/core_pattern or /proc/sysrq-trigger, leading to a
complete container breakout (as with CVE-2025-31133).

While developing a fix for this issue, we also found some potentially
concerning issues with os.Create usage (which may have allowed for host
files to be truncated by an attacker) -- though we deemed these issues
to not be exploitable, we have provided fixes for them. In addition,
some previously known issues with /dev/pts/$n race conditions were
re-analysed and we have included mitigations for them too (even though
we still feel these are mostly hypothetical issues).

Potential mitigations for this issue include:

* Using user namespaces, with the host root user not mapped into the
   container's namespace. procfs file permissions are managed using Unix
   DAC and thus user namespaces stop a container process from being able
   to write to them.

* Not running as a root user in the container (this includes disabling
   setuid binaries with noNewPrivileges). As above, procfs file
   permissions are managed using Unix DAC and thus non-root users cannot
   write to them.

* The default SELinux policy should mitigate this issue, as the
   /dev/console bind-mount does not re-label the mount and so the
   container process should not be able to write to unsafe procfs files.
   However, CVE-2025-52881 allows an attacker to bypass LSM labels, and
   so this mitigation is not helpful when considered in combination with
   CVE-2025-52881.

* The default AppArmor profile used by most runtimes will NOT help
   mitigate this issue, as /dev/console access is permitted. You could
   create a custom profile that blocks access to /dev/console, but such
   a profile might break regular containers. In addition, CVE-2025-52881
   allows an attacker to bypass LSM labels, and so that mitigation is
   not helpful when considered in combination with CVE-2025-52881.

Known Issues:

* We are aware of an issue with our mitigation for this attack and certain =
configurations

Thanks to Lei Wang (@ssst0n3 from Huawei) and Li Fubang (@lifubang from
acmcoder.com, CIIC) for discovering and reporting the main /dev/console
bind-mount vulnerability, as well as Aleksa Sarai (@cyphar from SUSE)
for discovering the related issues mentioned above as well as the
original research into these classes of issues several years ago.

/* CVE-2025-52881 */

"container escape and denial of service due to arbitrary write gadgets and =
procfs write redirects"

CVSS:4.0/AV:L/AC:L/AT:P/PR:L/UI:A/VC:H/VI:H/VA:H/SC:H/SI:H/SA:H (7.3)

<https://github.com/opencontainers/runc/security/advisories/GHSA-cgrx-mc8f-=
2prm>

This attack is a more sophisticated variant of CVE-2019-16884, which was
CVE-2019-19921
a flaw that allowed an attacker to trick runc into writing the LSM
process labels for a container process into a dummy tmpfs file and thus
not apply the correct LSM labels to the container process. The
mitigation we applied for CVE-2019-19921 was fairly limited and
effectively only caused runc to verify that when we write LSM labels
that those labels are actual procfs files. This issue affects all known
runc versions.

Rather than using a fake tmpfs file for /proc/self/attr/<label>, an
attacker could instead (through various means) make
/proc/self/attr/<label> reference a real procfs file, but one that would
still be a no-op (such as /proc/self/sched). This would have the same
effect but would clear the "is a procfs file" check.

We were aware that this kind of attack would be possible (even going so
far as to discuss this publicly as "future work" at conferences), and we
were working on a far more comprehensive mitigation of this attack, but
this security issue was disclosed before we could complete this work.

This attack pairs well with CVE-2025-31133 and CVE-2025-52565, as the
most basic version described above acts as an LSM bypass that makes it
easy for an attacker to write to procfs files and break out of a
container.

However, rather than just making the write a no-op, the attacker could
instead redirect the write to a more malicious target (such as
/proc/sysrq-trigger to crash the host machine). In addition, sysctl
writes could be similarly redirected, so it is plausible an attacker
would be able to provide a custom payload to write, allowing for a
/proc/sys/kernel/core_pattern-based full container breakout.

This lead us to do a complete audit for all write operations in runc, as
any write operation could potentially be redirected in a similar way --
we did not find any more problematic writes in our analysis but we are
still investigating the possibility of using lints or static analysis to
detect this kind of issue.

Potential mitigations for this issue include:

* Using rootless containers, as doing so will block most of the
   inadvertent writes (runc would run with reduced privileges, making
   attempts to write to procfs files ineffective).

* Based on our analysis, neither AppArmor or SELinux can protect
   against the full version of the redirected write attack. The
   container runtime is generally privileged enough to write to
   arbitrary procfs files, which is more than sufficient to cause a
   container breakout.

   With SELinux, it is *possible* that the container_runtime_t label
   applied to runc will restrict how much runc can do with the no-op
   variant of the attack, but it seems to us that the
   /proc/sysrq-trigger host crash and /proc/sys/kernel/core_pattern
   container breakout attacks would still work.

Thanks to Li Fubang (@lifubang from acmcoder.com, CIIC) and T=F5nis Tiigi
(@tonistiigi from Docker) for both independently discovering this
vulnerability, as well as Aleksa Sarai (@cyphar from SUSE) for the
original research into this class of security issues and solutions over
the past few years.

/*** Other Container Runtimes ***/

These issues are all very easy-to-make logic flaws, and as such we
contacted several other container runtimes to alert them of these issues
and provide them our analysis.

Our current understanding is that youki and crun have similar flaws and
are working on patches to be released in co-ordination with this
advisory. LXC appears to have some similar bugs but their security
policy is (understandably) that non-user-namespaced containers are
fundamentally insecure and thus such exploits are not security issues.

If you use a container runtime other than runc, please check whether
upstream has released a security update addressing these (or similar)
issues once this issue becomes public.

If you are a container runtime author that we did not contact, please
get in touch with me at <cyphar@cyphar.com<mailto:cyphar@cyphar.com>> to ge=
t added to the
cross-runtime security group. Please note that this group is intended
for *low-level* container runtime *upstream maintainers* only.

/*** Extra Patches ***/

There were three issues with these patches which we became aware of
quite late in the embargo process. We have included new patches in the
released versions linked above to address two of them, but these patches
were not included in the pre-release tarballs provided to vendors:

* *00*-openat2-improve-resilience-on-busy-systems.patch
* *00*-rootfs-re-allow-dangling-symlinks-in-mount-targets.patch

Note that these are *NOT* security issues, they are usability
regressions that may affect some users depending on what images they use
and what kind of systems they run their containers on.

Below is the description provided to vendors, for your own reference,
but the issues listed have been fixed (with the exception of the last
issue, which is still being investigated).

/* openat2 EAGAIN Retry Failures */

openat2 will return -EAGAIN if there was a racing rename or mount when
trying to walk into ".." during a scoped lookup. On systems with heavy
load, this can happen fairly frequently. In the version of the patches
we merged, runc would retry every openat2 operation up to 32 times
before failing with an error in order to mitigate this while also
avoiding denial-of-service attacks.

Unfortunately, it seems this number was too conservative and some
vendors have reported seeing this error:

  runc run failed: unable to start container process: error during containe=
r init: error mounting "$source" to rootfs at "$destination": create mountp=
oint for $destination mount: lookup mountpoint target: securejoin.OpenInRoo=
t $destination: openat2 $destination: possible attack detected

Based on my testing, the worst-case failure rate for this is probably
around 3% (this is based on figures from me running very aggressive
rename loops on all 16 cores of my laptop). It is probably lower for
production deployments that have less aggressive rename and mount churn,
but it was a detectable regression for some downstreams.

*00*-openat2-improve-resilience-on-busy-systems.patch is a patch that
resolves this issue. The simplest mitigation is to just bump the retry
number (which this patch does), but I have also included some additional
retries with a time-based deadline that in my testing should be
virtually impossible to hit even in very high load scenarios (I was
unable to hit the error even after running >50k tests in a tight loop).

Some vendors have reported that this reduced the failure rate to
effectively 0 after 3-4 days of heavy load testing.

/* Dangling Symlink Mount Targets */

Due to the hardening work done for mounts in the provided patchsets, it
was necessary to block certain configurations that could not be done
safely in a reasonable way. One of these configurations is mount targets
that contain symlinks to non-existent paths (otherwise known as
"dangling symlinks"). With these patches, such configurations will
result in the following error:

  runc create failed: unable to start container process: error during conta=
iner init: error mounting "$source" to rootfs at "$destination": create mou=
ntpoint for $destination mount: make mountpoint "$destination": file exists

The workaround is to either change the symlink to point to a real path
or create the target of the dangling symlink (previously, runc would do
this for you). A survey of public images indicates that this pattern is
incredibly rare (the one example I've been given is of a broken
/etc/resolv.conf symlink), and in addition these kinds of symlinks are
quite hard to deal with in a sane and safe manner.

This change in behaviour was intentional, but after receving reports
from more than one downstream, I took another look and wrote a hotfix
that should allow us to continue to support these broken symlinks.
*00*-rootfs-re-allow-dangling-symlinks-in-mount-targets.patch is that
patch.

However, we still strongly suggest users refrain from creating images
with such broken symlinks.

/* Issues with "-v /dev:/dev" */

At SUSE, we found an example of a developer tool creating a bind-mount
of the host /dev into the container. For reasons that are not entirely
clear to me yet, this setup appears to have worked previously but can
now lead to permission issues with rootless containers with our
mitigating patches, with typical errors looking like:

  exec failed: unable to start container process: reopen ptmx to get new pt=
y pair: reopen fd 11: permission denied

I have not yet been able to root-cause this issue (I suspect that
ptmxmode=3D000 has some part to play here), but I would argue that such
setups are not particularly safe nor recommended, and users should
instead be doing --mount type=3Ddevpts,... if they have a strong need to
configure the /dev/pts mount (which is what our tool was trying to do
and had already been patched in newer versions to do properly).

If you have seen this issue or have any other information, feel free to
open a bug report.

/*** Credits ***/

Thanks again to the following researchers for helping discover and
report these vulnerabilities:

* Lei Wang (@ssst0n3 from Huawei)
* Li Fubang (@lifubang from acmcoder.com, CIIC)
* T=F5nis Tiigi (@tonistiigi from Docker)
* Aleksa Sarai (@cyphar from SUSE)

Additional thanks go to T=F5nis Tiigi for showing that Dockerfiles can be
used to exploit these issues, and thus providing us with some very
useful exploit templates for these kinds of race attacks.

--
Aleksa Sarai
Senior Software Engineer (Containers)
SUSE Linux GmbH
https://www.cyphar.com/


--_000_VI0P189MB27662827477671D5A42635DDAEC2AVI0P189MB2766EURP_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
</head>
<body>
<div dir=3D"ltr" style=3D"font-family: Aptos, Arial, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
Thank you for sharing this. I wondered how big the impact of this vulnerabi=
lity is when you have only the ability to access runs via the Kubernetes AP=
I? Would you argue that the vulnerability becomes harder (or impossible?) t=
o exploit when you can only interact
 with the service via another API?</div>
<div dir=3D"ltr" style=3D"font-family: Aptos, Arial, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div dir=3D"ltr" style=3D"font-family: Aptos, Arial, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
In my current understanding of the vulnerabilities, it seems like you need =
to be able to interact with runs directly.&nbsp;</div>
<div dir=3D"ltr" style=3D"font-family: Aptos, Arial, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div dir=3D"ltr" style=3D"font-family: Aptos, Arial, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
Furthermore, the ability to =93replace=94&nbsp;/dev/null seems rather only =
possible when conducted by a user with higher permissions?&nbsp;</div>
<div dir=3D"ltr" style=3D"font-family: Aptos, Arial, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div dir=3D"ltr"><span style=3D"font-family: Aptos, Arial, Helvetica, sans-=
serif; font-size: 12pt; color: rgb(0, 0, 0);">Lastly, I do not see a contai=
ner break when
</span><span style=3D"font-family: Aptos, Arial, Helvetica, sans-serif; fon=
t-size: 16px; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">/=
proc/sysrq-trigger is not enabled</span><span style=3D"font-size: 16px;">. =
I am not sure if there are other ways,
 there will be, but I am not seeing </span>this exploitable in most environ=
ments.</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr" style=3D"font-family: Aptos, Arial, Helvetica, sans-serif;=
 font-size: 12pt;">
Thank you, great work!</div>
<div dir=3D"ltr" style=3D"font-family: Aptos, Arial, Helvetica, sans-serif;=
 font-size: 12pt;">
<br>
</div>
<div dir=3D"ltr" style=3D"font-family: Aptos, Arial, Helvetica, sans-serif;=
 font-size: 12pt;">
So far,</div>
<div dir=3D"ltr" style=3D"font-family: Aptos, Arial, Helvetica, sans-serif;=
 font-size: 12pt;">
Akendo</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr" style=3D"font-family: Aptos, Arial, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div dir=3D"ltr" style=3D"font-family: Aptos, Arial, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
Lastly, when you do not have&nbsp;</div>
On 05.11.25, 10:55, &quot;Aleksa Sarai&quot; &lt;cyphar@cyphar.com&gt; wrot=
e:<br>
<br>
<div>| NOTE: This advisory was sent to &lt;<a href=3D"mailto:security-annou=
nce@opencontainers.org">security-announce@opencontainers.org</a>&gt;</div>
<div>| on 2025-10-16. If you ship any Open Container Initiative software, w=
e</div>
<div>| highly recommend that you subscribe to our security-announce list in=
</div>
<div>| order to receive more timely disclosures of future security issues.<=
/div>
<div>| The procedure for subscribing to security-announce is outlined here:=
</div>
<div>| &lt;<a href=3D"https://github.com/opencontainers/.github/blob/main/S=
ECURITY.md#disclosure-distribution-list&gt;">https://github.com/opencontain=
ers/.github/blob/main/SECURITY.md#disclosure-distribution-list&gt;</a></div>
<div dir=3D"ltr"><br>
</div>
<div>Hello,</div>
<div dir=3D"ltr"><br>
</div>
<div>This is a notification to vendors that use or ship runc about THREE (3=
)</div>
<div>high-severity vulnerabilities (CVE-2025-31133, CVE-2025-52565, and</di=
v>
<div>CVE-2025-52881). All three vulnerabilities ultimately allow (through</=
div>
<div>different methods) for full container breakouts by bypassing runc's</d=
iv>
<div>restrictions for writing to arbitrary /proc files.</div>
<div dir=3D"ltr"><br>
</div>
<div>Today we have released the following runc releases which include more<=
/div>
<div>than 20 patches to resolve this issue:</div>
<div dir=3D"ltr"><br>
</div>
<div>* runc v1.4.0-rc.3 &lt;<a href=3D"https://github.com/opencontainers/ru=
nc/releases/tag/v1.4.0-rc.3&gt;">https://github.com/opencontainers/runc/rel=
eases/tag/v1.4.0-rc.3&gt;</a></div>
<div>* runc v1.3.3 &lt;<a href=3D"https://github.com/opencontainers/runc/re=
leases/tag/v1.3.3&gt;">https://github.com/opencontainers/runc/releases/tag/=
v1.3.3&gt;</a></div>
<div>* runc v1.2.8 &lt;<a href=3D"https://github.com/opencontainers/runc/re=
leases/tag/v1.2.8&gt;">https://github.com/opencontainers/runc/releases/tag/=
v1.2.8&gt;</a></div>
<div dir=3D"ltr"><br>
</div>
<div>We strongly recommend you update as soon as possible. For your own</di=
v>
<div>reference I have attached a tarball of the patches (which apply cleanl=
y</div>
<div>on top of runc v1.2.7, v1.3.2 and v1.4.0-rc.2).</div>
<div dir=3D"ltr"><br>
</div>
<div>Unfortunately the patches are are quite large as they required a lot o=
f</div>
<div>development work in github.com/cyphar/filepath-securejoin along with</=
div>
<div>quite deep changes to runc. I would recommend just going with the</div>
<div>released versions.</div>
<div dir=3D"ltr"><br>
</div>
<div>Note that these patches have not been split into per-CVE patches, as t=
he</div>
<div>resolutions for each issue overlap and so some patches help resolve mo=
re</div>
<div>than one CVE on the list. We strongly recommend simply applying all of=
</div>
<div>the provided patches (we have included a squashed single-patch version=
</div>
<div>for your convenience -- see v1.[234].patch).</div>
<div dir=3D"ltr"><br>
</div>
<div>| **NOTE**:</div>
<div>| Some vendors were given a pre-release version of this release.</div>
<div>| These public releases include two extra patches to fix regressions</=
div>
<div>| dIscovered very late during the embargo period and were thus not</di=
v>
<div>| included in the pre-release versions. Please update to this version.=
</div>
<div>| The above tarball includes these extra patches as well.</div>
<div dir=3D"ltr"><br>
</div>
<div>/*** Vulnerabilities ***/</div>
<div dir=3D"ltr"><br>
</div>
<div>Below is a break-down of the key points of each issue. Once this</div>
<div>vulnerability is made public on the embargo date, the linked advisory<=
/div>
<div>pages will contain some more information about the issues.</div>
<div dir=3D"ltr"><br>
</div>
<div>Please note that while these issues are generally related, the availab=
le</div>
<div>mitigations (if any) vary from issue to issue. However, all of these</=
div>
<div>attacks rely on starting containers with custom mount configurations -=
-</div>
<div>if you do not run untrusted container images from unknown or unverifie=
d</div>
<div>sources then these attacks would not be possible to exploit. Note that=
</div>
<div>Dockerfiles support custom mount configurations (with RUN --mount=3D..=
.)</div>
<div>and so these issues are also exploitable from Dockerfiles.</div>
<div dir=3D"ltr"><br>
</div>
<div>Also please note that the below CVSS scores are based on the threat</d=
iv>
<div>model from *runc's point of view*. If you were to analyse the same</di=
v>
<div>vulnerability from the perspective of network-enabled systems like</di=
v>
<div>Docker or Kubernetes you would likely end up with a much higher</div>
<div>severity.</div>
<div dir=3D"ltr"><br>
</div>
<div>/* CVE-2025-31133 */</div>
<div dir=3D"ltr"><br>
</div>
<div>&quot;container escape via 'masked path' abuse due to mount race condi=
tions&quot;</div>
<div dir=3D"ltr"><br>
</div>
<div>CVSS:4.0/AV:L/AC:L/AT:P/PR:L/UI:A/VC:H/VI:H/VA:H/SC:H/SI:H/SA:H (7.3)<=
/div>
<div dir=3D"ltr"><br>
</div>
<div>&lt;<a href=3D"https://github.com/opencontainers/runc/security/advisor=
ies/GHSA-9493-h29p-rfm2&gt;">https://github.com/opencontainers/runc/securit=
y/advisories/GHSA-9493-h29p-rfm2&gt;</a></div>
<div dir=3D"ltr"><br>
</div>
<div>CVE-2025-31133 exploits an issue with how masked paths are implemented=
</div>
<div>in runc. When masking files, runc will bind-mount the container's</div>
<div>/dev/null inode on top of the file. However, if an attacker can replac=
e</div>
<div>/dev/null with a symlink to some other procfs file, runc will instead<=
/div>
<div>bind-mount the symlink target read-write. This issue affects all known=
</div>
<div>runc versions.</div>
<div dir=3D"ltr"><br>
</div>
<div>This stage happens after pivot_root(2) and so cannot be used to</div>
<div>bind-mount host files directly. However, paths like</div>
<div>/proc/sys/kernel/core_pattern which can be used to break out of a</div>
<div>container entirely (coredump helpers are spawned as upcalls, which are=
</div>
<div>not namespaced and have full host privileges).&nbsp;/proc/sysrq-trigge=
r can</div>
<div>also be used by an attacker to cause the host system to crash or halt.=
</div>
<div>(This is &quot;Attack 1&quot;.)</div>
<div dir=3D"ltr"><br>
</div>
<div>While developing a fix for this issue, we also discovered that if the<=
/div>
<div>attacker instead deleted /dev/null, runc would purposefully ignore the=
</div>
<div>error and thus make maskedPath a no-op. This is slightly less serious,=
</div>
<div>but it would permit some information disclosure through masked files</=
div>
<div>like /proc/kcore and /proc/timer_list. (This is &quot;Attack 2&quot;.)=
</div>
<div dir=3D"ltr"><br>
</div>
<div>Potential mitigations for this issue include:</div>
<div dir=3D"ltr"><br>
</div>
<div>* Using user namespaces, with the host root user not mapped into the</=
div>
<div>&nbsp;&nbsp; container's namespace. procfs file permissions are manage=
d using Unix</div>
<div>&nbsp;&nbsp; DAC and thus user namespaces stop a container process fro=
m being able</div>
<div>&nbsp;&nbsp; to write to them.</div>
<div dir=3D"ltr"><br>
</div>
<div>* Not running as a root user in the container (this includes disabling=
</div>
<div>&nbsp;&nbsp; setuid binaries with noNewPrivileges). As above, procfs f=
ile</div>
<div>&nbsp;&nbsp; permissions are managed using Unix DAC and thus non-root =
users cannot</div>
<div>&nbsp;&nbsp; write to them.</div>
<div dir=3D"ltr"><br>
</div>
<div>* Depending on the maskedPath configuration (the default configuration=
</div>
<div>&nbsp;&nbsp; only masks paths in /proc and /sys), using an AppArmor th=
at blocks</div>
<div>&nbsp;&nbsp; unexpected writes to any maskedPaths (as is the case with=
 the default</div>
<div>&nbsp;&nbsp; profile used by Docker and Podman) will block attempts to=
 exploit</div>
<div>&nbsp;&nbsp; this issue. However, CVE-2025-52881 allows an attacker to=
 bypass LSM</div>
<div>&nbsp;&nbsp; labels, and so this mitigation is not helpful when consid=
ered in</div>
<div>&nbsp;&nbsp; combination with CVE-2025-52881.</div>
<div dir=3D"ltr"><br>
</div>
<div>* Based on our analysis, SELinux will NOT help mitigate this issue --<=
/div>
<div>&nbsp;&nbsp; the /dev/null bind-mount used for maskedPaths get re-labe=
led to the</div>
<div>&nbsp;&nbsp; container context and thus the container will have access=
 to them.</div>
<div dir=3D"ltr"><br>
</div>
<div>Thanks to Lei Wang (@ssst0n3 from Huawei) for finding and reporting th=
e</div>
<div>original vulnerability (Attack 1), and Li Fubang (@lifubang from</div>
<div>acmcoder.com, CIIC) for discovering another attack vector (Attack 2)</=
div>
<div>based on @ssst0n3's initial findings.</div>
<div dir=3D"ltr"><br>
</div>
<div>/* CVE-2025-52565 */</div>
<div dir=3D"ltr"><br>
</div>
<div>&quot;container escape with malicious config due to /dev/console mount=
 and related races&quot;</div>
<div dir=3D"ltr"><br>
</div>
<div>CVSS:4.0/AV:L/AC:L/AT:P/PR:L/UI:A/VC:H/VI:H/VA:H/SC:H/SI:H/SA:H (7.3)<=
/div>
<div dir=3D"ltr"><br>
</div>
<div>&lt;<a href=3D"https://github.com/opencontainers/runc/security/advisor=
ies/GHSA-qw9x-cqr3-wc7r&gt;">https://github.com/opencontainers/runc/securit=
y/advisories/GHSA-qw9x-cqr3-wc7r&gt;</a></div>
<div dir=3D"ltr"><br>
</div>
<div>CVE-2025-52565 is very similar in concept and application to</div>
<div>CVE-2025-31133, except that it exploits a flaw in /dev/console</div>
<div>bind-mounts. When creating the /dev/console bind-mount (to /dev/pts/$n=
),</div>
<div>if an attacker replaces /dev/pts/$n with a symlink then runc will</div>
<div>bind-mount the symlink target over /dev/console. This issue affects al=
l</div>
<div>versions of runc &gt;=3D 1.0.0-rc3.</div>
<div dir=3D"ltr"><br>
</div>
<div>As with CVE-2025-31133, this happens after pivot_root(2) and so cannot=
</div>
<div>be used to bind-mount host files directly, but an attacker can trick</=
div>
<div>runc into creating a read-write bind-mount of</div>
<div>/proc/sys/kernel/core_pattern or /proc/sysrq-trigger, leading to a</di=
v>
<div>complete container breakout (as with CVE-2025-31133).</div>
<div dir=3D"ltr"><br>
</div>
<div>While developing a fix for this issue, we also found some potentially<=
/div>
<div>concerning issues with os.Create usage (which may have allowed for hos=
t</div>
<div>files to be truncated by an attacker) -- though we deemed these issues=
</div>
<div>to not be exploitable, we have provided fixes for them. In addition,</=
div>
<div>some previously known issues with /dev/pts/$n race conditions were</di=
v>
<div>re-analysed and we have included mitigations for them too (even though=
</div>
<div>we still feel these are mostly hypothetical issues).</div>
<div dir=3D"ltr"><br>
</div>
<div>Potential mitigations for this issue include:</div>
<div dir=3D"ltr"><br>
</div>
<div>* Using user namespaces, with the host root user not mapped into the</=
div>
<div>&nbsp;&nbsp; container's namespace. procfs file permissions are manage=
d using Unix</div>
<div>&nbsp;&nbsp; DAC and thus user namespaces stop a container process fro=
m being able</div>
<div>&nbsp;&nbsp; to write to them.</div>
<div dir=3D"ltr"><br>
</div>
<div>* Not running as a root user in the container (this includes disabling=
</div>
<div>&nbsp;&nbsp; setuid binaries with noNewPrivileges). As above, procfs f=
ile</div>
<div>&nbsp;&nbsp; permissions are managed using Unix DAC and thus non-root =
users cannot</div>
<div>&nbsp;&nbsp; write to them.</div>
<div dir=3D"ltr"><br>
</div>
<div>* The default SELinux policy should mitigate this issue, as the</div>
<div>&nbsp;&nbsp; /dev/console bind-mount does not re-label the mount and s=
o the</div>
<div>&nbsp;&nbsp; container process should not be able to write to unsafe p=
rocfs files.</div>
<div>&nbsp;&nbsp; However, CVE-2025-52881 allows an attacker to bypass LSM =
labels, and</div>
<div>&nbsp;&nbsp; so this mitigation is not helpful when considered in comb=
ination with</div>
<div>&nbsp;&nbsp; CVE-2025-52881.</div>
<div dir=3D"ltr"><br>
</div>
<div>* The default AppArmor profile used by most runtimes will NOT help</di=
v>
<div>&nbsp;&nbsp; mitigate this issue, as /dev/console access is permitted.=
 You could</div>
<div>&nbsp;&nbsp; create a custom profile that blocks access to /dev/consol=
e, but such</div>
<div>&nbsp;&nbsp; a profile might break regular containers. In addition, CV=
E-2025-52881</div>
<div>&nbsp;&nbsp; allows an attacker to bypass LSM labels, and so that miti=
gation is</div>
<div>&nbsp;&nbsp; not helpful when considered in combination with CVE-2025-=
52881.</div>
<div dir=3D"ltr"><br>
</div>
<div>Known Issues:</div>
<div dir=3D"ltr"><br>
</div>
<div>* We are aware of an issue with our mitigation for this attack and cer=
tain configurations</div>
<div dir=3D"ltr"><br>
</div>
<div>Thanks to Lei Wang (@ssst0n3 from Huawei) and Li Fubang (@lifubang fro=
m</div>
<div>acmcoder.com, CIIC) for discovering and reporting the main /dev/consol=
e</div>
<div>bind-mount vulnerability, as well as Aleksa Sarai (@cyphar from SUSE)<=
/div>
<div>for discovering the related issues mentioned above as well as the</div>
<div>original research into these classes of issues several years ago.</div>
<div dir=3D"ltr"><br>
</div>
<div>/* CVE-2025-52881 */</div>
<div dir=3D"ltr"><br>
</div>
<div>&quot;container escape and denial of service due to arbitrary write ga=
dgets and procfs write redirects&quot;</div>
<div dir=3D"ltr"><br>
</div>
<div>CVSS:4.0/AV:L/AC:L/AT:P/PR:L/UI:A/VC:H/VI:H/VA:H/SC:H/SI:H/SA:H (7.3)<=
/div>
<div dir=3D"ltr"><br>
</div>
<div>&lt;<a href=3D"https://github.com/opencontainers/runc/security/advisor=
ies/GHSA-cgrx-mc8f-2prm&gt;">https://github.com/opencontainers/runc/securit=
y/advisories/GHSA-cgrx-mc8f-2prm&gt;</a></div>
<div dir=3D"ltr"><br>
</div>
<div>This attack is a more sophisticated variant of CVE-2019-16884, which w=
as</div>
<div>CVE-2019-19921</div>
<div>a flaw that allowed an attacker to trick runc into writing the LSM</di=
v>
<div>process labels for a container process into a dummy tmpfs file and thu=
s</div>
<div>not apply the correct LSM labels to the container process. The</div>
<div>mitigation we applied for CVE-2019-19921 was fairly limited and</div>
<div>effectively only caused runc to verify that when we write LSM labels</=
div>
<div>that those labels are actual procfs files. This issue affects all know=
n</div>
<div>runc versions.</div>
<div dir=3D"ltr"><br>
</div>
<div>Rather than using a fake tmpfs file for /proc/self/attr/&lt;label&gt;,=
 an</div>
<div>attacker could instead (through various means) make</div>
<div>/proc/self/attr/&lt;label&gt; reference a real procfs file, but one th=
at would</div>
<div>still be a no-op (such as /proc/self/sched). This would have the same<=
/div>
<div>effect but would clear the &quot;is a procfs file&quot; check.</div>
<div dir=3D"ltr"><br>
</div>
<div>We were aware that this kind of attack would be possible (even going s=
o</div>
<div>far as to discuss this publicly as &quot;future work&quot; at conferen=
ces), and we</div>
<div>were working on a far more comprehensive mitigation of this attack, bu=
t</div>
<div>this security issue was disclosed before we could complete this work.<=
/div>
<div dir=3D"ltr"><br>
</div>
<div>This attack pairs well with CVE-2025-31133 and CVE-2025-52565, as the<=
/div>
<div>most basic version described above acts as an LSM bypass that makes it=
</div>
<div>easy for an attacker to write to procfs files and break out of a</div>
<div>container.</div>
<div dir=3D"ltr"><br>
</div>
<div>However, rather than just making the write a no-op, the attacker could=
</div>
<div>instead redirect the write to a more malicious target (such as</div>
<div>/proc/sysrq-trigger to crash the host machine). In addition, sysctl</d=
iv>
<div>writes could be similarly redirected, so it is plausible an attacker</=
div>
<div>would be able to provide a custom payload to write, allowing for a</di=
v>
<div>/proc/sys/kernel/core_pattern-based full container breakout.</div>
<div dir=3D"ltr"><br>
</div>
<div>This lead us to do a complete audit for all write operations in runc, =
as</div>
<div>any write operation could potentially be redirected in a similar way -=
-</div>
<div>we did not find any more problematic writes in our analysis but we are=
</div>
<div>still investigating the possibility of using lints or static analysis =
to</div>
<div>detect this kind of issue.</div>
<div dir=3D"ltr"><br>
</div>
<div>Potential mitigations for this issue include:</div>
<div dir=3D"ltr"><br>
</div>
<div>* Using rootless containers, as doing so will block most of the</div>
<div>&nbsp;&nbsp; inadvertent writes (runc would run with reduced privilege=
s, making</div>
<div>&nbsp;&nbsp; attempts to write to procfs files ineffective).</div>
<div dir=3D"ltr"><br>
</div>
<div>* Based on our analysis, neither AppArmor or SELinux can protect</div>
<div>&nbsp;&nbsp; against the full version of the redirected write attack. =
The</div>
<div>&nbsp;&nbsp; container runtime is generally privileged enough to write=
 to</div>
<div>&nbsp;&nbsp; arbitrary procfs files, which is more than sufficient to =
cause a</div>
<div>&nbsp;&nbsp; container breakout.</div>
<div dir=3D"ltr"><br>
</div>
<div>&nbsp;&nbsp; With SELinux, it is *possible* that the container_runtime=
_t label</div>
<div>&nbsp;&nbsp; applied to runc will restrict how much runc can do with t=
he no-op</div>
<div>&nbsp;&nbsp; variant of the attack, but it seems to us that the</div>
<div>&nbsp;&nbsp; /proc/sysrq-trigger host crash and /proc/sys/kernel/core_=
pattern</div>
<div>&nbsp;&nbsp; container breakout attacks would still work.</div>
<div dir=3D"ltr"><br>
</div>
<div>Thanks to Li Fubang (@lifubang from acmcoder.com, CIIC) and T=F5nis Ti=
igi</div>
<div>(@tonistiigi from Docker) for both independently discovering this</div>
<div>vulnerability, as well as Aleksa Sarai (@cyphar from SUSE) for the</di=
v>
<div>original research into this class of security issues and solutions ove=
r</div>
<div>the past few years.</div>
<div dir=3D"ltr"><br>
</div>
<div>/*** Other Container Runtimes ***/</div>
<div dir=3D"ltr"><br>
</div>
<div>These issues are all very easy-to-make logic flaws, and as such we</di=
v>
<div>contacted several other container runtimes to alert them of these issu=
es</div>
<div>and provide them our analysis.</div>
<div dir=3D"ltr"><br>
</div>
<div>Our current understanding is that youki and crun have similar flaws an=
d</div>
<div>are working on patches to be released in co-ordination with this</div>
<div>advisory. LXC appears to have some similar bugs but their security</di=
v>
<div>policy is (understandably) that non-user-namespaced containers are</di=
v>
<div>fundamentally insecure and thus such exploits are not security issues.=
</div>
<div dir=3D"ltr"><br>
</div>
<div>If you use a container runtime other than runc, please check whether</=
div>
<div>upstream has released a security update addressing these (or similar)<=
/div>
<div>issues once this issue becomes public.</div>
<div dir=3D"ltr"><br>
</div>
<div>If you are a container runtime author that we did not contact, please<=
/div>
<div>get in touch with me at &lt;<a href=3D"mailto:cyphar@cyphar.com">cypha=
r@cyphar.com</a>&gt; to get added to the</div>
<div>cross-runtime security group. Please note that this group is intended<=
/div>
<div>for *low-level* container runtime *upstream maintainers* only.</div>
<div dir=3D"ltr"><br>
</div>
<div>/*** Extra Patches ***/</div>
<div dir=3D"ltr"><br>
</div>
<div>There were three issues with these patches which we became aware of</d=
iv>
<div>quite late in the embargo process. We have included new patches in the=
</div>
<div>released versions linked above to address two of them, but these patch=
es</div>
<div>were not included in the pre-release tarballs provided to vendors:</di=
v>
<div dir=3D"ltr"><br>
</div>
<div>* *00*-openat2-improve-resilience-on-busy-systems.patch</div>
<div>* *00*-rootfs-re-allow-dangling-symlinks-in-mount-targets.patch</div>
<div dir=3D"ltr"><br>
</div>
<div>Note that these are *NOT* security issues, they are usability</div>
<div>regressions that may affect some users depending on what images they u=
se</div>
<div>and what kind of systems they run their containers on.</div>
<div dir=3D"ltr"><br>
</div>
<div>Below is the description provided to vendors, for your own reference,<=
/div>
<div>but the issues listed have been fixed (with the exception of the last<=
/div>
<div>issue, which is still being investigated).</div>
<div dir=3D"ltr"><br>
</div>
<div>/* openat2 EAGAIN Retry Failures */</div>
<div dir=3D"ltr"><br>
</div>
<div>openat2 will return -EAGAIN if there was a racing rename or mount when=
</div>
<div>trying to walk into &quot;..&quot; during a scoped lookup. On systems =
with heavy</div>
<div>load, this can happen fairly frequently. In the version of the patches=
</div>
<div>we merged, runc would retry every openat2 operation up to 32 times</di=
v>
<div>before failing with an error in order to mitigate this while also</div>
<div>avoiding denial-of-service attacks.</div>
<div dir=3D"ltr"><br>
</div>
<div>Unfortunately, it seems this number was too conservative and some</div>
<div>vendors have reported seeing this error:</div>
<div dir=3D"ltr"><br>
</div>
<div>&nbsp;&nbsp;runc run failed: unable to start container process: error =
during container init: error mounting &quot;$source&quot; to rootfs at &quo=
t;$destination&quot;: create mountpoint for $destination mount: lookup moun=
tpoint target: securejoin.OpenInRoot $destination: openat2 $destination:
 possible attack detected</div>
<div dir=3D"ltr"><br>
</div>
<div>Based on my testing, the worst-case failure rate for this is probably<=
/div>
<div>around 3% (this is based on figures from me running very aggressive</d=
iv>
<div>rename loops on all 16 cores of my laptop). It is probably lower for</=
div>
<div>production deployments that have less aggressive rename and mount chur=
n,</div>
<div>but it was a detectable regression for some downstreams.</div>
<div dir=3D"ltr"><br>
</div>
<div>*00*-openat2-improve-resilience-on-busy-systems.patch is a patch that<=
/div>
<div>resolves this issue. The simplest mitigation is to just bump the retry=
</div>
<div>number (which this patch does), but I have also included some addition=
al</div>
<div>retries with a time-based deadline that in my testing should be</div>
<div>virtually impossible to hit even in very high load scenarios (I was</d=
iv>
<div>unable to hit the error even after running &gt;50k tests in a tight lo=
op).</div>
<div dir=3D"ltr"><br>
</div>
<div>Some vendors have reported that this reduced the failure rate to</div>
<div>effectively 0 after 3-4 days of heavy load testing.</div>
<div dir=3D"ltr"><br>
</div>
<div>/* Dangling Symlink Mount Targets */</div>
<div dir=3D"ltr"><br>
</div>
<div>Due to the hardening work done for mounts in the provided patchsets, i=
t</div>
<div>was necessary to block certain configurations that could not be done</=
div>
<div>safely in a reasonable way. One of these configurations is mount targe=
ts</div>
<div>that contain symlinks to non-existent paths (otherwise known as</div>
<div>&quot;dangling symlinks&quot;). With these patches, such configuration=
s will</div>
<div>result in the following error:</div>
<div dir=3D"ltr"><br>
</div>
<div>&nbsp;&nbsp;runc create failed: unable to start container process: err=
or during container init: error mounting &quot;$source&quot; to rootfs at &=
quot;$destination&quot;: create mountpoint for $destination mount: make mou=
ntpoint &quot;$destination&quot;: file exists</div>
<div dir=3D"ltr"><br>
</div>
<div>The workaround is to either change the symlink to point to a real path=
</div>
<div>or create the target of the dangling symlink (previously, runc would d=
o</div>
<div>this for you). A survey of public images indicates that this pattern i=
s</div>
<div>incredibly rare (the one example I've been given is of a broken</div>
<div>/etc/resolv.conf symlink), and in addition these kinds of symlinks are=
</div>
<div>quite hard to deal with in a sane and safe manner.</div>
<div dir=3D"ltr"><br>
</div>
<div>This change in behaviour was intentional, but after receving reports</=
div>
<div>from more than one downstream, I took another look and wrote a hotfix<=
/div>
<div>that should allow us to continue to support these broken symlinks.</di=
v>
<div>*00*-rootfs-re-allow-dangling-symlinks-in-mount-targets.patch is that<=
/div>
<div>patch.</div>
<div dir=3D"ltr"><br>
</div>
<div>However, we still strongly suggest users refrain from creating images<=
/div>
<div>with such broken symlinks.</div>
<div dir=3D"ltr"><br>
</div>
<div>/* Issues with &quot;-v /dev:/dev&quot; */</div>
<div dir=3D"ltr"><br>
</div>
<div>At SUSE, we found an example of a developer tool creating a bind-mount=
</div>
<div>of the host /dev into the container. For reasons that are not entirely=
</div>
<div>clear to me yet, this setup appears to have worked previously but can<=
/div>
<div>now lead to permission issues with rootless containers with our</div>
<div>mitigating patches, with typical errors looking like:</div>
<div dir=3D"ltr"><br>
</div>
<div>&nbsp;&nbsp;exec failed: unable to start container process: reopen ptm=
x to get new pty pair: reopen fd 11: permission denied</div>
<div dir=3D"ltr"><br>
</div>
<div>I have not yet been able to root-cause this issue (I suspect that</div>
<div>ptmxmode=3D000 has some part to play here), but I would argue that suc=
h</div>
<div>setups are not particularly safe nor recommended, and users should</di=
v>
<div>instead be doing --mount type=3Ddevpts,... if they have a strong need =
to</div>
<div>configure the /dev/pts mount (which is what our tool was trying to do<=
/div>
<div>and had already been patched in newer versions to do properly).</div>
<div dir=3D"ltr"><br>
</div>
<div>If you have seen this issue or have any other information, feel free t=
o</div>
<div>open a bug report.</div>
<div dir=3D"ltr"><br>
</div>
<div>/*** Credits ***/</div>
<div dir=3D"ltr"><br>
</div>
<div>Thanks again to the following researchers for helping discover and</di=
v>
<div>report these vulnerabilities:</div>
<div dir=3D"ltr"><br>
</div>
<div>* Lei Wang (@ssst0n3 from Huawei)</div>
<div>* Li Fubang (@lifubang from acmcoder.com, CIIC)</div>
<div>* T=F5nis Tiigi (@tonistiigi from Docker)</div>
<div>* Aleksa Sarai (@cyphar from SUSE)</div>
<div dir=3D"ltr"><br>
</div>
<div>Additional thanks go to T=F5nis Tiigi for showing that Dockerfiles can=
 be</div>
<div>used to exploit these issues, and thus providing us with some very</di=
v>
<div>useful exploit templates for these kinds of race attacks.</div>
<div dir=3D"ltr"><br>
</div>
<div>--</div>
<div>Aleksa Sarai</div>
<div>Senior Software Engineer (Containers)</div>
<div>SUSE Linux GmbH</div>
<div><a href=3D"https://www.cyphar.com/">https://www.cyphar.com/</a></div>
<div dir=3D"ltr"><br>
</div>
</body>
</html>

--_000_VI0P189MB27662827477671D5A42635DDAEC2AVI0P189MB2766EURP_--
