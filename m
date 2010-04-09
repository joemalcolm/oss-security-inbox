X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/04/09/2
Message-ID: <4BBED602.3010509@kernel.sg>
Date: Fri, 09 Apr 2010 15:23:46 +0800
From: Eugene Teo <eugeneteo@...nel.sg>
To: oss-security@...ts.openwall.com
CC: coley@...us.mitre.org
Subject: Re: CVE-2010-1146 kernel: reiserfs priv escalation
Content-Type: text/plain; charset=utf-8

On 04/09/2010 11:12 AM, Eugene Teo wrote:
> Credit: Matt McCutchen. The kernel allows processes to access the
> internal ".reiserfs_priv" directory at the top of a reiserfs filesystem
> which is used to store xattrs. Permissions are not enforced in that
> tree, so unprivileged users can view and potentially modify the xattrs
> on arbitrary files.
>
> CERT/CC (http://www.cert.org/), report ID VRF#G7I2H94M
>
> https://bugzilla.redhat.com/show_bug.cgi?id=568041
> http://marc.info/?l=linux-kernel&m=127076012022155&w=2

http://jon.oberheide.org/files/team-edward.py

Eugene
