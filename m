Received: (qmail 13655 invoked by uid 550); 17 Jun 2025 20:27:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13630 invoked from network); 17 Jun 2025 20:27:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.stravinsky; h=X-Debian-User:In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=rsFvF7xjwTrYObejhp7MO5DXVM2Kjs90F+YZ88SNnps=; b=qHLq7K1fvSbG2KcLR7RaHhxSqs
	AgV+tAoqZHigsaepF3+99PrcRmfI0O1edSoUdyejYQdqFy6rirVa5lzDwYsjwGcKjP59k0dCJ3DTb
	vYY7+eBHbwyu3eNwcXpWJDvdUmqj7onDa0MxQvYdI0TnoBkrweLffX/MiZr/zQuuBXq5828CJkDAd
	CS6q+4rep4MfEHu5L6wlJe97jxaA+PO2NpAKMaVEpKTpNbGd4iJIJvHQyDnVv6QfDIojtO0eGYvFm
	8/riBMbt6PQgo1fz2xdjtUkrcUFBWx2UjTpj4l8AlzgOPFRJ+m/0rTpoB/r4THwFnSXixviD/8WVw
	gzxHhagg==;
Date: Tue, 17 Jun 2025 21:27:40 +0100
From: Simon McVittie <smcv@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <aFHPvEcEt1uxE4BB@remnant.pseudorandom.co.uk>
References: <20250617195937.GA14637@localhost.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20250617195937.GA14637@localhost.localdomain>
X-Debian-User: smcv
Subject: Re: [oss-security] CVE-2025-6019: LPE from allow_active to root in
 libblockdev via udisks

On Tue, 17 Jun 2025 at 20:00:59 +0000, Qualys Security Advisory wrote:
>On Debian 12 and Ubuntu 24.04, when an unprivileged user logs in via
>sshd, PAM's pam_env module (from Linux-PAM 1.5.x) also reads this user's
>~/.pam_environment file, because pam_env's "user_readenv" is explicitly
>set to 1 in /etc/pam.d/sshd (it is 0 by default, since Linux-PAM 1.4.0).

The upcoming Debian 13 release no longer does this by default 
(https://bugs.debian.org/1018260) and presumably neither do newer Ubuntu 
releases.

I think the underlying problem here is that PAM has historically made it 
ambiguous whether environment variables are trusted (trustable) or not.  
The result is that some components (like pam_systemd's use of 
XDG_SESSION_ID) behave as though the PAM environment is a trusted 
channel through which the system can communicate information about a 
session - indeed, there might not be any other way to get that 
information - while other components (like pam_env with user_readenv) 
behave as though the PAM environment is a piece of per-user 
configuration that can be arbitrarily configured by the user for maximum 
flexibility, but therefore can't be trusted by higher-privileged 
components. It could reasonably be either of those, but it can't be 
both.

The conflation of the "PAM environment" (ambiguously trusted) with
the environ(7) that will be inherited by the final program (untrusted 
user configuration where maximum flexibility is an expected feature) 
doesn't help this.

     smcv
