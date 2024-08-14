Received: (qmail 7657 invoked by uid 550); 14 Aug 2024 17:19:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26409 invoked from network); 14 Aug 2024 17:14:13 -0000
ARC-Seal: i=1; a=rsa-sha256; t=1723655643; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=HqzRQ7Vnl0OzrORi9JhqmnH6tsA9tCyrUquNNpVCTCg1FhAuZ4gB/l79+3gLEwlkbtL1U8GWiUQ+hcP7EP3p1/Y1UFsGg00U8gsf64a7jlqykJfvz+5Cps41QBSw0+CJ3Se0PK/lpU8coxHdeVIBDkGRFjRlIb54xSNFtYHgX1E=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1723655643; h=Content-Type:Cc:Cc:Date:Date:From:From:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=1NoOo8+ABfMAfQsLhl5LSvr6W8wduN1tPikhTTNyRTQ=; 
	b=jt7Ms3K+aAaxFbo/VS7cCAECHRyFxWoqF+jesbhB0CUOmTjcomtGu9NDlKRuflGao6ZH6N1OMG8sw9p7lraAxXV8xxEcnciwyr5ehnf9ZoAfoqUt8Zydiq+N7AmuMhVDRsdKPaMThXEyxLdASQcbtd+iigFDdAC9uJJdbE4LzWk=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=smcv@collabora.com;
	dmarc=pass header.from=<smcv@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1723655643;
	s=zohomail; d=collabora.com; i=smcv@collabora.com;
	h=Date:Date:From:From:To:To:Cc:Cc:Subject:Subject:Message-ID:MIME-Version:Content-Type:Message-Id:Reply-To;
	bh=1NoOo8+ABfMAfQsLhl5LSvr6W8wduN1tPikhTTNyRTQ=;
	b=ZzoIp+0QfrgzCa5qpZJezspPyxvHs0l7iKmTOYADKQD1Ksd916dqobAwzxs6iVzb
	1RAcxKFQWBy1zMWvTzky4nBs0/dxFDyjdEAwd/bSOTNpW5grX6rvF32D5iwLJRXjM7V
	S4+SPDzU6bC219feGlGbIb3LarY2zcSvgembtS2Q=
Date: Wed, 14 Aug 2024 18:13:57 +0100
From: Simon McVittie <smcv@collabora.com>
To: flatpak@lists.freedesktop.org, oss-security@lists.openwall.com
Cc: flatpak-security@lists.freedesktop.org
Message-ID: <Zrzl1Vi_mmbZlEHJ@descent>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-ZohoMailClient: External
Subject: [oss-security] flatpak CVE-2024-42472: Access to files outside sandbox for apps
 using persistent= (--persist)

Flatpak is a system for building, distributing, and running sandboxed
desktop applications on Linux.

Chris Williams discovered an issue with how Flatpak mounts persistent
directories, which can allow an application using them to access host
files.

Advisory: https://github.com/flatpak/flatpak/security/advisories/GHSA-7hgv-f2j8-xw87
Affected: all < 1.14.10, 1.15.x < 1.15.10
Fixed: 1.14.x >= 1.14.10, all >= 1.15.10

Impact
======

A malicious or compromised Flatpak app using persistent directories could
read and write files in locations it would not normally have access to,
which is an attack on integrity and confidentiality.

Description
===========

When persistent=subdir is used in the application permissions (represented
as --persist=subdir in the command-line interface), that means that
an application which otherwise doesn't have access to the real user
home directory will see an empty home directory with a writeable
subdirectory `subdir`. Behind the scenes, this directory is actually a
bind mount and the data is stored in the per-application directory as
~/.var/app/$APPID/subdir. This allows existing apps that are not aware of
the per-application directory to still work as intended without general
home directory access.

However, the application does have write access to the application
directory ~/.var/app/$APPID where this directory is stored. If the source
directory for the persistent/--persist option is replaced by a symlink,
then the next time the application is started, the bind mount will follow
the symlink and mount whatever it points to into the sandbox.

For example, org.mozilla.Thunderbird has persistent=.thunderbird, and is
not meant to be able to access ~/.ssh.  In this example, % represents a
shell prompt on the host system, and $ represents a shell prompt inside
the app sandbox.

% flatpak run --command=sh org.mozilla.Thunderbird
$ mv ~/.var/app/org.mozilla.Thunderbird/.thunderbird{,.save}
$ ln -s ~/.ssh ~/.var/app/org.mozilla.Thunderbird/.thunderbird
$ exit
% flatpak run --command=sh org.mozilla.Thunderbird
$ ls ~/.thunderbird
{contents of ~/.ssh/}

Patches
=======

This was fixed in Flatpak 1.14.10 (stable release branch) and 1.15.10
(development prerelease branch).

For details of backportable patches suitable
for inclusion in LTS distributions, please see
<https://github.com/flatpak/flatpak/security/advisories/GHSA-7hgv-f2j8-xw87>.

Fully resolving this vulnerability requires adding a new --bind-fd option
to bubblewrap (a sandboxing component used by Flatpak) so that Flatpak
can avoid a time-of-check/time-of-use race condition. This feature was
added in bubblewrap 0.10.0, but can be backported. More details are
available via the link above.

Depending how Flatpak was configured at build time, the version of
bubblewrap that needs to be patched might either be separately installed
into the PATH (typically /usr/bin/bwrap from an OS vendor package),
or a bundled convenience copy that is private to Flatpak (typically
installed as /usr/libexec/flatpak-bwrap). The convenience copies that
are included in Flatpak versions 1.14.10 and 1.15.10 have been updated
to include the necessary feature.

Mitigations
===========

If patching bubblewrap is logistically difficult, a mitigation is to apply
only the patch "Don't follow symlinks when mounting persisted directories"
to Flatpak, and then avoid running two instances of the same untrusted
app at the same time; this should prevent the time-of-check/time-of-use
issue from being exploited.

Another mitigation is to avoid installing untrusted apps that have
the "persistent" sandboxing parameter set in their metadata, and also
avoid using `flatpak override --persist ...` to add that parameter to
untrusted apps.

-- 
Simon McVittie, Collabora Ltd. / Debian
on behalf of the Flatpak maintainers
