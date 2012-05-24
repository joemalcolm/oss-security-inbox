X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/05/24/7
Message-ID: <773202b2-4775-4437-9e5c-049b307456b7@zmail15.collab.prod.int.phx2.redhat.com>
Date: Thu, 24 May 2012 15:10:25 -0400 (EDT)
From: Miloslav Trmac <mitr@...hat.com>
To: oss-security@...ts.openwall.com
Cc: David Black <disclosure@....org>, Peter van Dijk <peter.van.dijk@...herlabs.nl>, Bert Hubert <bert.hubert@...herlabs.nl>
Subject: Re: CVE Request: powerdns does not clear supplementary groups
Content-Type: text/plain; charset=utf-8

----- Original Message -----
> So what happens when a program starts running as say root, and root
> has supplemental groups (like "bin" or "daemon" and the program drops
> its primary user/group but fails to drop supplementary groups, is that
> a security issue, and is it worthy of a CVE identifier?
> 
> For most cases I'm going to say probably not (aka no). Having
> supplementary groups is intentional and allows permissions to be more
> fine grained, you can for example make root a member of "logging" so
> that even when the app drops root privileges would still have the
> supplementary group of "logging" and can do its logging or whatever.

Yes, the existence of supplementary groups is intentional - but that doesn't mean that inheriting supplementary groups is intentional.

>From the administrator's point of view, the privileges are effectively assigned to "the user" as an "atomic" identity - they are configured in /etc/passwd and /etc/group _and associated with an UID_.  In "ordinary" case, programs running with a specific UID are expected to always use the same primary GID, and same primary groups.  Yes, the implementation does not match the administrator's point of view, the UID, GID and supplementary groups are sparete, and , e.g. setuid/setgid may cause a different configuration from the "primary" case, or switching privileges temporarily creates non-ordinary situations.  Still, I think that keeping the administrator's point of view in mind is important.

In the above example, if there really is a "logging" group, and an application is configured to drop privileges and switch to uid $APP_UID, the administrator would expect that whether the app should or should not have the "logging" group membership is configured in /etc/groups for $APP_UID, not for root.  So, I can't see that as an argument for intentionally not dropping supplementary groups.
   Mirek
