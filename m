X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1931" "Sunday" "7" "May" "2017" "20:47:39" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20170507184739.c4tdfs6zaywbgbdr@eldamar.local>" "52" "Re: [oss-security] rpcbomb: remote rpcbind denial-of-service" nil nil nil "5" "2017050718:47:39" "[oss-security] rpcbomb: remote rpcbind denial-of-service" (number mark "U       carnil@debia May  7   52/1931  " thread-indent "\"Re: [oss-security] rpcbomb: remote rpcbind denial-of-service\"\n") "<756cef1f-ab04-dbc3-a80a-67fbae7e4cab@redhat.com>" ("<CAO5O-EKoyVe5oxT3nx6pOYsHwhvp9SxcezkV-m5pnpw4Q_4j8A@mail.gmail.com>" "<20170504005520.GD12174@hunt>" "<20170505092258.GF25854@suse.de>" "<756cef1f-ab04-dbc3-a80a-67fbae7e4cab@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30653 invoked by uid 550); 7 May 2017 18:47:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30629 invoked from network); 7 May 2017 18:47:52 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=MZ76zxQ5IyuBvIUYWLDOLv1NDbZ75iOhFOfxxr2VpPs=;
        b=So15fdRMdMczARubo6QeigZzWsKSKeT4/RlCUoFBsgCUMCyNs+F6OlyOs+XRENTede
         QPSUkimCb3hERm4ssE+UtQ0a3P1EkSQ3Yx15iWvcPrrx2MjLcuoQhnv2jDBtO+sZgn3j
         qlwGeOCgf4jOmHfxou11bmrZUByI+CGsVO6YyaKVcYdImP+0ali8T4+qjQqF0FHq8Oa0
         78/FOif5cetHPwWVXza2hcMMsvY6w2t8RgQWV0ZpwktHyTK5gN7fCr8Cj71uFHAQT95H
         ltGDNKvG/76ft60yjLBPYoPj0atQsgG3SoXHkvw22qJiTof6CizhZQb6eXn9Gj2FaaSi
         ax0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=MZ76zxQ5IyuBvIUYWLDOLv1NDbZ75iOhFOfxxr2VpPs=;
        b=GM/Zo/8T6vrSUA6dm4KUpP3fUgh9iqkkKo2DTuswJ8UBZqJqMYpxXkhu15kF9nqKbD
         v+XVjG7QqXjg16UhG1fq45/WRxJqYvYzrurVwSip362Ub/8+rp7h2hdkXpEZ/RQp6Nz1
         up7wVDpiGTSZGg8gqmeooIrAdWfeAnBRYQyffRHrUf+uYS42JzxQKnK8D9yPhxESDei7
         eiCHdU2+LoLPqvC+U367D5zdONzNSQbdOmtDDQfL8AZGsJyXyDljHluw9zbzBwc010Rm
         lfCG06QMLL5Cq4IQ827AzJ8lm5Abn+ov8zq7sTvGIKQsl+D5mHn6NKnvVzFnfWRJCE0U
         XgwA==
X-Gm-Message-State: AN3rC/72UPR6HCq7Vnqe9MsNWjKZ+dtdCrkVZc+jyZ9X3LIqm1MWJwzx
	qvjxe74N5v07wdkb
X-Received: by 10.223.169.34 with SMTP id u31mr44535842wrc.46.1494182860873;
        Sun, 07 May 2017 11:47:40 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Sun, 7 May 2017 20:47:39 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <20170507184739.c4tdfs6zaywbgbdr@eldamar.local>
References: <CAO5O-EKoyVe5oxT3nx6pOYsHwhvp9SxcezkV-m5pnpw4Q_4j8A@mail.gmail.com>
 <20170504005520.GD12174@hunt>
 <20170505092258.GF25854@suse.de>
 <756cef1f-ab04-dbc3-a80a-67fbae7e4cab@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <756cef1f-ab04-dbc3-a80a-67fbae7e4cab@redhat.com>
User-Agent: NeoMutt/20170306 (1.8.0)
Subject: Re: [oss-security] rpcbomb: remote rpcbind denial-of-service

Hi

On Fri, May 05, 2017 at 11:52:49AM +0200, Florian Weimer wrote:
> On 05/05/2017 11:22 AM, Marcus Meissner wrote:
> > On Wed, May 03, 2017 at 05:55:20PM -0700, Seth Arnold wrote:
> > > On Wed, May 03, 2017 at 08:55:23PM +0200, Guido Vranken wrote:
> > > > This vulnerability allows an attacker to allocate any amount of bytes
> > > > (up to 4 gigabytes per attack) on a remote rpcbind host, and the
> > > > memory is never freed unless the process crashes or the administrator
> > > > halts or restarts the rpcbind service.
> > > > [...]
> > > > An extensive write-up can be found here:
> > > > https://guidovranken.wordpress.com/2017/05/03/rpcbomb-remote-rpcbind-denial-of-service-patches/
> > > > 
> > > > Exploit + patches: https://github.com/guidovranken/rpcbomb/
> > > 
> > > Hello Guido, nice find. Have CVE numbers been requested for this issue
> > > yet? Have you investigated if ntirpc is affected too? Much of the code
> > > looks similar:
> > > 
> > > http://sources.debian.net/src/ntirpc/1.4.3-3/src/rpc_generic.c/#L728
> > 
> > We also saw glibc affected.
> > 
> > https://bugzilla.suse.com/show_bug.cgi?id=1037559#c7
> > 
> > That said, your reproducer allocates virtual memory, and on systems with overcommit
> > there is only neglible impact on overall memory pressure.
> > 
> > The rpc service will however likely crash at some point though when there is no virtual
> > address space left for it.
> 
> Thanks, I filed it upstream as well:
> 
> https://sourceware.org/bugzilla/show_bug.cgi?id=21461
> 
> Looks like both xdr_bytes and xdr_string have a similar bug.
> 
> I'd appreciate some guidance on reusing or not reusing CVE IDs here.

A separate CVE should be used for this issue as clarified with MITRE.

It was assigned CVE-2017-8804.

https://sourceware.org/bugzilla/show_bug.cgi?id=21461

Patch posted at
https://sourceware.org/ml/libc-alpha/2017-05/msg00105.html by Florian
Weimer.

Regards,
Salvatore
