X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/11/19/3
Message-ID: <50AA59A3.8010704@canonical.com>
Date: Mon, 19 Nov 2012 11:09:07 -0500
From: Marc Deslauriers <marc.deslauriers@...onical.com>
To: oss-security@...ts.openwall.com
Subject: Re: CVE Request: Python keyring
Content-Type: text/plain; charset=utf-8

On 12-11-16 11:14 AM, Marc Deslauriers wrote:
> Hello,
> 
> Python keyring before 0.10 created keyring files world-readable by default.
> 
> Fixed in the following commit:
> https://bitbucket.org/kang/python-keyring-lib/changeset/049cd181470f1ee6c540e1d64acf1def7b1de0c1
> 
> Bugs:
> 
> https://bugs.launchpad.net/ubuntu/+source/python-keyring/+bug/1031465
> https://bitbucket.org/kang/python-keyring-lib/issue/67/set-go-rwx-on-keyring_passcfg
> 
> Could a CVE please be assigned to this issue?

Actually, that fix only changes the permissions on database files that
were migrated from previous versions, it doesn't fix permissions on
newly created database files.

It would appear python-keyring still creates new database files with
inappropriate permissions.

Marc.


