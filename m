X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2020/10/13/5
Message-ID: <20201013132819.GA31582@openwall.com>
Date: Tue, 13 Oct 2020 15:28:19 +0200
From: Solar Designer <solar@...nwall.com>
To: oss-security@...ts.openwall.com
Subject: Re: kdeconnect: CVE-2020-26164: multiple security issues in kdeconnectd network daemon
Content-Type: text/plain; charset=utf-8

On Tue, Oct 13, 2020 at 02:29:12PM +0200, Matthias Gerstner wrote:
> The SUSE security team noticed that a new network service service
> `kdeconnectd` was active by default  in openSUSE Leap 15.2 listening on TCP
> and UDP port 1716. `kdeconnectd` is started automatically in the context of
> any KDE session and runs with the privileges of the logged in user.
> 
> 
> `kdeconnectd` talks to an Android smartphone app. The use cases are, among
> others:
> 
> 
> - sharing the PC clipboard with the smartphone
> - controlling the PC from the smartphone (running commands, controlling input)
> 
> 
> I conducted an in-depth source code review [...]

Thank you for your work on this, and for publishing so much detail!

Will kdeconnectd no longer be active by default in openSUSE?  I hope so.
Merely fixing the known issues doesn't address the fact that this poses
unjustified risk for most people.

Alexander
