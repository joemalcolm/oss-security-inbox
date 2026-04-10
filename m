Received: (qmail 17932 invoked by uid 550); 10 Apr 2026 23:09:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 17905 invoked from network); 10 Apr 2026 23:09:05 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.stravinsky; h=X-Debian-User:Content-Type:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=iYd8bQv/AqwvczJmf/M3SHaOcPbSCKnFIh3wbv8ccNs=; b=kryyJvfurrYNX+nyu+eVVMpDtX
	8ox9xJZ36xXoKeTNaF+wzY+rWKU6jFVeArTKKMhoV1mlGvl/bxfSXUr5wfH4TPe60XprtEeMEQMde
	QaRUG18umBWWoJqmwKpkkZwCdVQfiCbYt2t8FrHnM/5m2zpzKGMR+A3AwPMW+vMKB/GZxdsD4GM9T
	DjyjAUgYsfozgUdUiuCCq8b5jDCkyVn5uPussrDmb836FW2XWDOcc+XAf6NrDHBwOS9b5n7ea3UPE
	kX9h+Q4ykH0h1z3Oaf5BHjElzjX7OYJV2FiG/4gzmXOEamOLN+9wF9fqqZeGDom4IEZRV7W2wFlXx
	jlY7RvHg==;
Date: Sat, 11 Apr 2026 00:08:55 +0100
From: Simon McVittie <smcv@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <admDB8Eiz6MGYYu0@definition.pseudorandom.co.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
X-Debian-User: smcv
Subject: [oss-security] xdg-desktop-portal GHSA-rqr9-jwwf-wxgj: Trashing of
 arbitrary host files

xdg-desktop-portal's Trash portal is designed to allow sandboxed apps to
ask for a file or directory accessible to the app to be moved to the trash.

Similar to CVE-2026-34078 in Flatpak (but less serious), Codean Labs
reported that a malicious or compromised Flatpak app could ask the portal
to trash a file that it owns, then replace that file with a symlink,
exploit a time-of-check/time-of-use mismatch and make the portal trash
the target of the symlink on the host system instead.

This is fixed in stable release 1.20.4 and development prerelease 1.21.1.

https://github.com/flatpak/xdg-desktop-portal/security/advisories/GHSA-rqr9-jwwf-wxgj
