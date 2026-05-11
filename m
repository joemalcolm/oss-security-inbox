Received: (qmail 8058 invoked by uid 550); 11 May 2026 14:32:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 8016 invoked from network); 11 May 2026 14:32:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1778509916; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=D651H1J6mbpElRn79zVSHtGlUWRBuHpqf+Rqdh+hhCY=;
	b=Cd8xUfXiBcqzSQxEpzyfl2mY5H9OpNsZR+5ysvHLag8MYtxcCXJqtqXHxDNF7PbpV5H887
	dT3GU13fHG7x4HArnIPVyRb1J76g32RtKEQafDz7qr2T0N20jPVLvrtE+BwqW7K5t0z3ti
	QGz60mo5b6YGbfKtF7xa0aXV/a6vOFY=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1778509916;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=D651H1J6mbpElRn79zVSHtGlUWRBuHpqf+Rqdh+hhCY=;
	b=MxEov0qzgV+sSQTMhEIOwzmEdvC8lJ1GMFOVfJtYHbNclBrZm7mY28mAoVwDxyjCWLY6lL
	llXL6eTaeLfynJBg==
Authentication-Results: smtp-out1.suse.de;
	none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1778509916; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=D651H1J6mbpElRn79zVSHtGlUWRBuHpqf+Rqdh+hhCY=;
	b=Cd8xUfXiBcqzSQxEpzyfl2mY5H9OpNsZR+5ysvHLag8MYtxcCXJqtqXHxDNF7PbpV5H887
	dT3GU13fHG7x4HArnIPVyRb1J76g32RtKEQafDz7qr2T0N20jPVLvrtE+BwqW7K5t0z3ti
	QGz60mo5b6YGbfKtF7xa0aXV/a6vOFY=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1778509916;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=D651H1J6mbpElRn79zVSHtGlUWRBuHpqf+Rqdh+hhCY=;
	b=MxEov0qzgV+sSQTMhEIOwzmEdvC8lJ1GMFOVfJtYHbNclBrZm7mY28mAoVwDxyjCWLY6lL
	llXL6eTaeLfynJBg==
Date: Mon, 11 May 2026 16:31:52 +0200
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <agHoXKdqISYc1_17@kasco.suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="gQXQmMfnJgYFqmQZ"
Content-Disposition: inline
X-Spam-Level: 
X-Spam-Flag: NO
X-Spam-Score: -6.40
Subject: [oss-security] malcontent: Disk Space Exhaustion via Globally Accessible D-Bus API
 (CVE-2026-44931)

--gQXQmMfnJgYFqmQZ
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Mon, 11 May 2026 16:31:52 +0200
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Subject: malcontent: Disk Space Exhaustion via Globally Accessible D-Bus API
 (CVE-2026-44931)

Hello list,

this is a report about a disk exhaustion vulnerability in malcontent. We
also offer a rendered version of this report on our blog [1].

Summary: malcontent is a parental control system for the GNOME desktop
environment which supports restriction of content access and screen time
for children. In version 0.14.0 of malcontent a D-Bus method has been
added which allows arbitrary users in the system to fill up the disk
space in `/var/lib/malcontent-timerd`.

Introduction
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

malcontent [2] is a parental control system for the GNOME desktop
environment which allows to restrict access to adult Internet content
and to keep track of and restrict the amount of screen time for
children. As part of the GNOME 50 version update malcontent 0.14.0 was
packaged for openSUSE, triggering a review [3] of changes in the
package's D-Bus methods and Polkit actions.

During this review we identified a local disk space exhaustion attack
vector via one of the newly added D-Bus methods. There is currently no
upstream bugfix available for the issue. The full details about the
issue and communication with upstream will be provided in the following
sections.

Review Summary
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

The complexity [4] of malcontent increased a lot compared to the last
time [5] we looked into it. There now exist three different malcontent
D-Bus daemons utilizing three different service user accounts and some
additional daemons not providing D-Bus interfaces on top of that.

Some parts of the user tracking in malcontent suffer from race
conditions. We believe this is acceptable, given that parental controls
don't need to be strong security boundaries; it is sufficient if the
target audience (children) is not able to bypass the parental controls.

Disk Space Exhaustion Issue
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D

The newly introduced `RecordUsage` D-Bus method [6] in
`malcontent-timerd` is problematic beyond the possibility to bypass
parental controls. It allows arbitrary users in the system to slowly
fill up disk space in `/var/lib/malcontent-timerd`. The following shell
construct is a simple reproducer of the issue:

    for I in `seq 100000`; do
        gdbus call -y -d org.freedesktop.MalcontentTimer1 \
            -o /org/freedesktop/MalcontentTimer1 \
            -m org.freedesktop.MalcontentTimer1.Child.RecordUsage \
            "[(0, 1000, \"app\", \"org.gnome.MyApp$I\")]"
    done

The daemon will create an entry for every supposed GNOME app identifier
passed to it in `/var/lib/malcontent-timerd/store/<caller-username>.gvdb`.
This will slowly use up the disk space in `/var` and therefore is a
local Denial-of-Service attack vector.

