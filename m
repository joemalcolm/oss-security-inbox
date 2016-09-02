X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3407" "Thursday" "1" "September" "2016" "20:30:15" "-0700" "=?UTF-8?B?RGlvZ28gTcOzbmljYQ==?=" "diogo.monica@docker.com" "<CA+q1=fQRZYp6w5EA1=y+nHULCLpUNZTGGExpYg+n2SD-0sDR8g@mail.gmail.com>" "128" "Re: [oss-security] Re: cve request: docker swarmkit Dos occurs by repeatly joining and quitting swam cluster as a node" nil nil nil "9" "2016090203:30:15" "[oss-security] Re: cve request: docker swarmkit Dos occurs by repeatly joining and quitting swam cluster as a node" (number mark "U       diogo.monica Sep  1  128/3407  " thread-indent "\"Re: [oss-security] Re: cve request: docker swarmkit Dos occurs by repeatly joining and quitting swam cluster as a node\"\n") "<CANO=Ty167nS9wG4_wkMDPT_kc4GFo7LLMZHqqhVv3JJNsX-uug@mail.gmail.com>" ("<CA+q1=fSKUpSWOGusA99-_KkBZOxqjUzVZFSOQECgjAP+QMzuig@mail.gmail.com>" "<CANO=Ty2n6Nus2uJkaJ3OTWrt0wgeOU1zydjAZtABdmp_itpP0g@mail.gmail.com>" "<5309095AF4F10E2D.C7403B94-0E12-4BBF-9F83-04F9E21584CD@mail.outlook.com>" "<CANO=Ty167nS9wG4_wkMDPT_kc4GFo7LLMZHqqhVv3JJNsX-uug@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30628 invoked by uid 550); 2 Sep 2016 16:03:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30667 invoked from network); 2 Sep 2016 03:30:47 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=docker.com; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=OAH49V0TLvwcDHkYFDCQ+EmKB/ealP0hfK93+aT12N8=;
        b=MPOsxtJ8bXVkaqNOYXcxjTfOgNUSpM1y6ZhCn5K0Qy15EW3GBuJHlXxIPe7qPr+whi
         eG4XkU3Lp4gLoJn9kVVx7VvpQeJ2KbMmSKLe8RgNt0SJoc5hUmoid2Hs37phFkOioS16
         k39zmoRhRt2smwtaG0ZJ5Uq1w1sUFG9dmEs4c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=OAH49V0TLvwcDHkYFDCQ+EmKB/ealP0hfK93+aT12N8=;
        b=kWNYSyjEu/xfLZEVm1/yYlpaDUjeT+rZ3cEgnlAm9cPOoWaxj4VnqQs+a1ALtgFmLd
         muHmP3CN18p579P8w78u3rD1PV0njFoRklIAeHi3x2MhgtLrW2wNqYzwSIdvmPokAUGf
         93Uq56/qvfwXKDwD2VyQWBekl7470npqdudqu57K4jJ00TAml26jhZDWGfvpQEeoH1Wf
         rmQbNNZEPPnQJjFxslc7xwkGnwi1thOoLYfe+mZLtGyYO48KRo7AvtEaerfgxSSrFyZN
         UQ2ToFZkXLyUIml5iteY0OBj3dvr4P3OEU5rUPYgfZfBKwke6AVLBPZ4fCHYfuZzhf1u
         obPA==
X-Gm-Message-State: AE9vXwMU0DfOXKQkM8QghLLXOiU0exP9ucgES+KJNqSBUcBUUAUCxrijNoWBIAHOBIGZ7ox1NDDQbwTx2VkmbM82
X-Received: by 10.194.97.73 with SMTP id dy9mr18998464wjb.132.1472787035803;
 Thu, 01 Sep 2016 20:30:35 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CANO=Ty167nS9wG4_wkMDPT_kc4GFo7LLMZHqqhVv3JJNsX-uug@mail.gmail.com>
References: <CA+q1=fSKUpSWOGusA99-_KkBZOxqjUzVZFSOQECgjAP+QMzuig@mail.gmail.com>
 <CANO=Ty2n6Nus2uJkaJ3OTWrt0wgeOU1zydjAZtABdmp_itpP0g@mail.gmail.com>
 <5309095AF4F10E2D.C7403B94-0E12-4BBF-9F83-04F9E21584CD@mail.outlook.com> <CANO=Ty167nS9wG4_wkMDPT_kc4GFo7LLMZHqqhVv3JJNsX-uug@mail.gmail.com>
From: =?UTF-8?Q?Diogo_M=C3=B3nica?= <diogo.monica@docker.com>
Date: Thu, 1 Sep 2016 20:30:15 -0700
Message-ID: <CA+q1=fQRZYp6w5EA1=y+nHULCLpUNZTGGExpYg+n2SD-0sDR8g@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=089e0103e2ec1966c8053b7df45c
Subject: Re: [oss-security] Re: cve request: docker swarmkit Dos occurs by
 repeatly joining and quitting swam cluster as a node

--089e0103e2ec1966c8053b7df45c
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

If you read the report, you'll see that no claims are made about shutting
down the swarm. The reporter simply claims that no new nodes can join the
swarm:

"it results in a machine could not join the swarm cluster after another
node=E2=80=99s repeatedly joining and quitting the swarm"

As we describe in our documentation, possession of the token gives the
permission to join new workers. Joining new workers effectively means
reserving some resources for your worker. If the system runs out of
resources, I believe it is expected that no new workers should be able to
join.

Again, this is simply not a vulnerability of either Docker swarm or Docker
swarmkit, and I kindly request that this CVE is rescinded.


On Thu, Sep 1, 2016 at 7:53 PM, Kurt Seifried <kseifried@redhat.com> wrote:

> On Thu, Sep 1, 2016 at 8:48 PM, Diogo Monica <diogo.monica@docker.com>
> wrote:
>
> > Can you please describe how this vulnerability makes a worker node be
> able
> > to administer the swarm?
> >
>
> It allows a worker node to disable and effectively shut down the swarm, I
> assume shutting down the swan is an administrative function, if not please
> let me know where the documentation for workers covers this (allowing a
> worker to shutdown the swarm). Thanks!
>
>
> >
> >
> >
> >
> >
> >
> > On Thu, Sep 1, 2016 at 7:12 PM -0700, "Kurt Seifried" <
> > kseifried@redhat.com> wrote:
> >
> >
> >
> >
> >
> >
> >
> >
> >
> >
> > On Thu, Sep 1, 2016 at 5:17 PM, Diogo M=C3=B3nica
> > wrote:
> >
> > > A few weeks ago (Aug 4, 2016), a CVE (CVE-2016-6595) describing a DoS
> on
> > > docker swarm got issued. We believe this not a real issue, and would
> like
> > > to have the CVE rescinded.
> > >
> > > The person reporting this "vulnerability" is exhausting the resources
> of
> > a
> > > remote manager by doing hundreds of join/leave operations without
> > removing
> > > the state that is left by old nodes. At some point the manager
> obviously
> > > stops being able to accept new nodes, since it runs out of memory.
> > >
> > > Given that both for Docker swarm and for Docker Swarmkit nodes are
> > > *required* to provide a secret token (it's actually the only mode of
> > > operation), this means that no adversary can simply join nodes and
> > exhaust
> > > manager resources.
> > >
> > > We can't do anything about a manager running out of memory and not
> being
> > > able to add new legitimate nodes to the system. This is merely a
> resource
> > > provisioning issue, and definitely not a CVE worthy vulnerability.
> > >
> >
> > I checked the documentation and it looks like a worker node is only
> > supposed to work and is not supposed to be able to administer the swarm.
> As
> > such this is a trust boundary violation, and needs a CVE.
> >
> >
> >
> > > Thank you,
> > > --
> > > Diogo M=C3=B3nica
> > >
> >
> >
> >
> > --
> >
> > --
> > Kurt Seifried -- Red Hat -- Product Security -- Cloud
> > PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
> > Red Hat Product Security contact: secalert@redhat.com
> >
> >
> >
> >
> >
> >
>
>
> --
>
> --
> Kurt Seifried -- Red Hat -- Product Security -- Cloud
> PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
> Red Hat Product Security contact: secalert@redhat.com
>



--=20
Diogo M=C3=B3nica

--089e0103e2ec1966c8053b7df45c--
