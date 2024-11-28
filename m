Received: (qmail 32153 invoked by uid 550); 28 Nov 2024 12:14:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 32135 invoked from network); 28 Nov 2024 12:14:19 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.stravinsky; h=X-Debian-User:In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=VLjGr0fgncfM6m9cdADlGkdNtpjgAHMqTmFM7xMS4ws=; b=WSpPz/yxYzBgNtDEmQDSKcW582
	bgRVzeWA0n8oZWr42F1I/zFSPwtu3V4tsSFYY7IFPVyv31CIxWnWcBNXShNoWl9UNine5IJrRH90z
	qm5KwJVIwba/3uRVwvmuv9lqtqB/41YaVHztWx0ja2VC+P3cI3VlOQG4wWFsDKqLRKIxWLGhft4T7
	4xPBEQ+uhYRSPeKz/pltLjs3s1zxnZTO7glIZeNP3E0g2lpHQEniz8p/quzRwy4r+w8rcEyZuCtpN
	T3IV+qUwbZnIJll5NocmeR/7JRqXEDKjnoGRJ/IiWpdrdsiQjMQ2yHKYcORRXm6OCkyBVrkrwNfft
	3VOJI3yg==;
Date: Thu, 28 Nov 2024 12:14:07 +0000
From: Simon McVittie <smcv@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <Z0hejwSEFfhScLbR@remnant.pseudorandom.co.uk>
References: <Z0g4nBTW-VFYm4cu@kasco.suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Z0g4nBTW-VFYm4cu@kasco.suse.de>
X-Debian-User: smcv
Subject: Re: [oss-security] tuned: local root exploit in D-Bus method
 instance_create and other issues in tuned >= 2.23 (CVE-2024-52336,
 CVE-2024-52337)

On Thu, 28 Nov 2024 at 10:32:09 +0100, Matthias Gerstner wrote:
> The new D-Bus methods `HoldProfile()` and `ReleaseProfile()` use a
> cookie to identify a profile hold. The cookie is simply a continuously
> increasing integer starting at zero. This means other users in the
> system can easily release the profile holds of any other users.

This should be easily resolvable if the authors of tuned want to do so,
without needing to resort to relying on hard-to-predict cookie values.
Clients of the D-Bus system bus can identify other clients of the system
bus, by calling the GetConnectionCredentials method on the message bus
itself (this is how polkit works).

So, if tuned's design constraints allow a model where a cookie is only
considered valid to release if it was allocated by the same uid that
made the original request, that would be straightforward to implement.
Pseudocode:

    HoldProfile() -> cookie:
        get the caller's unique bus name (looks like e.g. :1.23)
        call GetConnectionCredentials(":1.23") to get the UnixUserID
        allocate a cookie
        store {cookie: uid} in a hash table
        return cookie

    ReleaseProfile(cookie):
        get the caller's unique bus name (looks like e.g. :1.23)
        call GetConnectionCredentials(":1.23") to get the UnixUserID

        look up the cookie's corresponding uid in the hash table

        if cookie not found || caller_uid != cookie_uid:
            error "No such cookie owned by this uid"

        ... continue to release the profile

Any good-quality D-Bus client library should have API to get the unique
bus name of the caller while handling an incoming method call. The most
commonly-used client libraries (dbus' libdbus, GLib's GDBus, systemd's
sd-bus) can certainly do that.

Treating each uid as a trust domain is the most common way to handle
system bus security, but on Linux, various other fields are conditionally
available in the result of GetConnectionCredentials if tuned wants to
implement some more complicated security model (for example looking at
the SELinux/AppArmor/Smack security label, which is available on D-Bus as
the LinuxSecurityLabel credential).

(Behind the scenes, this is implemented by the message bus using
SO_PEERCRED, SO_PEERSEC, etc. on each client connection, or the closest
available equivalent of SO_PEERCRED on various non-Linux OSs.)

Or, if the tuned authors want to implement a model where only the same
bus connection that initially called HoldProfile can call ReleaseProfile,
that's even simpler, because it doesn't need GetConnectionCredentials:
tuned could remember the unique bus name of the caller of HoldProfile,
and only allow ReleaseProfile to be called by a matching unique bus
name. If this is the chosen model, it will probably also want to watch for
NameOwnerChanged signals, so that it can automatically release the profile
when the requester disconnects from the message bus. In particular,
if the requester crashes, this disconnection will happen automatically
when the kernel cleans up its resources, which is not directly
security-relevant but seems likely to be desirable anyway.

    smcv
