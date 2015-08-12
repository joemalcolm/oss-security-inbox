X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5193" "Wednesday" "12" "August" "2015" "15:34:02" "+0000" "Jason Buberel" "jbuberel@google.com" "<CA+s3sfGFOw7y=t03t6jYWNWxHsN5nQO0hjKrR-HBo6OKvODMzw@mail.gmail.com>" "145" "Re: [oss-security] Re: CVE Request - Go net/http library - HTTP smuggling" nil nil nil "8" "2015081215:34:02" "[oss-security] Re: CVE Request - Go net/http library - HTTP smuggling" (number mark "        jbuberel@goo Aug 12  145/5193  " thread-indent "\"Re: [oss-security] Re: CVE Request - Go net/http library - HTTP smuggling\"\n") "<CA+s3sfE-SR=6UujvBedAZiRcB3xSBx4V7HHYDLtk1-JHqozPCg@mail.gmail.com>" ("<CA+s3sfHhUWzMvW5FikvWnCq6jqt6ZQFnk++zZrr3P9V3WVWeAg@mail.gmail.com>" "<20150805163639.18AE06CC065@smtpvmsrv1.mitre.org>" "<87io8s23uc.fsf@redhat.com>" "<CA+s3sfGGv2dyqvp2YovqTrhe2jti1JALhr2K4L2_HLAg=h0q1g@mail.gmail.com>" "<CA+s3sfE-SR=6UujvBedAZiRcB3xSBx4V7HHYDLtk1-JHqozPCg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 20043 invoked by uid 550); 12 Aug 2015 15:34:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 20016 invoked from network); 12 Aug 2015 15:34:23 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20120113;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-type;
        bh=zOZ48WmXpwBp26YKQVVNZSR6yubWMdmgIHvfMq44EFs=;
        b=cbCSCAraQaVnzLrnL01TaWmwB97X01tvdaMH9Vqg+QRJiAQzNzjDta/hJmW1K/gS4H
         sQQVgGELFbJW1wdUiIikdsZG+r1B2vxv1VHrwu7GcYdNnqNVZ7WQEzXsfWJpSKL1rqtM
         C+uamQ2bbiwhLdoGtzoO7mJYOdoQFzhH91WBXiekl+J4rim6VHdEwBpqZf4tJ0FCtbNV
         v13pdZzZIUlj7/etR3vmiaggKGtGDRaa84oux1r65xYPh2QbmiRPu1ZMTDSanRUnv0bg
         2qCdNXKTa4kSAdZZ0+DovEXnL5/eZ7ER3PhisZTjLQsk1xw9DluLmm58zjIv7FAbKdOh
         ToZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-type;
        bh=zOZ48WmXpwBp26YKQVVNZSR6yubWMdmgIHvfMq44EFs=;
        b=Drrdig9MeDrTztDZT4CMYnsQR4UawS9euhl3R7PMySLhFEsW51ic4IyPOiYeAv1ndT
         WDBWVCSG2igheE5ROsMQ4aBhICaPrRp6Q45MIlp4sc+IAlnK0B9JkezXKaGCRB4+0par
         2C8u0Horxh7rHQTa9We63CgGqkYS+5z+nTIUl7XK8qOzmTTBVMV8Zfs2TZq7vFnUACcN
         316b2KJzq8lpi+Blc6EWt6t6N/LLZl3o93apUBNqtUYHSJ2SQsdWKmZo45ENJ+/1+DCN
         zm7acTlesnZfz3DsTOF4uwVG2ElG7CpOaHLH7KsJpN2HK8NzQjj6TPPJfN6U+FzHTxv7
         351Q==
X-Gm-Message-State: ALoCoQnwsoxb7pMZjnfOhe6apotnivIvnEbubFmvc13jIoFFwPCVMrj+mINXGFZBQzVedIb2+UKC
X-Received: by 10.129.111.132 with SMTP id k126mr35197744ywc.82.1439393651513;
 Wed, 12 Aug 2015 08:34:11 -0700 (PDT)
MIME-Version: 1.0
References: <CA+s3sfHhUWzMvW5FikvWnCq6jqt6ZQFnk++zZrr3P9V3WVWeAg@mail.gmail.com>
 <20150805163639.18AE06CC065@smtpvmsrv1.mitre.org> <87io8s23uc.fsf@redhat.com>
 <CA+s3sfGGv2dyqvp2YovqTrhe2jti1JALhr2K4L2_HLAg=h0q1g@mail.gmail.com> <CA+s3sfE-SR=6UujvBedAZiRcB3xSBx4V7HHYDLtk1-JHqozPCg@mail.gmail.com>
In-Reply-To: <CA+s3sfE-SR=6UujvBedAZiRcB3xSBx4V7HHYDLtk1-JHqozPCg@mail.gmail.com>
Message-ID: <CA+s3sfGFOw7y=t03t6jYWNWxHsN5nQO0hjKrR-HBo6OKvODMzw@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a114926064ab0d5051d1ef3d4
Cc: cve-assign@mitre.org
Date: Wed, 12 Aug 2015 15:34:02 +0000
From: Jason Buberel <jbuberel@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: CVE Request - Go net/http library - HTTP smuggling
To: Martin Prpic <mprpic@redhat.com>, oss-security@lists.openwall.com

--001a114926064ab0d5051d1ef3d4
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Having not heard back, we're planning to start preparing a 1.4.3 release to
include the following patches:

CVE-2015-5739 <https://security-tracker.debian.org/tracker/CVE-2015-5739>
"Content Length" treated as valid header:
117ddcb83d7f42d6aa72241240af99ded81118e9
<https://github.com/golang/go/commit/117ddcb83d7f42d6aa72241240af99ded81118=
e9>

CVE-2015-5740 <https://security-tracker.debian.org/tracker/CVE-2015-5740>
Double content-length headers does not return 400 error:
300d9a21583e7cf0149a778a0611e76ff7c6680f
<https://github.com/golang/go/commit/300d9a21583e7cf0149a778a0611e76ff7c668=
0f>

CVE-2015-5741 <https://security-tracker.debian.org/tracker/CVE-2015-5741>
Additional hardening, not sending Content-Length w/Transfer-Encoding,
Closing connections:
300d9a21583e7cf0149a778a0611e76ff7c6680f
<https://github.com/golang/go/commit/300d9a21583e7cf0149a778a0611e76ff7c668=
0f>
I0bf18006d7d8f6537529823fc450f2e2bdb7c18e
<https://go-review.googlesource.com/#/q/I0bf18006d7d8f6537529823fc450f2e2bd=
b7c18e>
I077eb0b8dff35c5d5534ee5f6386127c9954bd58
<https://go-review.googlesource.com/#/q/I077eb0b8dff35c5d5534ee5f6386127c99=
54bd58>

-jason

On Mon, Aug 10, 2015 at 1:34 PM Jason Buberel <jbuberel@google.com> wrote:

> Any updates fro the cve-assigners on this 4th item?
>
>
> On Thu, Aug 6, 2015 at 7:30 AM Jason Buberel <jbuberel@google.com> wrote:
>
>> Martin,
>>
>> We agree that that issue should be included in a 1.4.3 release under a
>> 4th CVE ID. In addition, we would also like to include:
>>
>> https://go-review.googlesource.com/#/c/12865/
>>
>> Which addresses the very closely related issue:
>>
>> https://golang.org/issue/11930
>>
>> ...under the same (4th, not yet assigned) CVE ID.
>>
>> -jason
>>
>> On Thu, Aug 6, 2015 at 1:55 AM Martin Prpic <mprpic@redhat.com> wrote:
>>
>>> Hi, this looks like it needs a CVE as well:
>>>
>>>
>>> https://github.com/golang/go/commit/26049f6f9171d1190f3bbe05ec304845cfe=
6399f
>>> https://github.com/golang/go/issues/12027
>>>
>>> Can you please assign one? Thank you!
>>>
>>> --
>>> Martin Prpi=C4=8D / Red Hat Product Security
>>>
>>>
>>> cve-assign@mitre.org writes:
>>>
>>> > -----BEGIN PGP SIGNED MESSAGE-----
>>> > Hash: SHA256
>>> >
>>> >>
>>> https://github.com/golang/go/commit/117ddcb83d7f42d6aa72241240af99ded81=
118e9
>>> >>
>>> >> * Invalid headers are parsed as valid headers (like "Content Length:"
>>> with a
>>> >> space in the middle)
>>> >
>>> > For purposes of CVE assignments, we feel that this needs to be
>>> > categorized separately from the other parts of the report. The primary
>>> > factor is that there are different sets of affected versions. This
>>> > behavior apparently was not present in all versions of Go: it was
>>> > added in February 2012. Also, it is not really an error in determining
>>> > the semantics of a set of headers; it's a security-relevant error in
>>> > interpretation of the syntax of an individual header.
>>> >
>>> > Use CVE-2015-5739.
>>> >
>>> >
>>> >>
>>> https://github.com/golang/go/commit/300d9a21583e7cf0149a778a0611e76ff7c=
6680f
>>> >>
>>> >> * Double Content-length headers in a request does not generate a 400
>>> error,
>>> >> the second Content-length is ignored
>>> >
>>> > Use CVE-2015-5740 for the reporter's finding of a security-relevant
>>> > RFC 7230 3.3.3 4 violation ("MUST respond with a 400 (Bad Request)
>>> > status code").
>>> >
>>> >
>>> > 300d9a21583e7cf0149a778a0611e76ff7c6680f also has code changes that
>>> > were not mentioned in your "as provided by the reporter" section. Our
>>> > interpretation is that there were separate internal discoveries of
>>> > other security-relevant RFC 7230 violations, such as "MUST NOT send a
>>> > Content-Length header field in any message that contains a
>>> > Transfer-Encoding header field." Use CVE-2015-5741 for one or more
>>> > internal discoveries reflected in
>>> > 300d9a21583e7cf0149a778a0611e76ff7c6680f.
>>> >
>>> >
>>> > Finally, if there is a code change in
>>> > 300d9a21583e7cf0149a778a0611e76ff7c6680f that is exclusively for the
>>> > purposes of hardening (i.e., no RFC requires the change as a smuggling
>>> > security fix, and the code change is not for addressing an
>>> > individually exploitable problem), then that code change is outside
>>> > the scope of CVE.
>>> >
>>> > - --
>>> > CVE assignment team, MITRE CVE Numbering Authority
>>> > M/S M300
>>> > 202 Burlington Road, Bedford, MA 01730 USA
>>> > [ PGP key available through http://cve.mitre.org/cve/request_id.html ]
>>> > -----BEGIN PGP SIGNATURE-----
>>> > Version: GnuPG v1
>>> >
>>> > iQEcBAEBCAAGBQJVwjr0AAoJEKllVAevmvms4SgH/1K26OmJwLV0/D+IgSIcWq8q
>>> > ecN2DlngcNpU7W/fq9o/brN4hoMGVzh/aEPU3JIqC0JbY0OhidPe/DZmqLcndnwb
>>> > iQ4wS4r89akrzZpdOYc09oBlqyxKtto1exwFHWqqdVIbBjHdq+nQhEBwYGyjf/XK
>>> > 0DyEX6f72Msa//HFhNKycOKM4KPKsi1Gh5Dl+L9nddWnPdTnTSHoIdD+RGmXDDkD
>>> > 8i6WI/e5QVrGL2g24mrpefDUWX/p9T/cx9LR1hiiUUDuvns40NVz11E1i8PD2fv3
>>> > wRzEjUqyt94syYh9PNa0+ZFH7sPUyYOhnpi3/1UzRkSUSI++FfpDFrq3rOEZ4Jk=3D
>>> > =3DrNSr
>>> > -----END PGP SIGNATURE-----
>>>
>>

--001a114926064ab0d5051d1ef3d4--
