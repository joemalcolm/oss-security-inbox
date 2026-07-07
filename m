X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/07/7
Message-ID: <CAK4yqw61nOkK8e46r+X928_BDacYFqUdgLAAPShiy7ujgfDiCA@mail.gmail.com>
Date: Tue, 7 Jul 2026 13:11:38 +0200
From: Ondrej Gajdusek <ogajduse@...hat.com>
To: oss-security@...ts.openwall.com
Subject: Foreman: multiple vulnerabilities fixed in 3.18.2 and 3.19.1 (CVE-2026-5135, CVE-2026-5136, CVE-2026-5138, CVE-2026-5142)
Content-Type: text/plain; charset=utf-8

Hi,

Multiple security fixes have been released in Foreman, an open-source
lifecycle management tool for physical and virtual servers.

---

CVE-2026-5136: Foreman: Privilege escalation via usergroup role
assignment manipulation

The Usergroup model does not validate whether the calling user is
permitted to assign the specified roles. A user with create_usergroups
or edit_usergroups permission can attach arbitrary roles to a usergroup
via the API, add themselves as a member, and inherit elevated privileges.

Affected versions: all Foreman versions
CVSS: 8.8 (Important)
CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U/C:H/I:H/A:H
Fixed versions: 3.18.2, 3.19.1
Credit: Stanislav Fot (Aisle Research)

References:
- Foreman Security: https://theforeman.org/security.html#2026-5136
- Redmine: https://projects.theforeman.org/issues/39478
- Fix: https://github.com/theforeman/foreman/pull/11066

---

CVE-2026-5142: Foreman: Cross-tenant private SSH key disclosure via
taxonomy scoping bypass

The KeyPairsController#show action is excluded from the
find_compute_resource callback that enforces taxonomy scoping.
An authenticated user with the view_keypairs permission can download
the full PEM private key of any compute resource by database ID,
bypassing organization and location boundaries.

Affected versions: all Foreman versions since 1.15.0
CVSS: 6.5 (Moderate)
CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U/C:H/I:N/A:N
Fixed versions: 3.18.2, 3.19.1
Credit: Stanislav Fot (Aisle Research)

References:
- Foreman Security: https://theforeman.org/security.html#2026-5142
- Redmine: https://projects.theforeman.org/issues/39479
- Fix: https://github.com/theforeman/foreman/pull/11069

---

CVE-2026-5135: Foreman: Unauthorized modification of host
configurations via broken access control

When lookup values are submitted as nested attributes during host or
hostgroup updates, the match field is permitted and applied without
ownership validation. A user with host-edit rights can retarget an
existing lookup value override to point at a different host, injecting
configuration values into hosts they are not authorized to edit.

Affected versions: all Foreman versions
CVSS: 6.5 (Moderate)
CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U/C:N/I:H/A:N
Fixed versions: 3.18.2, 3.19.1
Credit: Stanislav Fot (Aisle Research)

References:
- Foreman Security: https://theforeman.org/security.html#2026-5135
- Redmine: https://projects.theforeman.org/issues/39480
- Fix: https://github.com/theforeman/foreman/pull/11072

---

CVE-2026-5138: Foreman: Information disclosure via improper validation
of nested request parameters

The taxonomy_scope controller method loads organization and location
IDs from nested request parameters without checking the user's taxonomy
membership. An authenticated user with host-edit permissions can supply
a foreign organization ID in nested parameters to scope AJAX queries
to a tenant they do not belong to, leaking infrastructure metadata
such as domains, subnets, and IP availability.

Affected versions: all Foreman versions since 1.7.0
CVSS: 4.3 (Moderate)
CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U/C:L/I:N/A:N
Fixed versions: 3.18.2, 3.19.1
Credit: Stanislav Fot (Aisle Research)

References:
- Foreman Security: https://theforeman.org/security.html#2026-5138
- Redmine: https://projects.theforeman.org/issues/39481
- Fix: https://github.com/theforeman/foreman/pull/11075

---

Thanks,
Ondrej Gajdusek
Foreman Release Team

