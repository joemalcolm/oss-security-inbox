X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4668" "Wednesday" "27" "July" "2016" "13:49:14" "-0700" "Jessica Frazelle" "me@jessfraz.com" "<CAEk6tEx0JRNX9q0k8JH2PNkGJO59WVVMhh4=3DkoQFMNkqY9LA@mail.gmail.com>" "113" "Re: [oss-security] cve request: systemd-machined: information exposure for docker containers" "^Date:" nil nil "7" "2016072720:49:14" "[oss-security] cve request: systemd-machined: information exposure for docker containers" (number mark "        me@jessfraz. Jul 27  113/4668  " thread-indent "\"Re: [oss-security] cve request: systemd-machined: information exposure for docker containers\"\n") "<B760F07C-908F-431A-8BCE-A3AE9E93E33F@nccgroup.trust>" ("<1304293369.8684866.1469539505676.JavaMail.zimbra@redhat.com>" "<20160726192413.2CD1A72E006@smtpvbsrv1.mitre.org>" "<20160727170537.GA3330@motoko>" "<398a8ff1-a2ea-9140-c695-c1969ffc58af@redhat.com>" "<20160727200021.GB3330@motoko>" "<B760F07C-908F-431A-8BCE-A3AE9E93E33F@nccgroup.trust>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17843 invoked by uid 550); 27 Jul 2016 20:55:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15363 invoked from network); 27 Jul 2016 20:49:27 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jessfraz.com; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=cnb1BtdlFR50ow+BSmRkJxQIPINDdCnItqlsYSJxNAc=;
        b=BQmukHG8XEzJJ2cP3cNXV25uoNUwMHUGkXTLFnn+SrnPPWHmUD6mg8ovoOFtdzlFzI
         htQRDbEtPHMMjC9nPpO/888ybGnEnY2/zv8IUqdH9sbr4FAACEMhbY67DWyQtj5OuGeE
         yWnDmODt6OdjugpkrycAvebizJSwcfVolJw4A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=cnb1BtdlFR50ow+BSmRkJxQIPINDdCnItqlsYSJxNAc=;
        b=euCug3Tkl2R3K7OaWmL1q3ChrA1SSRxdYWl4vHN8pI3BhSxjJSjcOT46vgQN2Mjr6d
         QrA924w5b/tC60T1r/GBpg7ZVibZQwcuhnyX48g8pnO4cUA49al/3mwLCulsknsz2D6L
         GlqreWfnRUrmrOtEfxsYoMMk/GblJEIT6uknHEjIpgbZPg8iTomAlLCc5d4q3JwHjrcV
         vAbTPAsvEahijKxOPT9bXAey9a1+iJMS6Sp4VTKzIxzgcPjRBsgmSjKkyab4DeIPrdaS
         Ec7B6NDQxfLE0A9q8EWKNlIY118W+/crtKQVeqJpF86bMUR/2bDbiV0JBnfMWZp2D+3M
         ODNw==
X-Gm-Message-State: AEkoousnfK/CfkGokO5MY+0FxIFNSOaMQ5+gbTGQJRrHZoPgBTWFOQUnWbhYCbtrh+vBCYlCzUx/sNwAiCKq1J1B
X-Received: by 10.36.196.65 with SMTP id v62mr34966185itf.78.1469652555240;
 Wed, 27 Jul 2016 13:49:15 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <B760F07C-908F-431A-8BCE-A3AE9E93E33F@nccgroup.trust>
References: <1304293369.8684866.1469539505676.JavaMail.zimbra@redhat.com>
 <20160726192413.2CD1A72E006@smtpvbsrv1.mitre.org> <20160727170537.GA3330@motoko>
 <398a8ff1-a2ea-9140-c695-c1969ffc58af@redhat.com> <20160727200021.GB3330@motoko>
 <B760F07C-908F-431A-8BCE-A3AE9E93E33F@nccgroup.trust>
Message-ID: <CAEk6tEx0JRNX9q0k8JH2PNkGJO59WVVMhh4=3DkoQFMNkqY9LA@mail.gmail.com>
Content-Type: multipart/alternative; boundary=94eb2c05fefa7fbc7c0538a426dd
Date: Wed, 27 Jul 2016 13:49:14 -0700
From: Jessica Frazelle <me@jessfraz.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] cve request: systemd-machined: information
 exposure for docker containers
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

--94eb2c05fefa7fbc7c0538a426dd
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

To be clear this is ONLY in Red Hat's fork of docker which is unsupported
by Docker. There is no oci-register-machine in docker itself.

On Wednesday, July 27, 2016, Jesse Hertz <jesse.hertz@nccgroup.trust> wrote:

