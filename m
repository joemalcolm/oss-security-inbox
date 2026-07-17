X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/17/13
Message-ID: <580b8d25-4cea-4f45-9b83-1f4e0ca12194@oracle.com>
Date: Fri, 17 Jul 2026 13:08:23 -0700
From: Alan Coopersmith <alan.coopersmith@...cle.com>
To: oss-security@...ts.openwall.com
Subject: Cyrus IMAP 3.12.3 fixed 9 CVEs
Content-Type: text/plain; charset=utf-8

https://www.cyrusimap.org/3.12/imap/download/release-notes/3.12/x/3.12.3.html
lists these security fixes in the release notes for the 3.12.3 release:
> * CVE-2026-47084 LOCALDELETE bypassed ACL checks
> 
>   An authenticated but non-admin user could invoke the admin-only LOCALDELETE
>   IMAP command and delete mailboxes for which they had no permissions.
> 
>   Reported by: Michael Lynch (mtlynch.io)
> 
> * CVE-2026-47086 GENURLAUTH issued tokens bypassing ACLs
> 
>   Any authenticated user could mint a URLAUTH token (via the GENURLAUTH
>   command) for any mailbox they could name, even without read access on it.
>   This would allow reading mail from mailboxes despite having no granted
>   permissions.
> 
>   Reported by: Matthew Horsfall
> 
> * CVE-2026-47087 URLAUTH does not honor revoked authorizer access
> 
>   A URLAUTH URL minted while the authorizer had access continued to work after
>   that access was revoked.
> 
>   Reported by: Matthew Horsfall
> 
> * CVE-2026-47081 XAPPLEPUSHSERVICE folder existence oracle and push hijack
> 
>   An authenticated IMAP user could probe for the existence of arbitrary
>   mailboxes on other users' accounts via the XAPPLEPUSHSERVICE command and
>   then create Apple Push Notification Service notifications for new mail in
>   those mailboxes to their own APNS device.  This did not leak any data about
>   the content of mailboxes.  Instead, a "mailbox has changed" notice would be
>   pushed when the mailbox modseq changed.
> 
>   Reported by Matthew Horsfall.
> 
> * CVE-2026-47089 LISTRIGHTS not limited to users with admin access
> 
>   An authenticated user could call IMAP LISTRIGHTS against any mailbox they
>   could name and learn what principals had what access to it.  (This action
>   should have been restricted to users with admin access on the target
>   mailbox.)
> 
>   Reported by: Matthew Horsfall
> 
> * CVE-2026-47085 URLAUTH token forgery via missing mboxkey
> 
>   If an attacker knew a folder name on the victim's account for which the
>   victim had never issued an auth URL, they could forge a working URLAUTH token
>   by computing HMAC-SHA1 with a predictable key, allowing them read access to
>   the mailbox.
> 
>   URLAUTH is an obscure feature, meaning that the odds of any user actually
>   being susceptible to this attack are very low.  We are unaware of any clients
>   using URLAUTH.
> 
>   Reported by: Matthew Horsfall
> 
> * CVE-2026-47083 ESEARCH cross-user content oracle
> 
>   Using the ESEARCH command, an authenticated IMAP user could enumerate folder
>   names under any account they could name.  Search would return UIDs of
>   messages matching search, creating a content oracle without allowing
>   arbitrary reads of the target's content.
> 
>   Reported by: Michael Lynch (mtlynch.io)
> 
> * CVE-2026-47088 Heap exposure in nested MIME comment parsing
> 
>   An authenticated IMAP user could specially craft an email containing an RFC
>   822 comment ending with a backslash.  When parsing the message, the server
>   would read past the message end in memory and read into the heap, returning
>   the read content to the user.
> 
>   Reported by: Michael Lynch (mtlynch.io).
> 
> * CVE-2026-47082 Vacation "fcc" skips destination-mailbox ACL
> 
>   A user whose vacation Sieve script used :fcc (to save a copy of the sent
>   message) could deliver vacation auto-reply copies into any mailbox the script
>   could name, regardless of whether the script owner had insert permissions on
>   the destination mailbox.
> 
>   Reported by: Michael Lynch (mtlynch.io)
