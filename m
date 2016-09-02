X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2410" "Thursday" "1" "September" "2016" "20:53:42" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty167nS9wG4_wkMDPT_kc4GFo7LLMZHqqhVv3JJNsX-uug@mail.gmail.com>" "98" "Re: [oss-security] Re: cve request: docker swarmkit Dos occurs by repeatly joining and quitting swam cluster as a node" nil nil nil "9" "2016090202:53:42" "[oss-security] Re: cve request: docker swarmkit Dos occurs by repeatly joining and quitting swam cluster as a node" (number mark "U       kseifried@re Sep  1   98/2410  " thread-indent "\"Re: [oss-security] Re: cve request: docker swarmkit Dos occurs by repeatly joining and quitting swam cluster as a node\"\n") "<5309095AF4F10E2D.C7403B94-0E12-4BBF-9F83-04F9E21584CD@mail.outlook.com>" ("<CA+q1=fSKUpSWOGusA99-_KkBZOxqjUzVZFSOQECgjAP+QMzuig@mail.gmail.com>" "<CANO=Ty2n6Nus2uJkaJ3OTWrt0wgeOU1zydjAZtABdmp_itpP0g@mail.gmail.com>" "<5309095AF4F10E2D.C7403B94-0E12-4BBF-9F83-04F9E21584CD@mail.outlook.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9890 invoked by uid 550); 2 Sep 2016 02:53:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9869 invoked from network); 2 Sep 2016 02:53:54 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=f247egOzwPJGn+zzEXA5ZhPDOLRbOsolp7YTEhNDd4o=;
        b=KrtAxaa57uxukNrSBppSUG+NmkzsQo+P9iEK2TBi+DaOQyGIAfAQRNqAtOXEnUxFTc
         T37xYWwmr2AC5aCoxzJK4OJT5+wQd+4O8DyGTu8W0fc/86pQ/qtGdA+KSqNy/lKtpkmU
         7ts7tboVtWQCM8+/CZCHUF+T29Y4vve9MvqiYtci9AynxjvSWMRXCSuvvwNrydO4vSzn
         qrE22YVO/lym+AHrQnNnBjW4xjoaogmnRLMZWXQCHN++hoJH+ZjZJHf8TFuoq0599n4b
         YV1s7GVh9YbROjREOZ5RECv18YABqq/jDNpgLOsFP92SsuwGr2M7S860vsLRFoYYfZ7S
         /G9A==
X-Gm-Message-State: AE9vXwMvDODFTdVPcqqaFAzE5dPc2IXQphvVHK6WH3ylzuyGKPdBYkFQnHdJlOwyNyuG7FZiCgrBekFb1Xf2NYUH
X-Received: by 10.202.87.88 with SMTP id l85mr18270834oib.48.1472784822550;
 Thu, 01 Sep 2016 19:53:42 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <5309095AF4F10E2D.C7403B94-0E12-4BBF-9F83-04F9E21584CD@mail.outlook.com>
References: <CA+q1=fSKUpSWOGusA99-_KkBZOxqjUzVZFSOQECgjAP+QMzuig@mail.gmail.com>
 <CANO=Ty2n6Nus2uJkaJ3OTWrt0wgeOU1zydjAZtABdmp_itpP0g@mail.gmail.com> <5309095AF4F10E2D.C7403B94-0E12-4BBF-9F83-04F9E21584CD@mail.outlook.com>
From: Kurt Seifried <kseifried@redhat.com>
Date: Thu, 1 Sep 2016 20:53:42 -0600
Message-ID: <CANO=Ty167nS9wG4_wkMDPT_kc4GFo7LLMZHqqhVv3JJNsX-uug@mail.gmail.com>
To: oss-security <oss-security@lists.openwall.com>
Content-Type: multipart/alternative; boundary=001a113d0cf22de509053b7d70d1
Subject: Re: [oss-security] Re: cve request: docker swarmkit Dos occurs by
 repeatly joining and quitting swam cluster as a node

--001a113d0cf22de509053b7d70d1
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 1, 2016 at 8:48 PM, Diogo Monica <diogo.monica@docker.com>
wrote:

> Can you please describe how this vulnerability makes a worker node be able
> to administer the swarm?
>

It allows a worker node to disable and effectively shut down the swarm, I
assume shutting down the swan is an administrative function, if not please
let me know where the documentation for workers covers this (allowing a
worker to shutdown the swarm). Thanks!


>
>
>
>
>
>
> On Thu, Sep 1, 2016 at 7:12 PM -0700, "Kurt Seifried" <
> kseifried@redhat.com> wrote:
>
>
>
>
>
>
>
>
>
>
> On Thu, Sep 1, 2016 at 5:17 PM, Diogo M=C3=B3nica
> wrote:
>
> > A few weeks ago (Aug 4, 2016), a CVE (CVE-2016-6595) describing a DoS on
> > docker swarm got issued. We believe this not a real issue, and would li=
ke
> > to have the CVE rescinded.
> >
> > The person reporting this "vulnerability" is exhausting the resources of
> a
> > remote manager by doing hundreds of join/leave operations without
> removing
> > the state that is left by old nodes. At some point the manager obviously
> > stops being able to accept new nodes, since it runs out of memory.
> >
> > Given that both for Docker swarm and for Docker Swarmkit nodes are
> > *required* to provide a secret token (it's actually the only mode of
> > operation), this means that no adversary can simply join nodes and
> exhaust
> > manager resources.
> >
> > We can't do anything about a manager running out of memory and not being
> > able to add new legitimate nodes to the system. This is merely a resour=
ce
> > provisioning issue, and definitely not a CVE worthy vulnerability.
> >
>
> I checked the documentation and it looks like a worker node is only
> supposed to work and is not supposed to be able to administer the swarm. =
As
> such this is a trust boundary violation, and needs a CVE.
>
>
>
> > Thank you,
> > --
> > Diogo M=C3=B3nica
> >
>
>
>
> --
>
> --
> Kurt Seifried -- Red Hat -- Product Security -- Cloud
> PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
> Red Hat Product Security contact: secalert@redhat.com
>
>
>
>
>
>


--=20

--
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--001a113d0cf22de509053b7d70d1--
