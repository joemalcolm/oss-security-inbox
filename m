Received: (qmail 9908 invoked by uid 550); 22 Jan 2025 15:04:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5515 invoked from network); 22 Jan 2025 14:26:26 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1737555977;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Je6McKvisigFiUCWwrHmbpQXgi0nsUfW0xB/HWXSxSI=;
	b=ikRbdVUfQhuiz3EW2tzJlfS+JNeOaB0afbx4ts1/q2aMZV0K+udwn3mc/DdL2sDHXSFtm0
	6aGOeoiJCLwH8d+ppuYtIHUIzkBXza3OAdxM7twvjGy/4EG9Nmd2YS5pZ9SMaLGCFXSnMU
	O21z4pfB0KU66QpiVeKvmfh18aATDKY=
X-MC-Unique: ZrDC-1a0NwqdSH2j7H-dbA-1
X-Mimecast-MFC-AGG-ID: ZrDC-1a0NwqdSH2j7H-dbA
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737555975; x=1738160775;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Je6McKvisigFiUCWwrHmbpQXgi0nsUfW0xB/HWXSxSI=;
        b=SburdZnGUq77SAWr5fOMWbyrA1uiuDPwVlvbqye1UcmNiR50qlr0nr2p0lZ34sE3Nd
         HZ2LBRlgJjp4xZ3Eq6tPXdYjSvGhgqBS4YRWxUj0OdXrUD3rSk5277QhFaLGp6ksc5k5
         4mKOs6sKmD88OB0jro6o3B05ZaLbcflEjkrW6Kl0f887JXNp8ypGwWow0jfUEHT/qjCq
         xFHahptYYqPvl9fgzCozYeSu+IbELur2xwlq64q7AqZnsvIqq8Lipoi5SlGgSRrwHV73
         bRUXpgTKm2EH3BbMBHVxZfN+dbBfTTSE9S/zbu2VJobzgNOfydDF5H+QJGl1kJQ95kO8
         /H6g==
X-Gm-Message-State: AOJu0YwPYFTsEe0S1eZC4SVFEpnaO2fxuQzliuSUZHxKmNIXu1i/mutJ
	TqolNZsYOdP83srNqInPW/cGU4fbdIKa+mzxe1Q+lqFmdwm5/2kjzREJb2hipy03HXxNQHk2FX1
	uzEZN3XmU//SELBMJ1gmlwb5Wqh2QfeXWhsI+N2Q3HJtGdZNUua0yH8T3oJmNroK3YLubrYaYj9
	ijv3xW8BR8UbGzRd0sTXuvj+Sc99TUrVHWiSjuTYt3aHs0MXlWtbs=
X-Gm-Gg: ASbGncs9Ciu6OKZ1lo6BoESeXWMBAbkmpsjmsd3zHDH8t872Eq/5Zwx+SEq6hXpkA8D
	etM3ueM4O0ck2gOUUWGcmrG9sPg7jW2miMkWAGiQ3z9IF120TiPChdv6fuCsokOm3nA==
X-Received: by 2002:a05:6122:4892:b0:518:7ab7:afa9 with SMTP id 71dfb90a1353d-51d5b39ad76mr17095444e0c.10.1737555975139;
        Wed, 22 Jan 2025 06:26:15 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGq+Y9JdduIUOA3AC7om70dJl+vJK8qO7g0znw1k2hQq1ZaOg9fTme96FpZBzALZNosnAdpDVJwPRkKPuumzKE=
X-Received: by 2002:a05:6122:4892:b0:518:7ab7:afa9 with SMTP id
 71dfb90a1353d-51d5b39ad76mr17095402e0c.10.1737555974693; Wed, 22 Jan 2025
 06:26:14 -0800 (PST)
