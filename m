X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/07/6
Message-ID: <5672e594-1c0e-4028-83f7-61532c4e02bf@gmail.com>
Date: Fri, 6 Nov 2026 21:33:51 -0600
From: Jacob Bachmeyer <jcb62281@...il.com>
To: oss-security@...ts.openwall.com, Peter Gutmann <pgut001@...auckland.ac.nz>
Subject: Re: "sshole": password authentication bypass: OpenSSH + musl libc
Content-Type: text/plain; charset=utf-8

On 11/6/26 00:35, Peter Gutmann wrote:
> Jeffrey Walton <noloader@...il.com> writes:
>
>> One general comment that does not fit well into most of the discussions around
>> sshole...
> Another contributing factor, "sshd borrows bob's salt" and the derived
> changes, was the quaint 1970s notion that no-one would ever be able to guess
> that there exist account names like root, daemon, ldap, postfix, apache,
> mysql, sshd, and rumpelstiltskin, so we'll add a kludge to make invalid
> accounts take the same time as valid ones.  Attackers don't even notice this
> because they start with a pregenerated list of known and probable accounts,
> but it does help to add vulnerabilities to the password-checking process as
> this CVE shows.

Does it even entirely work?  What if there is no salt to borrow?

Thinking about this, I think I see another information leak: does sshd 
produce a "fake salt" or fail the authentication quickly, thus leaking 
the fact that no accounts on the box have a valid password?

There was a time when a salt could be assumed to exist, but that was 
before cloud VM images that have no console and therefore can be 
network-login-with-SSH-key only...


-- Jacob