> Just to chime in here, since a docker container would be inside its own
> PID namespace, running =E2=80=98ps=E2=80=99 inside a container would not =
show you other
> processes/containers running on the same host.
> A similar =E2=80=9Cvulnerability" I =E2=80=9Cfound=E2=80=9D was patched i=
n Docker earlier (tl;dr
> '/proc/sched_debug=E2=80=99 is not pid namespace aware).
>
> -jh
> > On Jul 27, 2016, at 4:00 PM, Christian Rebischke <
> Chris.Rebischke@archlinux.org <javascript:;>> wrote:
> >
> > On Wed, Jul 27, 2016 at 01:27:08PM -0400, Daniel J Walsh wrote:
> >>
> >>
> >> On 07/27/2016 01:05 PM, Christian Rebischke wrote:
> >>> On Tue, Jul 26, 2016 at 03:24:13PM -0400, cve-assign@mitre.org
> <javascript:;> wrote:
> >>>> -----BEGIN PGP SIGNED MESSAGE-----
> >>>> Hash: SHA256
> >>>>
> >>>>> Once docker containers register themselves to systemd-machined
> >>>>> by oci-register-machine. Any unprivileged user could run
> >>>>> machinectl to list every single containers running in the host
> >>>>> even if the containers do not belong to this user (including
> containers
> >>>>> belong to the root user), and access sensitive information associat=
ed
> >>>>> with any individual container including its internal IP address, OS
> >>>>> version, running processes, and file path for its rootfs.
> >>>>>
> >>>>> $ machinectl status cc8d10c7b9892b75843d200d54d34a3a
> >>>>> cc8d10c7b9892b75843d200d54d34a3a(63633864313063376239383932623735)
> >>>>>           Since: Mon 2016-07-25 17:55:36 UTC; 34s ago
> >>>>>          Leader: 43494 (sleep)
> >>>>>         Service: docker; class container
> >>>>>            Root:
> /var/mnt/overlay/overlay/0429684e3da515ae4f11b8514c7b20f759613
> >>>>>         Address: 172.17.0.2
> >>>>>                  fe80::42:acff:fe11:2
> >>>>>              OS: Red Hat Enterprise Linux Server 7.2 (Maipo)
> >>>>>            Unit:
> docker-cc8d10c7b9892b75843d200d54d34a3a9435fe0f65527c254ebfd2d
> >>>>>                  43494 sleep 3000
> >>>> Use CVE-2016-6349.
> >>> Hello,
> >>> I don't think that the bug for this problem lies in systemd.
> >>> It's more a design mistake in docker or oci-register-machine.
> >>> I have forwarded this issue to the systemd developer team and I don't
> >>> think they will fix this in the future. In their opinion it's a
> >>> bug in docker or oci-register-machine:
> >>>
> >>> https://github.com/systemd/systemd/issues/3815
> >>>
> >>> by the way.. I would feel glad if the security researchers would first
> >>> message the developers and then assign a CVE a bug. This is the normal
> >>> way for a full disclosure.
> >>>
> >>> best regards,
> >>>
> >>> Christian Rebischke
> >> Why is this a bug in oci-register-machine?  All it is doing is calling
> >> the systemd-machine call to register with it using the three flags
> >> available.
> >> Is systemd saying we should not use that call?
> >
> > Let me quote Lennart Poettering:
> >
> > ---
> > machined is a system service and is for registering containers running
> > on the system. There's no concept of "user containers" with that, and
> > unprivileged users do not have the privileges to even register any
> > containers with machined.
> >
> > If you ask me the CVE is complete and utter rubbish. At least against
> > systemd. If Docker knows a concept of user containers, then good for
> > them, but in that case they shouldn't register them with machined
> > really, if they are not supposed to be visible on the host.
> >
> > Generally though I think the CVE is without merit entirely, after all
> > "ps" is generally unrestricted, and hence you can always see container
> > processes running on the host anyway.
> > ---
> >
> > In my opinion I would say you shouldn't use this call if you don't want
> > an information leak. Even if systemd would fix the output of
> > `machinectl status ..`. The information leak would still be there
> > because you could still see informations about the container with `ps`
> > or other tools. systemd is not designed for 'user containers'.
> >
> > If yo have further questions. I would say that you ask the
> > systemd-developers on their mailing list directly.
>
>

--=20


Jessie Frazelle
4096R / D4C4 DD60 0D66 F65A 8EFC  511E 18F3 685C 0022 BFF3
pgp.mit.edu <http://pgp.mit.edu/pks/lookup?op=3Dget&search=3D0x18F3685C0022=
BFF3>

--94eb2c05fefa7fbc7c0538a426dd--