MIME-Version: 1.0
References: <Z5DF00lM-3Q36mhh@kasco.suse.de> <2025012206-remember-glare-da7d@gregkh>
In-Reply-To: <2025012206-remember-glare-da7d@gregkh>
From: Pedro Sampaio <psampaio@redhat.com>
Date: Wed, 22 Jan 2025 11:25:58 -0300
X-Gm-Features: AbW1kvZO0T2kgJuS6uTSBNNKaxmEwYhmlijudm48znbNaKryZNi80YxbvpD9_8c
Message-ID: <CAEFhzs-QmA0K7t65ssvPeK8qgifwnoETAtbNuE1mOUhnRbR+=Q@mail.gmail.com>
To: oss-security@lists.openwall.com
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 8dYulSjM5aTIQh891dCsjJU0jwWhVX_5mVYEZu36_a8_1737555975
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] issue with stuck Mitre CVE requests

Hello,

For CVE assignments there is no need for a Root CNA. You can request a
CVE ID from any CNA which has a valid scope for the affected
component/product.

Root CNAs work only with other CNAs to onboard them, provide support,
and mediate disputes. Red Hat works in both roles, but only the CNA is
needed in this case.

To request a CVE ID from us, you can use our contact listed at Mitre's
Partners List[1] (secalert@redhat.com). No need to have prior
relations or communications.

If a project wants to become a CNA themselves, the Root CNA contact
(or both) may be used (rootcna-coordination@redhat.com).

Mitre is CNA of Last Resort and can assign CVE IDs for anything.
However, relying solely on them may overwhelm their request channels.
And although we want to avoid duplicate assignments, If you get no
response for a long time, you can request a CVE ID from another CNA.
As it is also possible to request CVE Rejection for duplicate CVEs
later.

[1] https://www.cve.org/PartnerInformation/ListofPartners/partner/redhat

On Wed, Jan 22, 2025 at 8:51=E2=80=AFAM Greg KH <greg@kroah.com> wrote:
>
> On Wed, Jan 22, 2025 at 11:17:54AM +0100, Matthias Gerstner wrote:
> > Hello list,
> >
> > I am currently experiencing for the second time that a CVE request
> > submitted via the Mitre web form [1] is not receiving a response. A
> > similar topic was already shortly discussed in the past [2].
> >
> > I requested two CVEs on Jan 13. One got assigned within 24 hours, for
> > the other one I still didn't receive a reply. The same happened to me in
> > April 2024. Back then, after not receiving a reply for over two weeks,
> > the CVE has been assigned by Red Hat instead, since Red Hat developers
> > have been involved in the affected project.
> >
> > In this instance upstream is not a CNA and it is also not closely
> > involved with Red Hat. Replying to the automatic CVE request mail from
> > Mitre does not seem to reach any human being. I don't know of any other
> > way to get attention from Mitre for this request.
> >
> > I wonder what is the best way to recover from such a situation without
> > risking duplicate CVE assignments, or not assigning a CVE at all.
> >
> > I have a hunch that the issue might have to do with filling out the "PGP
> > Key" field in the CVE request form, which I did for the one request that
> > has not been answered, but not for the other, which got assigned right
> > away.
>
> I can't answer the "what magic do I do to make the web form work" as I
> never got that thing to work so we had to end up being our own CNA just
> to handle issues :)
>
> But this topic has come up recently in talking with other open source
> CNA groups.  The "real" solution for it is to talk to a different root
> CNA (i.e. anyone other than MITRE).  For open source projects, that
> _should_ be Red Hat, but I don't know if they yet have a simple way to
> ask for stuff like this, other than the back-channel you probably used
> last time.  I think RH is working to codify this somehow, but I can't
> speak for them.
>
> Or, better yet, as SUSE is a CNA, why not just assign CVE ids yourself,
> as part of the "open source projects affected in a SUSE product that are
> not covered by any other CNA" rules.  Doesn't your CNA charter allow you
> to do this now?
>
> Anyway, I just recommend avoiding the MITRE web form as much as
> possible, as it's a total black box and no one knows what is on the
> backend or where the information there goes to :(
>
> thanks,
>
> greg k-h
>


--=20
Pedro Sampaio | Red Hat Product Security
851525C5A98E9DEB7E650ABDFAC8296FBC674B8F