To fix the problem, the method call could be restricted to callers in
local active sessions. Furthermore an upper limit of usage entries could
be placed on every user account to prevent excess disk usage.

Upstream Report
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

We reported this issue privately [7] via the upstream's GitLab bug
tracker on 2026-02-18 offering coordinated disclosure. We only received
an initial reply a couple of weeks later in which upstream confirmed the
issue but also mentioned that there is a lack of developer resources for
malcontent. At this time we expressed our opinion that a non-disclosure
period would not be strictly necessary since the impact of the issue is
not high. We never received further replies from upstream, so we decided
to go public with this report to avoid wasting more time without a
bugfix being developed.

CVE Assignment
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Due to the lack of replies we could not discuss with upstream whether a
CVE assignment is appropriate for this issue. Given that upstream at
least basically confirmed the issue and there is no bugfix available we
assigned CVE-2026-44931 to track the defect and to make others aware.

Timeline
=3D=3D=3D=3D=3D=3D=3D=3D

2026-02-18: We created a private issue [7] in the upstream GitLab,
            offering coordinated disclosure.
2026-03-11: Lacking a reaction we pinged the issue asking if anybody
            were reading it.
2026-03-11: An upstream developer responded confirming the issue and
	    pointing out that little developer time is available for
	    malcontent.
2026-03-23: We asked how upstream wants to continue regarding
	    coordinated disclosure. We explained that in our view a
	    non-disclosure period is not strictly necessary for the
	    issue and pointed out that the maximum non-disclosure period
	    we can offer is 90 days until 2026-05-19.
2026-04-09: Still without an answer we urged upstream once more to come
	    to a decision and a path forward regarding the publication
	    of the issue.
2026-04-21: We informed upstream that we would publish the report on our
            end if no reaction is received by 2026-04-30.
2026-05-05: We published our Bugzilla bug [3] describing the issue.
2026-05-08: We assigned CVE-2026-44931 for the issue and communicated
            this in the upstream issue.
2026-05-11: Publication of this report.

References
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

[1]: https://security.opensuse.org/2026/05/11/malcontent-disk-space-dos.html
[2]: https://gitlab.freedesktop.org/pwithnall/malcontent
[3]: https://bugzilla.suse.com/show_bug.cgi?id=3D1258140
[4]: https://bugzilla.suse.com/show_bug.cgi?id=3D1258140#c3
[5]: https://bugzilla.suse.com/show_bug.cgi?id=3D1177974
[6]: https://gitlab.freedesktop.org/pwithnall/malcontent/-/blob/0.14.0/libm=
alcontent-timer/child-timer-service.c?ref_type=3Dtags#L892
[7]: https://gitlab.freedesktop.org/pwithnall/malcontent/-/work_items/137

Best Regards

Matthias

--=20
Matthias Gerstner <matthias.gerstner@suse.de>
Security Engineer
https://www.suse.com/security
GPG Key ID: 0x14C405C971923553
=20
SUSE Software Solutions Germany GmbH
HRB 36809, AG N=FCrnberg
Gesch=E4ftsf=FChrer: Jochen Jaser, Andrew McDonald, Werner Knoblich

--gQXQmMfnJgYFqmQZ
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iQJPBAABCAA5FiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAmoB6FgbFIAAAAAABAAO
bWFudTIsMi41KzEuMTIsMiwyAAoJEBTEBclxkjVTgVEP/juFh8lOOGvSwiZt5Od3
Lgcdiswg55FqwqVouzPxW005n/okET8EH5V5a6EzKAf1Uxivh8vIMutG9eXhurEI
Minaa3edn2kBFn+sJQ1GXciKQUfZINn554OjoAQYNUqU4FVVpnSQ8kyS/9/QKe+J
Xxb0RhxuVet9MoRSBn9q6WUlv/ErJjSSQoICA9KSfboxwYXi4xMgXSm5sPcAIstJ
u+w+gzCd8mSpVVoZSqC7fCn96KAI93+GrmcLPJRAY/BV3n16rFX4K0QeVcJwpq0N
Xi8+7KuBg6f9cA2oxDNG++pT5WAy4Qkjb7NErKhQEwh/nisZ8cGhKjgM9GjSjm60
TmSk1l+nWCgECA0GRsjW04vYwpsblhyyjl2eXhuPWkIRVkc3Zjamx3fZ4ob+eWSG
wflBzMBjSHrcT2NU9S9ZZfPaACOs/+MK/AxhFCadXJbFMkyOYOlyuSM/WLL4Qryz
GlqFiCPHstZ4aUSqtwwf1l3JTGdtsVmQx6Kk07Op4FfCwl3/jzAbie+6GxYrI8I9
/7X4S67bGoiYSZhEcFH4KgVWFpvtA7Mr1L6YVwF5WVXSyjGfUEsQoisHdQSaogCK
xoZAjT3762Fsu+AH5JpclBDtlQawc1scEVBHmRzlPLCXnYkZaeXyg9YGfzOiALJh
grycY1nqJL4n3sYO39Gq89pL
=bUya
-----END PGP SIGNATURE-----

--gQXQmMfnJgYFqmQZ--
