X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1599" "Thursday" "1" "September" "2016" "20:12:04" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty2n6Nus2uJkaJ3OTWrt0wgeOU1zydjAZtABdmp_itpP0g@mail.gmail.com>" "47" "Re: [oss-security] Re: cve request: docker swarmkit Dos occurs by repeatly joining and quitting swam cluster as a node" nil nil nil "9" "2016090202:12:04" "[oss-security] Re: cve request: docker swarmkit Dos occurs by repeatly joining and quitting swam cluster as a node" (number mark "U       kseifried@re Sep  1   47/1599  " thread-indent "\"Re: [oss-security] Re: cve request: docker swarmkit Dos occurs by repeatly joining and quitting swam cluster as a node\"\n") "<CA+q1=fSKUpSWOGusA99-_KkBZOxqjUzVZFSOQECgjAP+QMzuig@mail.gmail.com>" ("<CA+q1=fSKUpSWOGusA99-_KkBZOxqjUzVZFSOQECgjAP+QMzuig@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11948 invoked by uid 550); 2 Sep 2016 02:12:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11930 invoked from network); 2 Sep 2016 02:12:16 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=Lo9bU61KlZP4KXYRy/sRT8ieEzxFqMe/12A8R7GD1pQ=;
        b=WntiY4emHpIp907A0Ic/DXCmgAbq8JcB7j8iOa+E9jX92p45ydJIwI9TI3A75nmCjk
         06o7ZsKrlWI9YqLleYkSoCHxCh0sOpXrdSJxFi16oxPm86kAaRvFoLJLaP/TfVa2CUDa
         X63Gq040Gw8TkpBQuAYk4U9DNIA9qwsLZo6lnZnARExDFVJvugPtY6RGB4z7V5ff7EuP
         N4v9zPXas06WR6uiUcGdjVSQVE+W6QF4zJTRDj4jpeUBhmTM0jQVQkrKE5kgxdWHmTMu
         anPY7wVKR4c9+Lzo2Nr+YSActAuoCjvFkoAC8/RxlsbmKe5+PiyIO88DZUDI6tSxaPq6
         pnCQ==
X-Gm-Message-State: AE9vXwNWpv4hpq7XYUnGBl07He1nRAJkn1W1sU2Df0snfBHBRiNNuesfwCfm/oVlyDHzgJvCwOtX4OBj33EuJ3oc
X-Received: by 10.157.35.120 with SMTP id k53mr18539121otd.149.1472782325075;
 Thu, 01 Sep 2016 19:12:05 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CA+q1=fSKUpSWOGusA99-_KkBZOxqjUzVZFSOQECgjAP+QMzuig@mail.gmail.com>
References: <CA+q1=fSKUpSWOGusA99-_KkBZOxqjUzVZFSOQECgjAP+QMzuig@mail.gmail.com>
From: Kurt Seifried <kseifried@redhat.com>
Date: Thu, 1 Sep 2016 20:12:04 -0600
Message-ID: <CANO=Ty2n6Nus2uJkaJ3OTWrt0wgeOU1zydjAZtABdmp_itpP0g@mail.gmail.com>
To: oss-security <oss-security@lists.openwall.com>
Content-Type: multipart/alternative; boundary=001a113e1752517740053b7cdb97
Subject: Re: [oss-security] Re: cve request: docker swarmkit Dos occurs by
 repeatly joining and quitting swam cluster as a node

--001a113e1752517740053b7cdb97
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 1, 2016 at 5:17 PM, Diogo M=C3=B3nica <diogo.monica@docker.com>
wrote:

> A few weeks ago (Aug 4, 2016), a CVE (CVE-2016-6595) describing a DoS on
> docker swarm got issued. We believe this not a real issue, and would like
> to have the CVE rescinded.
>
> The person reporting this "vulnerability" is exhausting the resources of a
> remote manager by doing hundreds of join/leave operations without removing
> the state that is left by old nodes. At some point the manager obviously
> stops being able to accept new nodes, since it runs out of memory.
>
> Given that both for Docker swarm and for Docker Swarmkit nodes are
> *required* to provide a secret token (it's actually the only mode of
> operation), this means that no adversary can simply join nodes and exhaust
> manager resources.
>
> We can't do anything about a manager running out of memory and not being
> able to add new legitimate nodes to the system. This is merely a resource
> provisioning issue, and definitely not a CVE worthy vulnerability.
>

I checked the documentation and it looks like a worker node is only
supposed to work and is not supposed to be able to administer the swarm. As
such this is a trust boundary violation, and needs a CVE.



> Thank you,
> --
> Diogo M=C3=B3nica
>



--=20

--
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--001a113e1752517740053b7cdb97--
