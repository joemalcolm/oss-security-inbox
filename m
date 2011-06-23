X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/06/23/6
Message-ID: <1972953755.897157.1308858678769.JavaMail.root@zmail01.collab.prod.int.phx2.redhat.com>
Date: Thu, 23 Jun 2011 15:51:18 -0400 (EDT)
From: Josh Bressers <bressers@...hat.com>
To: oss-security@...ts.openwall.com
Cc: "Steven M. Christey" <coley@...us.mitre.org>
Subject: Re: CVE request: kernel: NLM: Don't hang forever on NLM unlock requests
Content-Type: text/plain; charset=utf-8



----- Original Message -----
> NLM: Don't hang forever on NLM unlock requests
> 
> If the NLM daemon is killed on the NFS server, we can currently end up
> hanging forever on an 'unlock' request, instead of aborting.  Basically,
> if the rpcbind request fails, or the server keeps returning garbage, we
> really want to quit instead of retrying.
> 
> Tested-by: Vasily Averin <vvs@...ru>
> Signed-off-by: Trond Myklebust <Trond.Myklebust@...app.com>
> Cc: stable@...nel.org
> 
> In English, it means that a local, unprivileged user could use the flock
> system call on a NFS share to cause a denial of service.
> 
> https://bugzilla.redhat.com/show_bug.cgi?id=709393
> http://git.kernel.org/linus/0b760113a3a155269a3fba93a409c640031dd68f
> 

Please use CVE-2011-2491.

Thanks.

-- 
    JB
