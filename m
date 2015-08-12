X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5482" "Wednesday" "12" "August" "2015" "18:52:58" "+0000" "Jason Buberel" "jbuberel@google.com" "<CA+s3sfHPVyVzeZ2brBmS0Zpg+yM7fbdqZ=KAvzNHsG3-VeLzzQ@mail.gmail.com>" "155" "Re: [oss-security] Re: CVE Request - Go net/http library - HTTP smuggling" nil nil nil "8" "2015081218:52:58" "[oss-security] Re: CVE Request - Go net/http library - HTTP smuggling" (number mark "        jbuberel@goo Aug 12  155/5482  " thread-indent "\"Re: [oss-security] Re: CVE Request - Go net/http library - HTTP smuggling\"\n") "<CA+s3sfGFOw7y=t03t6jYWNWxHsN5nQO0hjKrR-HBo6OKvODMzw@mail.gmail.com>" ("<CA+s3sfHhUWzMvW5FikvWnCq6jqt6ZQFnk++zZrr3P9V3WVWeAg@mail.gmail.com>" "<20150805163639.18AE06CC065@smtpvmsrv1.mitre.org>" "<87io8s23uc.fsf@redhat.com>" "<CA+s3sfGGv2dyqvp2YovqTrhe2jti1JALhr2K4L2_HLAg=h0q1g@mail.gmail.com>" "<CA+s3sfE-SR=6UujvBedAZiRcB3xSBx4V7HHYDLtk1-JHqozPCg@mail.gmail.com>" "<CA+s3sfGFOw7y=t03t6jYWNWxHsN5nQO0hjKrR-HBo6OKvODMzw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 25617 invoked by uid 550); 12 Aug 2015 18:53:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24575 invoked from network); 12 Aug 2015 18:53:19 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20120113;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :content-type;
        bh=LKPe9/wRNRK1PtgIFB8sq2uxDdhsABCqWU+8ExYS9MM=;
        b=MYYai0CygWIMSV0fS6D2/RTC/+ff3C8/ZO7/GpgQKafpUFW0SLtZhMhpWLfBFaAyy5
         4ny2UaA7ad70rXdbjTfAbf9NcB1dONOxhP3ThHWpK42c6d3qz8yPnMWhwTcYCySd8IO8
         6j3RMdd7ZZDzAARFtIyPF4NPfYHpNVMa9p2J+81xXNqqJU4apFTP0PlfI/24UwJQF8Hs
         KgjNAumaf2KMUbSujQqJV7Tq8Y04vYZL9isHHXA4VESDjNa+MuB/mcEg2MgktgP1RzYl
         S529qjjXFJsR+JYefRKff5DVZhdjhmLLAWHNsPyyZVkGHDwHr83PByC58mRJEF+NF1vL
         zBow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:content-type;
        bh=LKPe9/wRNRK1PtgIFB8sq2uxDdhsABCqWU+8ExYS9MM=;
        b=cEpYTekALsL5bHYr8vxjQCQfUdCP/6y+HtIbbxVk5DIdf3noFf/S42irMjq387yNYY
         Uh+8pOQgRu4a7jKhGfwR18bayT3Oaw0vhdfv17XLX5MnqnOlw2xx4Uc5FPshK6bjlERZ
         tlC0H/ixWjnFMgGwCXBeQZhAh1PAkbmZrxwycSNLNTjIQfOjbxohBcybSiqwMKIdEra+
         cvm+7oHanfiG6FTGQui67DxtZghmkxAWVzviLAAod+7vA8dB9lkgke5/36cUpF46wyRc
         2YCMUxH5OrcwmAXjXc6oNkSkuqsn6w/6QgR7lz0uo1KxBD1WQ75HJEMu1+JZQIuDNZ71
         vqRQ==
X-Gm-Message-State: ALoCoQmqMWZXBoIOlVlSrxS8T+1B7MSsZKHSqsLMzzWypsaN7lOG/NIuwFnbJH0QXggDiOh4QKGO
X-Received: by 10.194.87.102 with SMTP id w6mr68172198wjz.111.1439405588040;
 Wed, 12 Aug 2015 11:53:08 -0700 (PDT)
MIME-Version: 1.0
References: <CA+s3sfHhUWzMvW5FikvWnCq6jqt6ZQFnk++zZrr3P9V3WVWeAg@mail.gmail.com>
 <20150805163639.18AE06CC065@smtpvmsrv1.mitre.org> <87io8s23uc.fsf@redhat.com>
 <CA+s3sfGGv2dyqvp2YovqTrhe2jti1JALhr2K4L2_HLAg=h0q1g@mail.gmail.com>
 <CA+s3sfE-SR=6UujvBedAZiRcB3xSBx4V7HHYDLtk1-JHqozPCg@mail.gmail.com> <CA+s3sfGFOw7y=t03t6jYWNWxHsN5nQO0hjKrR-HBo6OKvODMzw@mail.gmail.com>
In-Reply-To: <CA+s3sfGFOw7y=t03t6jYWNWxHsN5nQO0hjKrR-HBo6OKvODMzw@mail.gmail.com>
Message-ID: <CA+s3sfHPVyVzeZ2brBmS0Zpg+yM7fbdqZ=KAvzNHsG3-VeLzzQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary=047d7bf19850c38eaf051d21ba51
Date: Wed, 12 Aug 2015 18:52:58 +0000
From: Jason Buberel <jbuberel@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: CVE Request - Go net/http library - HTTP smuggling
To: Martin Prpic <mprpic@redhat.com>, oss-security@lists.openwall.com

--047d7bf19850c38eaf051d21ba51
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Agreed - that will be included in 1.4.3.

-jason

On Wed, Aug 12, 2015 at 8:34 AM Jason Buberel <jbuberel@google.com> wrote:

> Having not heard back, we're planning to start preparing a 1.4.3 release
> to include the following patches:
>
> CVE-2015-5739 <https://security-tracker.debian.org/tracker/CVE-2015-5739>
> "Content Length" treated as valid header:
> 117ddcb83d7f42d6aa72241240af99ded81118e9
> <https://github.com/golang/go/commit/117ddcb83d7f42d6aa72241240af99ded811=
18e9>
>
> CVE-2015-5740 <https://security-tracker.debian.org/tracker/CVE-2015-5740>
> Double content-length headers does not return 400 error:
> 300d9a21583e7cf0149a778a0611e76ff7c6680f
> <https://github.com/golang/go/commit/300d9a21583e7cf0149a778a0611e76ff7c6=
680f>
>
> CVE-2015-5741 <https://security-tracker.debian.org/tracker/CVE-2015-5741>
> Additional hardening, not sending Content-Length w/Transfer-Encoding,
> Closing connections:
> 300d9a21583e7cf0149a778a0611e76ff7c6680f
> <https://github.com/golang/go/commit/300d9a21583e7cf0149a778a0611e76ff7c6=
680f>
> I0bf18006d7d8f6537529823fc450f2e2bdb7c18e
> <https://go-review.googlesource.com/#/q/I0bf18006d7d8f6537529823fc450f2e2=
bdb7c18e>
> I077eb0b8dff35c5d5534ee5f6386127c9954bd58
> <https://go-review.googlesource.com/#/q/I077eb0b8dff35c5d5534ee5f6386127c=
9954bd58>
>
> -jason
>
> On Mon, Aug 10, 2015 at 1:34 PM Jason Buberel <jbuberel@google.com> wrote:
>
>> Any updates fro the cve-assigners on this 4th item?
>>
>>
>> On Thu, Aug 6, 2015 at 7:30 AM Jason Buberel <jbuberel@google.com> wrote:
>>
>>> Martin,
>>>
>>> We agree that that issue should be included in a 1.4.3 release under a
>>> 4th CVE ID. In addition, we would also like to include:
>>>
>>> https://go-review.googlesource.com/#/c/12865/
>>>
>>> Which addresses the very closely related issue:
>>>
>>> https://golang.org/issue/11930
>>>
>>> ...under the same (4th, not yet assigned) CVE ID.
>>>
>>> -jason
>>>
>>> On Thu, Aug 6, 2015 at 1:55 AM Martin Prpic <mprpic@redhat.com> wrote:
>>>
>>>> Hi, this looks like it needs a CVE as well:
>>>>
>>>>
>>>> https://github.com/golang/go/commit/26049f6f9171d1190f3bbe05ec304845cf=
e6399f
>>>> https://github.com/golang/go/issues/12027
>>>>
>>>> Can you please assign one? Thank you!
>>>>
>>>> --
>>>> Martin Prpi=C4=8D / Red Hat Product Security
>>>>
>>>>
>>>> cve-assign@mitre.org writes:
>>>>
>>>> > -----BEGIN PGP SIGNED MESSAGE-----
>>>> > Hash: SHA256
>>>> >
>>>> >>
>>>> https://github.com/golang/go/commit/117ddcb83d7f42d6aa72241240af99ded8=
1118e9
>>>> >>
>>>> >> * Invalid headers are parsed as valid headers (like "Content
>>>> Length:" with a
>>>> >> space in the middle)
>>>> >
>>>> > For purposes of CVE assignments, we feel that this needs to be
>>>> > categorized separately from the other parts of the report. The prima=
ry
>>>> > factor is that there are different sets of affected versions. This
>>>> > behavior apparently was not present in all versions of Go: it was
>>>> > added in February 2012. Also, it is not really an error in determini=
ng
>>>> > the semantics of a set of headers; it's a security-relevant error in
>>>> > interpretation of the syntax of an individual header.
>>>> >
>>>> > Use CVE-2015-5739.
>>>> >
>>>> >
>>>> >>
>>>> https://github.com/golang/go/commit/300d9a21583e7cf0149a778a0611e76ff7=
c6680f
>>>> >>
>>>> >> * Double Content-length headers in a request does not generate a 400
>>>> error,
>>>> >> the second Content-length is ignored
>>>> >
>>>> > Use CVE-2015-5740 for the reporter's finding of a security-relevant
>>>> > RFC 7230 3.3.3 4 violation ("MUST respond with a 400 (Bad Request)
>>>> > status code").
>>>> >
>>>> >
>>>> > 300d9a21583e7cf0149a778a0611e76ff7c6680f also has code changes that
>>>> > were not mentioned in your "as provided by the reporter" section. Our
>>>> > interpretation is that there were separate internal discoveries of
>>>> > other security-relevant RFC 7230 violations, such as "MUST NOT send a
>>>> > Content-Length header field in any message that contains a
>>>> > Transfer-Encoding header field." Use CVE-2015-5741 for one or more
>>>> > internal discoveries reflected in
>>>> > 300d9a21583e7cf0149a778a0611e76ff7c6680f.
>>>> >
>>>> >
>>>> > Finally, if there is a code change in
>>>> > 300d9a21583e7cf0149a778a0611e76ff7c6680f that is exclusively for the
>>>> > purposes of hardening (i.e., no RFC requires the change as a smuggli=
ng
>>>> > security fix, and the code change is not for addressing an
>>>> > individually exploitable problem), then that code change is outside
>>>> > the scope of CVE.
>>>> >
>>>> > - --
>>>> > CVE assignment team, MITRE CVE Numbering Authority
>>>> > M/S M300
>>>> > 202 Burlington Road, Bedford, MA 01730 USA
>>>> > [ PGP key available through http://cve.mitre.org/cve/request_id.html
>>>> ]
>>>> > -----BEGIN PGP SIGNATURE-----
>>>> > Version: GnuPG v1
>>>> >
>>>> > iQEcBAEBCAAGBQJVwjr0AAoJEKllVAevmvms4SgH/1K26OmJwLV0/D+IgSIcWq8q
>>>> > ecN2DlngcNpU7W/fq9o/brN4hoMGVzh/aEPU3JIqC0JbY0OhidPe/DZmqLcndnwb
>>>> > iQ4wS4r89akrzZpdOYc09oBlqyxKtto1exwFHWqqdVIbBjHdq+nQhEBwYGyjf/XK
>>>> > 0DyEX6f72Msa//HFhNKycOKM4KPKsi1Gh5Dl+L9nddWnPdTnTSHoIdD+RGmXDDkD
>>>> > 8i6WI/e5QVrGL2g24mrpefDUWX/p9T/cx9LR1hiiUUDuvns40NVz11E1i8PD2fv3
>>>> > wRzEjUqyt94syYh9PNa0+ZFH7sPUyYOhnpi3/1UzRkSUSI++FfpDFrq3rOEZ4Jk=3D
>>>> > =3DrNSr
>>>> > -----END PGP SIGNATURE-----
>>>>
>>>

--047d7bf19850c38eaf051d21ba51--
