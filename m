X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2971" "Tuesday" "4" "August" "2015" "22:56:12" "+0000" "Jason Buberel" "jbuberel@google.com" "<CA+s3sfHhUWzMvW5FikvWnCq6jqt6ZQFnk++zZrr3P9V3WVWeAg@mail.gmail.com>" "84" "Re: [oss-security] CVE Request - Go net/http library - HTTP smuggling" nil nil nil "8" "2015080422:56:12" "[oss-security] CVE Request - Go net/http library - HTTP smuggling" (number mark "        jbuberel@goo Aug  4   84/2971  " thread-indent "\"Re: [oss-security] CVE Request - Go net/http library - HTTP smuggling\"\n") "<CA+s3sfEOMOLWgkLGTRxdEQ1f8KzJ2-oSuFpebd4U_x2y9Dz_WQ@mail.gmail.com>" ("<CA+s3sfH-k=1RQtuEqST-2NB7XrEZZv1QYwxNdG6TuDz_A5ruVA@mail.gmail.com>" "<55B926A4.2020601@redhat.com>" "<CA+s3sfEOMOLWgkLGTRxdEQ1f8KzJ2-oSuFpebd4U_x2y9Dz_WQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5601 invoked by uid 550); 4 Aug 2015 22:56:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5579 invoked from network); 4 Aug 2015 22:56:33 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20120113;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-type;
        bh=0LvhO7FC2pTlgKnfb/viT8w6hWKrjH+Qth5Hq29NdG8=;
        b=UUrIrufKF6aSC14vpMYEwx2z4nq/QkfMq+iouOTJtXrXv0gt+UlIY0jFHWUlRWVt75
         FCIi37+rKKgdUeu7v6T7gwPzll0Pc3lvPaHPBSIKHxAoGGS3qoKDFXQn/vt5yKzKPApP
         hDqmRwizoKzsWsCazj5/Og9kzKj6CVW1x/X1G5KkaIwusRJAkdvOH0IYYBHHlofyisBD
         K6ntTkA8cDEf3sDNTO7+zVXmcfEfc54AUnJVTDGJAkAVh/WiWx7D+rFD/O7HHt1rnAh5
         8GaUaqghN8u+h8WCg46AvRuA9L/xt4Lk0v14dGbweem5LHFLQafvhFezX51vejucH8xS
         5X1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-type;
        bh=0LvhO7FC2pTlgKnfb/viT8w6hWKrjH+Qth5Hq29NdG8=;
        b=mNY3B4bh6G2YtnOh2vD4sgv8nWxoi/InybG2qNzdwhGMLYUZ8qQeGoeboM06iWOIu8
         bdrEs6YCxQZr+Rj1KbDUu/RxgIPXFHUIXR7wyllU+ZWzIzkyCofwox0EYGwzn7hKte7f
         6+KrERLBX/vWU/G3fizH7kNUUv6/Gtmj+WrTyoJn7USlTpKgUiSUkz4HnT9CBGD4dNJY
         f6w8KSH9+4wyx0Duzo34Y5QukJBUwr5YaFV0EivMz/m4PmYHDz1WESxsDt6kzAvnEHPb
         3fiJM9mj84j963uAuuc/4Fo11b/sOIW+UqG2vpGk2uYOCX63KWRJOZte5Oitjtqx38It
         MHDw==
X-Gm-Message-State: ALoCoQlhuiXEiy7b8CAl1HcPbaXIBIjw1k0JZJeX9EjcAAeY4bdIyFsHHDL535dpu9v4g/o/4DLK
X-Received: by 10.180.91.76 with SMTP id cc12mr3697424wib.67.1438728982337;
 Tue, 04 Aug 2015 15:56:22 -0700 (PDT)
MIME-Version: 1.0
References: <CA+s3sfH-k=1RQtuEqST-2NB7XrEZZv1QYwxNdG6TuDz_A5ruVA@mail.gmail.com>
 <55B926A4.2020601@redhat.com> <CA+s3sfEOMOLWgkLGTRxdEQ1f8KzJ2-oSuFpebd4U_x2y9Dz_WQ@mail.gmail.com>
In-Reply-To: <CA+s3sfEOMOLWgkLGTRxdEQ1f8KzJ2-oSuFpebd4U_x2y9Dz_WQ@mail.gmail.com>
Message-ID: <CA+s3sfHhUWzMvW5FikvWnCq6jqt6ZQFnk++zZrr3P9V3WVWeAg@mail.gmail.com>
Content-Type: multipart/alternative; boundary=f46d043c7e26ebd301051c8431c6
Cc: oss-security@lists.openwall.com, 
	"cve-assign@mitre.org" <cve-assign@mitre.org>
Date: Tue, 04 Aug 2015 22:56:12 +0000
From: Jason Buberel <jbuberel@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE Request - Go net/http library - HTTP smuggling
To: Florian Weimer <fweimer@redhat.com>

--f46d043c7e26ebd301051c8431c6
Content-Type: text/plain; charset=UTF-8

Florian,

We believe that this is a potentially exploitable issue.  We would like a
CVE-ID in order to release a 1.4.3 build that has the fixes applied to the
current stable release (1.4.2) for linux distro coordination.

Commits have been made to the Go master branch to fix the problem:

https://github.com/golang/go/commit/117ddcb83d7f42d6aa72241240af99ded81118e9
https://github.com/golang/go/commit/300d9a21583e7cf0149a778a0611e76ff7c6680f
https://github.com/golang/go/commit/143822585e32449860e624cace9d2e521deee62e

Additional background on the exploit, as provided by the reporter:

net/http problems
------------------

* Double Content-length headers in a request does not generate a 400 error,
the second Content-length is ignored
* Invalid headers are parsed as valid headers (like "Content Length:" with a
space in the middle)

Exploitations
--------------

In a situation where the net/http agent HTTP communication with the final
http clients is using some reverse proxy (reverse proxy cache, SSL
terminators, etc), some requests can be made exploiting the net/http HTTP
protocol violations.

The goal of theses requests will be either:
 * to bypass security controls on theses previous elements
 * to perform some cache poisoning on these elements
 * to alter the request/response map on these previous elements (for DOS),
see for example this apache 2.4 issue:
https://bz.apache.org/bugzilla/show_bug.cgi?id=57832


On Wed, Jul 29, 2015 at 12:51 PM Jason Buberel <jbuberel@google.com> wrote:

> Forian,
>
> We do have a security@golang.org alias, and a proposal for a more formal
> security review process <https://github.com/golang/go/issues/11502>, but
> I agree that the process isn't clear enough currently.
>
> In this particular case, the reporter sent a messages to go-dev@golang.org.
> That was then forwarded to me for handling.
>
> And I agree on the bundling. Is there another specific issue that you're
> tracking? Feel free to contact me directly - jbuberel@google.com.
>
> -jason
>
> On Wed, Jul 29, 2015 at 12:16 PM Florian Weimer <fweimer@redhat.com>
> wrote:
>
>> On 07/29/2015 05:15 PM, Jason Buberel wrote:
>> > Hello OSS Security Community,
>> >
>> > The Go open source project has received notification of an HTTP request
>> > smuggling vulnerability in the net/http library (
>> > http://golang.org/pkg/net/http/). The vulnerability was identified in
>> the
>> > 1.4.2 release version (http://golang.org/dl) and in the 1.5 release
>> branch.
>>
>> How does one report such things?
>>
>> Due to lack of published security contact information, I contacted the
>> de-facto subsystem maintainer about the issue, but I have been ignored.
>>
>> (It would be nice to be able to bundle such security updates as far as
>> possible, to avoid recompiling everything constantly.)
>>
>> --
>> Florian Weimer / Red Hat Product Security
>>
>

--f46d043c7e26ebd301051c8431c6--
