Received: (qmail 28544 invoked by uid 550); 9 Apr 2026 00:33:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 28405 invoked from network); 9 Apr 2026 00:33:01 -0000
Date: Thu, 9 Apr 2026 02:32:56 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20260409003256.GA12812@openwall.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.4.2.3i
Subject: [oss-security] 4 security fixes in Flatpak, including critical CVE-2026-34078: Complete sandbox escape leading to host file access and code execution in the host context

Hi,

Flatpak releases 1.16.4 and 1.17.4 are documented to include 4 security
fixes, including one for a critical severity issue.  Flatpak releases
1.16.5 and 1.17.5 fix regressions caused by the critical security fix:

https://github.com/flatpak/flatpak/releases

The security page:

https://github.com/flatpak/flatpak/security

lists the 4 security issues as follows (I reversed the order here):

> CVE-2026-34078: Complete sandbox escape leading to host file access and code execution in the host context
> GHSA-cc2q-qc34-jprg published yesterday by swick
> Critical
> 
> CVE-2026-34079: Arbitrary file deletion on the host filesystem
> GHSA-p29x-r292-46pp published yesterday by swick
> Moderate
> 
> Arbitrary read-access to files in the system-helper context
> GHSA-2fxp-43j9-pwvc published yesterday by swick
> Low
> 
> flatpak-system-helper: cross-user CancelPull orphans another user's ongoing pull
> GHSA-89xm-3m96-w3jg published yesterday by swick
> Low

Here they are individually:

https://github.com/flatpak/flatpak/security/advisories/GHSA-cc2q-qc34-jprg

> CVE-2026-34078: Complete sandbox escape leading to host file access and code execution in the host context
> Critical
> swick published GHSA-cc2q-qc34-jprg yesterday
> 
> Affected versions
> <1.16.4
> Patched versions
> 1.16.4
> 
> Impact
> 
> Every Flatpak app is able to read and write arbitrary files on the host and execute code in the host context.
> 
> Description
> 
> The Flatpak portal accepts paths in the sandbox-expose options which can be app-controlled symlinks pointing at arbitrary paths. Flatpak run mounts the resolved host path in the sandbox. This gives apps access to all host files and can be used as a primitive to gain code execution in the host context.
> 
> Patches
> 
> The issue has been patched in version 1.16.4 and will be patched in the upcoming version 1.18.0.
> 
> Mitigations
> 
> Disabling the Flatpak Portal mitigates the issue but can result in misbehaving apps.
> 
> sudo systemctl --global mask flatpak-portal.service && systemctl --user stop flatpak-portal.service
> 
> Credits
> 
> Reported by Codean Labs

https://github.com/flatpak/flatpak/security/advisories/GHSA-p29x-r292-46pp

> CVE-2026-34079: Arbitrary file deletion on the host filesystem
> Moderate
> swick published GHSA-p29x-r292-46pp yesterday
> 
> Affected versions
> <1.16.4
> Patched versions
> 1.16.4
> 
> Impact
> 
> Every Flatpak app is able to delete arbitrary files on the host.
> 
> Description
> 
> The caching for ld.so removes outdated cache files without properly checking that the app controlled path to the outdated cache is in the cache directory.
> 
> Patches
> 
> The issue has been patched in version 1.16.4 and will be patched in the upcoming version 1.18.0.
> 
> Mitigations
> 
> No know mitigation other than updating
> 
> Credits
> 
> Reported by Codean Labs

https://github.com/flatpak/flatpak/security/advisories/GHSA-2fxp-43j9-pwvc

> Arbitrary read-access to files in the system-helper context
> Low
> swick published GHSA-2fxp-43j9-pwvc yesterday
> 
> Affected versions
> <1.16.4
> Patched versions
> 1.16.4
> 
> Impact
> 
> A malicious user can get read-access to files in the system-helper context if a system OCI repository is configured.
> 
> Description
> 
> The OCI code paths in the system helper will follow symlinks when importing OCI images which are under the user's control.
> 
> Patches
> 
> The issue has been patched in version 1.16.4 and will be patched in the upcoming version 1.18.0.
> 
> Mitigations
> 
> Remove all OCI system remotes.
> 
> Credits
> 
> @smcv

https://github.com/flatpak/flatpak/security/advisories/GHSA-89xm-3m96-w3jg

> flatpak-system-helper: cross-user CancelPull orphans another user's ongoing pull
> Low
> swick published GHSA-89xm-3m96-w3jg yesterday
> 
> Affected versions
> <1.16.4
> Patched versions
> 1.16.4
> 
> Impact
> 
> Ongoing pulls cannot be stopped.
> 
> Description
> 
> By calling org.freedesktop.Flatpak.SystemHelper.CancelPull on another user's pull, the pull does not get cancelled but removed from internal tracking, making it impossible to stop it.
> 
> Patches
> 
> The issue has been patched in version 1.16.4 and will be patched in the upcoming version 1.18.0.
> 
> Mitigations
> 
> No known mitigation other than updating.
> 
> Credits
> 
> Asim Viladi Oglu Manizada

Alexander
