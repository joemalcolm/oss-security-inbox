X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3622" "Thursday" "6" "August" "2015" "14:30:56" "+0000" "Jason Buberel" "jbuberel@google.com" "<CA+s3sfGGv2dyqvp2YovqTrhe2jti1JALhr2K4L2_HLAg=h0q1g@mail.gmail.com>" "107" "Re: [oss-security] Re: CVE Request - Go net/http library - HTTP smuggling" nil nil nil "8" "2015080614:30:56" "[oss-security] Re: CVE Request - Go net/http library - HTTP smuggling" (number mark "        jbuberel@goo Aug  6  107/3622  " thread-indent "\"Re: [oss-security] Re: CVE Request - Go net/http library - HTTP smuggling\"\n") "<87io8s23uc.fsf@redhat.com>" ("<CA+s3sfHhUWzMvW5FikvWnCq6jqt6ZQFnk++zZrr3P9V3WVWeAg@mail.gmail.com>" "<20150805163639.18AE06CC065@smtpvmsrv1.mitre.org>" "<87io8s23uc.fsf@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 12183 invoked by uid 550); 6 Aug 2015 14:31:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 12162 invoked from network); 6 Aug 2015 14:31:17 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20120113;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-type;
        bh=YK8Ivmahe54GWgy3uYmAtpJgSnYYJaYaxEBQb6S8qRE=;
        b=kq5gmJSrqw2HLe9Lzm9nM+gLzLDSWkXhVFGEcPuKOl8BVG/xcEAVy5Rcq6s0JVDK6B
         hJSqg8d81lNl4v91i5xaCdfxP+LzZ86NzIdpvRW4z+xYSsNwvtAkxxHZglz5WeBek4y4
         UvozplxGeefXxFtEi1MsjI3jxWOoSATAANVRkwbiIUjI4N4Eek2Lq1exkV08J4AG5G7Q
         5eYBdw6i8qM9Oy5veCEk6NX0uzCYTvJ+FGMDsj186S/LOK74gWP1IhlID+4ucJ5HnB/+
         GbviJ/6wOW0pWEiJemLQD1BlmIshEP7HLGzO/i/7JLDn17n/8AEdxRsYYU6Bhykri4W0
         tdyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-type;
        bh=YK8Ivmahe54GWgy3uYmAtpJgSnYYJaYaxEBQb6S8qRE=;
        b=WylllYYb3RMlYR3pglUJBokHhALJSV9iubXrZBlm9ud7SEL/GsU5O77r0FI1VaO6p3
         wlsmPEL98af8XsOKgtVB8M6/EJBSY3NR42fw4ndsarPitnFF4o5sA8XeJ6q/4OtRFMCL
         XO5lN9gtn409TMPZCPlsmtmwA/sMVDFqCDbBijKiMATtR52XmHUH3knVnUH7QiC7abId
         m/MzDE9fNySrBy/GrsdBphVMxywaKoZYiZp8T7618jCNoKgjsoeGXC/i4R206mndEOsm
         JZcfd2Wsgg/1yENlQ9+tmSz4bUtdNKGQPV22zgUSZBlT6KIFlw4SIqdHB+sgaPuNKw5/
         HA7Q==
X-Gm-Message-State: ALoCoQnPPTWhz/rbR/u8Szo7pqy0B2zBmMj+R1ysR5W0nSARgSqjg/opxm/xaDv2Jp6vxjwTWjMx
X-Received: by 10.180.77.129 with SMTP id s1mr7071926wiw.67.1438871465766;
 Thu, 06 Aug 2015 07:31:05 -0700 (PDT)
MIME-Version: 1.0
References: <CA+s3sfHhUWzMvW5FikvWnCq6jqt6ZQFnk++zZrr3P9V3WVWeAg@mail.gmail.com>
 <20150805163639.18AE06CC065@smtpvmsrv1.mitre.org> <87io8s23uc.fsf@redhat.com>
In-Reply-To: <87io8s23uc.fsf@redhat.com>
Message-ID: <CA+s3sfGGv2dyqvp2YovqTrhe2jti1JALhr2K4L2_HLAg=h0q1g@mail.gmail.com>
Content-Type: multipart/alternative; boundary=f46d043c801e986690051ca55eb8
Cc: cve-assign@mitre.org
Date: Thu, 06 Aug 2015 14:30:56 +0000
From: Jason Buberel <jbuberel@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: CVE Request - Go net/http library - HTTP smuggling
To: Martin Prpic <mprpic@redhat.com>, oss-security@lists.openwall.com

--f46d043c801e986690051ca55eb8
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Martin,

We agree that that issue should be included in a 1.4.3 release under a 4th
CVE ID. In addition, we would also like to include:

https://go-review.googlesource.com/#/c/12865/

Which addresses the very closely related issue:

https://golang.org/issue/11930

...under the same (4th, not yet assigned) CVE ID.

-jason

On Thu, Aug 6, 2015 at 1:55 AM Martin Prpic <mprpic@redhat.com> wrote:

> Hi, this looks like it needs a CVE as well:
>
>
> https://github.com/golang/go/commit/26049f6f9171d1190f3bbe05ec304845cfe63=
99f
> https://github.com/golang/go/issues/12027
>
> Can you please assign one? Thank you!
>
> --
> Martin Prpi=C4=8D / Red Hat Product Security
>
>
> cve-assign@mitre.org writes:
>
> > -----BEGIN PGP SIGNED MESSAGE-----
> > Hash: SHA256
> >
> >>
> https://github.com/golang/go/commit/117ddcb83d7f42d6aa72241240af99ded8111=
8e9
> >>
> >> * Invalid headers are parsed as valid headers (like "Content Length:"
> with a
> >> space in the middle)
> >
> > For purposes of CVE assignments, we feel that this needs to be
> > categorized separately from the other parts of the report. The primary
> > factor is that there are different sets of affected versions. This
> > behavior apparently was not present in all versions of Go: it was
> > added in February 2012. Also, it is not really an error in determining
> > the semantics of a set of headers; it's a security-relevant error in
> > interpretation of the syntax of an individual header.
> >
> > Use CVE-2015-5739.
> >
> >
> >>
> https://github.com/golang/go/commit/300d9a21583e7cf0149a778a0611e76ff7c66=
80f
> >>
> >> * Double Content-length headers in a request does not generate a 400
> error,
> >> the second Content-length is ignored
> >
> > Use CVE-2015-5740 for the reporter's finding of a security-relevant
> > RFC 7230 3.3.3 4 violation ("MUST respond with a 400 (Bad Request)
> > status code").
> >
> >
> > 300d9a21583e7cf0149a778a0611e76ff7c6680f also has code changes that
> > were not mentioned in your "as provided by the reporter" section. Our
> > interpretation is that there were separate internal discoveries of
> > other security-relevant RFC 7230 violations, such as "MUST NOT send a
> > Content-Length header field in any message that contains a
> > Transfer-Encoding header field." Use CVE-2015-5741 for one or more
> > internal discoveries reflected in
> > 300d9a21583e7cf0149a778a0611e76ff7c6680f.
> >
> >
> > Finally, if there is a code change in
> > 300d9a21583e7cf0149a778a0611e76ff7c6680f that is exclusively for the
> > purposes of hardening (i.e., no RFC requires the change as a smuggling
> > security fix, and the code change is not for addressing an
> > individually exploitable problem), then that code change is outside
> > the scope of CVE.
> >
> > - --
> > CVE assignment team, MITRE CVE Numbering Authority
> > M/S M300
> > 202 Burlington Road, Bedford, MA 01730 USA
> > [ PGP key available through http://cve.mitre.org/cve/request_id.html ]
> > -----BEGIN PGP SIGNATURE-----
> > Version: GnuPG v1
> >
> > iQEcBAEBCAAGBQJVwjr0AAoJEKllVAevmvms4SgH/1K26OmJwLV0/D+IgSIcWq8q
> > ecN2DlngcNpU7W/fq9o/brN4hoMGVzh/aEPU3JIqC0JbY0OhidPe/DZmqLcndnwb
> > iQ4wS4r89akrzZpdOYc09oBlqyxKtto1exwFHWqqdVIbBjHdq+nQhEBwYGyjf/XK
> > 0DyEX6f72Msa//HFhNKycOKM4KPKsi1Gh5Dl+L9nddWnPdTnTSHoIdD+RGmXDDkD
> > 8i6WI/e5QVrGL2g24mrpefDUWX/p9T/cx9LR1hiiUUDuvns40NVz11E1i8PD2fv3
> > wRzEjUqyt94syYh9PNa0+ZFH7sPUyYOhnpi3/1UzRkSUSI++FfpDFrq3rOEZ4Jk=3D
> > =3DrNSr
> > -----END PGP SIGNATURE-----
>

--f46d043c801e986690051ca55eb8--
