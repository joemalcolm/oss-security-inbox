X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/11/05/1
Message-ID: <20111105102754.GA11970@openwall.com>
Date: Sat, 5 Nov 2011 14:27:54 +0400
From: Solar Designer <solar@...nwall.com>
To: oss-security@...ts.openwall.com
Subject: Re: CVE request: unsafe use of /tmp in multiple CPAN modules
Content-Type: text/plain; charset=utf-8

On Fri, Nov 04, 2011 at 02:32:50PM -0500, John Lightsey wrote:
> Symlink A points to foo/bar
> Symlink B points to /some/real/directory
> 
> Code asks for /tmp/parent/childXXXX
> 
> Attacker hardlinks symlink A to /tmp/parent
> Attacker creates /tmp/foo directory
> Attacker hardlinks symlink B to /tmp/foo/bar
> 
> Now everything looks safe, but it relies on the attacker controled
> /tmp/foo directory.

Yes, in the above scenario everything would look safe to the current
code with your symlink-safety.patch.  We could enhance the patch to also
check parent directories of each symlink, but even then an attack would
remain possible:

Attacker hardlinks symlink B to /tmp/parent

Then depending on what /some/real/directory actually is, this may be a
security problem - e.g., if /some/real/directory is /etc/cron.d or /bin.
And even for most other directories, there's likely a DoS and quota
bypass possibility here.

> It'd probably be simplest if File::Temp::_is_safe() didn't allow any
> symlinks at all.

Many systems have /tmp itself as a symlink.

Alexander
