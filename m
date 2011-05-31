X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/05/31/11
Message-ID: <760428907.397872.1306871631176.JavaMail.root@zmail01.collab.prod.int.phx2.redhat.com>
Date: Tue, 31 May 2011 15:53:51 -0400 (EDT)
From: Josh Bressers <bressers@...hat.com>
To: oss-security@...ts.openwall.com
Cc: coley <coley@...re.org>
Subject: Re: CVE request: libgnomesu privilege escalation
Content-Type: text/plain; charset=utf-8



----- Original Message -----
> Hi,
> 
> The /usr/lib/libgnomesu/gnomesu-pam-backend suid binary which belongs
> to the libgnomesu package is not checking setuid() return values.
> 
> As a result, two cooperating users, or users with access to guest,
> cgi or web accounts can run arbitrary commands as root very easily.
> Attacker just needs to 'su' to this account where he knows the
> password
> from inside the second account and take care that enough zombie
> processes exist at the target account.
> 
> A patch is attached in our bugzilla:
> 
> https://bugzilla.novell.com/show_bug.cgi?id=695627
> 


Please use CVE-2011-1946.

Thanks.

-- 
    JB
