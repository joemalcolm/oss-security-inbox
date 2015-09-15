X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1642" "Tuesday" "15" "September" "2015" "13:10:17" "-0300" "Gustavo Grieco" "gustavo.grieco@gmail.com" "<CACn5sdScL+e_x+QH4wS-cUKaEAMhSSy-jjeKufXu53j6-as_HA@mail.gmail.com>" "50" "Re: [oss-security] Heap overflow and DoS in unzip 6.0" nil nil nil "9" "2015091516:10:17" "[oss-security] Heap overflow and DoS in unzip 6.0" (number mark "        gustavo.grie Sep 15   50/1642  " thread-indent "\"Re: [oss-security] Heap overflow and DoS in unzip 6.0\"\n") "<20150915180357.7a0097a4@redhat.com>" ("<CACn5sdRQaUEHfde5QzqnOSv829baMEgDBCN7n8rzzrb+1s2uMw@mail.gmail.com>" "<20150915180357.7a0097a4@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 14219 invoked by uid 550); 15 Sep 2015 16:10:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 14179 invoked from network); 15 Sep 2015 16:10:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=9tUUQ4pAQH68LYMy78afgDAthkyjcsPxaPeqCOV1etI=;
        b=xbh14I6C5M5UgLQGI7wWbaF9B7QOeIOU8UnYBAyuyeEp0KnNBW+/Rb3iNtGs2/Eq7d
         nsOE2lyqijY71favXQsFTKsBQ2zDJG0WQrsXnmI4jZHKMVPEGYGXwvHBgW11jfOYSrS+
         e2hR3jdo5qv9sBnh/geHZKUVpIS3cXwX+aFQkWB0f6ktAXrvimhXhTVTEaJF+1JYQ0Xz
         CpVdTttTsf9+Bfs/kl06LPm0yObiMq3EO86HUfe63SvNVEhWXn/4NAyfhOr/0kYud7gA
         a+5kDkz/tDaW63slc1tf5vykU7e6nvpyfionZ9jzzNwFWNiemIQaAykg3jFQQCUFI61V
         8KlA==
MIME-Version: 1.0
X-Received: by 10.153.8.37 with SMTP id dh5mr681859lad.53.1442333417492; Tue,
 15 Sep 2015 09:10:17 -0700 (PDT)
In-Reply-To: <20150915180357.7a0097a4@redhat.com>
References: <CACn5sdRQaUEHfde5QzqnOSv829baMEgDBCN7n8rzzrb+1s2uMw@mail.gmail.com>
	<20150915180357.7a0097a4@redhat.com>
Message-ID: <CACn5sdScL+e_x+QH4wS-cUKaEAMhSSy-jjeKufXu53j6-as_HA@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a11369b58ff597f051fcb6a5e
Cc: cve-assign@mitre.org
Date: Tue, 15 Sep 2015 13:10:17 -0300
From: Gustavo Grieco <gustavo.grieco@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Heap overflow and DoS in unzip 6.0
To: oss-security@lists.openwall.com

--001a11369b58ff597f051fcb6a5e
Content-Type: text/plain; charset=UTF-8

2015-09-15 13:03 GMT-03:00 Stefan Cornelius <scorneli@redhat.com>:

> On Mon, 7 Sep 2015 08:57:20 -0300
> Gustavo Grieco <gustavo.grieco@gmail.com> wrote:
>
> > Hello,
> >
> > Two issues were found in unzip 6.0:
> >
> > * A heap overflow triggered by unzipping a file with password (e.g
> > unzip -p -P x sigsegv.zip)
> > * A denegation of service with a file that never finishes unzipping
> > (e.g. unzip sigxcpu.zip).
> >
> > Upstream is notified. Nevertheless the test cases as well as the
> > valgrind and the adress sanitizer reports of the heap overflow case
> > are attached (as a single file) in case someone wants to provide some
> > feedback. These issues were found with QuickFuzz.
> >
> > Regards,
> > Gustavo.
>
> Can CVEs be assigned?
>
> Thanks in advance,
>

AFAIK, upstream is still working on the heap overflow issue (the DoS is
fixed in the last unzip beta). In concrete, they said:

"My initial (quick) analysis suggested that the basic problem is
corrupt (unrealistic) Extra-Field sizes, which UnZip does not check well
enough. I need to verify that that is the cause, and then figure out
what to do about it. Currently, if the program sees an Extra-Field
length of, say, 0x1007, it tends to believe it, even if that's bigger
than the actual archive member's length (or perhaps even bigger than the
whole archive). If it actually tries to read data which haven't been
read, then valgrind gets upset (with good reason). At least that's what
I believe so far."



> --
> Stefan Cornelius / Red Hat Product Security
>

--001a11369b58ff597f051fcb6a5e--
