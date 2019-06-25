X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5821" "Tuesday" "25" "June" "2019" "12:15:01" "-0400" "Jeffrey Walton" "noloader@gmail.com" "<CAH8yC8kLrUt-nBszWUg2=p3mRekqV+983MvRuZUw6Eunqr5Z+w@mail.gmail.com>" "120" "Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" "^Date:" nil nil "6" "2019062516:15:01" "[oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" (number mark "U       noloader@gma Jun 25  120/5821  " thread-indent "\"Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz\"\n") "<alpine.GSO.2.20.1906250816590.2070@freddy.simplesystems.org>" ("<CAFRnB2UmyOiRV9fnMffcAtF4ruuJZwx=fg5X=hLbQjeFN=t3Bg@mail.gmail.com>" "<20190617113203.GH15432@suse.de>" "<CACT4Y+Zu1r10wKxjAbJqZ5rXc8eq5NRWjuNVPLHbwZGAem1OTg@mail.gmail.com>" "<alpine.GSO.2.20.1906241038470.23351@scrappy.simplesystems.org>" "<alpine.LRH.2.21.1906241152180.4597@fairfax.gathman.org>" "<E1hfSKS-00015J-V5@rmmprod07.runbox>" "<20190624193048.GA8039@espresso.pseudorandom.co.uk>" "<CAFRnB2XeQ-casQLm0MRCdRmQ5aeF9K=X3Km5eYg9DB6A915d5A@mail.gmail.com>" "<alpine.GSO.2.20.1906250816590.2070@freddy.simplesystems.org>") nil nil nil nil nil nil nil "Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11568 invoked by uid 550); 25 Jun 2019 16:41:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 10143 invoked from network); 25 Jun 2019 16:15:26 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to;
        bh=RFwcKgmskryvAcaf512U0DjikZlID599e6oEskQYJXI=;
        b=FsstX0uMcy1w+uxU4Z494G62DqWybkG9NNNwD+ZfmPMBTIPtIUNDYCpQTk8VEstSgf
         ySX9JpqhB3sdYfKoDfBRpvPpn4q3p9IMEZqYE7End1mZk6RXiuovRvmAuz5UXt2l3xhf
         JzZYJ+bVijbinTgGHF5G08vMg1SNyzeo7juxUUzof4yAQu3PAUHmDzwepOkY/voQhBdS
         1xjVR7fD4z02ORftq0LWRzWfC9MOGxkyzcm/bafodE56Jde7+q4zA90lKvOoBvYF/oOv
         scEPfVRvOk44IMDDUZJWBrkfSGRZozOyoNXg7/g5ffOt1HX4JFwJc78ZV3z8RT3IQMSP
         Pmgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to;
        bh=RFwcKgmskryvAcaf512U0DjikZlID599e6oEskQYJXI=;
        b=QJADPiWbPDNiIO/PTkM/n6m6yWiRQ2LZqRrx86fqIB4EaMbQVRtHkG4SeXvsyQeN4l
         013HroMPrVUL9/EiMnZm5IpB9FcyKtwh5D61kTBAGrOaN2X0dUs1RxRhgIXMJhFW6UYo
         iltpATx3S7riBFAAeJ8mFYOyLU1vDHCcUsx2YCtf/MigifPp5dc252tKldiqIbfTM4AT
         +5/N+laPyRx99am0hewiXoYOybDnHfJnzO5qJ0vW4+JN1HPg8xKVGTVoFS3mYou/qUnR
         6KnANA4l+s7l+/25ZswMwDuFr2QB9hf/0O2Sujnq9xwixr7Lc22kkIyQz3qLFy7FBxgD
         YDzQ==
X-Gm-Message-State: APjAAAX6XPbb394yayitAiP5v3QmiU10lezRqis/Drhri5GpQMnDVbSU
	b1qwPoIVkep2IwgE31kpnq6egkTP8YTWkHQYhxMRMoAQ
X-Google-Smtp-Source: APXvYqxFIKvPrwMC0fAEaaSdlya+aV4m5oJHUmphcHauaj/lwkwDD41wTFkrDRVRPOol7y7k3vkZhEYtR0haJwf+7bo=
X-Received: by 2002:a5d:9b1a:: with SMTP id y26mr44032070ion.238.1561479314889;
 Tue, 25 Jun 2019 09:15:14 -0700 (PDT)
MIME-Version: 1.0
References: <CAFRnB2UmyOiRV9fnMffcAtF4ruuJZwx=fg5X=hLbQjeFN=t3Bg@mail.gmail.com>
 <20190617113203.GH15432@suse.de> <CACT4Y+Zu1r10wKxjAbJqZ5rXc8eq5NRWjuNVPLHbwZGAem1OTg@mail.gmail.com>
 <alpine.GSO.2.20.1906241038470.23351@scrappy.simplesystems.org>
 <alpine.LRH.2.21.1906241152180.4597@fairfax.gathman.org> <E1hfSKS-00015J-V5@rmmprod07.runbox>
 <20190624193048.GA8039@espresso.pseudorandom.co.uk> <CAFRnB2XeQ-casQLm0MRCdRmQ5aeF9K=X3Km5eYg9DB6A915d5A@mail.gmail.com>
 <alpine.GSO.2.20.1906250816590.2070@freddy.simplesystems.org>
In-Reply-To: <alpine.GSO.2.20.1906250816590.2070@freddy.simplesystems.org>
Message-ID: <CAH8yC8kLrUt-nBszWUg2=p3mRekqV+983MvRuZUw6Eunqr5Z+w@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Date: Tue, 25 Jun 2019 12:15:01 -0400
From: Jeffrey Walton <noloader@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz
To: oss-security@lists.openwall.com

On Tue, Jun 25, 2019 at 9:42 AM Bob Friesenhahn
<bfriesen@simple.dallas.tx.us> wrote:
>
> On Mon, 24 Jun 2019, Alex Gaynor wrote:
> > - Not having sooooo many vulnerabilities. While there's some dispute over
> > just what % of the bugs that OSS-Fuzz and syzbot turn up are exploitable,
> > there's no doubt that they find a _lot_ of them. Even if only 20% of
> > OSS-Fuzz reports were truly exploitable vulnerabilities, that'd still be
> >> 600 of them. We can't produce this many vulnerabilities and then try to
> > clean up afterwards by finding them with fuzzing -- at some point the
> > number of vulnerabilities simply overwhelms us. Tactics for reducing
> > vulnerabilities in the first instance, like memory safe languages, are an
> > important part of making this problem tractable.
> >
> > Do folks feel like there were important themes that this misses?
>
> I see the assumption that 20% of oss-fuzz reports are exploitable
> vulnerabilities.  Where does this percentage estimate come from?  What
> does it mean to be "exploitable"?
>
> From working on fixing oss-fuzz detected bugs in GraphicsMagick I see
> that many/most of the issues are not significant from a security
> standpoint, assuming that the software is deployed in a way suitable
> for its level of exposure.  Common issues include:
>
>   * Huge uninitialized memory allocations (which do not really matter
>     under Linux since Linux does not reserve anything but virtual
>     memory space).
>
>   * Consumption of uninitialized data (e.g. image data) which is not
>     used to make important decisions.  This is usually due to unhandled
>     cases or error handling which does not quit immediately.
>
>   * Tiny heap over-reads which are not past the bounds of the
>     underlying allocation.
>
>   * Heap over-reads or over-writes which cause an immediate core dump.
>
>   * Excessively slow code with the slowness emphasized by ASAN and
>     UBSAN code running vastly slower.  The excessively slow code is not
>     necessarily noticeable in a normal compilation.
>
>   * Memory leaks.
>
>   * "undefined behavior" which nevertheless has a common behavior that
>     compilers have followed since the dawn of time.
>
> The most important thing that oss-fuzz contributes is a large
> collection of files which cause problems for unfixed software such
> that only the unaware or foolish do not update to fixed versions.

To play devil's advocate... and speaking from experience, as someone
who tries to acceptance test libraries and programs, and fix their
problems. I can name countless libraries here, but I'll continue using
ImageMagic as an example.

Everyone using ImageMagic must lower their standards to ImageMagic . I
think that's the wrong end of the stick. ImageMagic should be raising
its standards for the most discriminating users.

Here are a few reasons:

* economics - ImageMagic can fix a problem once in one place. Instead,
thousands of developers must fix it multiple times. For sake of
argument, assume a memory leak takes ImagcMagic 2 hours to fix and
test. Under the current economic model, ImagcMagic asks thousands of
developers to fix it at the cost of thousands of man hours. Sapienti
sat.

* pollution - findings produced by ImageMagic cross-pollinate into
user code which uses the library. Not only has ImageMagic failed its
audit, it has caused other programs to fail their audits, too.

* pride - take pride in your work. Everything should be written to
production quality, from core library code to test harnesses. There
should be no findings. It does not matter how you feel about the C or
C++ committee decisions since the world uses standards like C/C++.
Your personal views do not matter to other projects.

* leaks - memory leaks are one of the worse findings. Many claim it is
OK to leak because the program is exiting. In fact, GNU itself takes
this fuck'ed up position. Confer,
https://www.gnu.org/prep/standards/standards.html#Memory-Usage .

There are multiple problems with leaks. First, they break some
platforms like Android and .Net. Android and .Net load/unload
libraries hundred of times during the lifetime of the program. The
small leaks add up until all memory is exhausted. Just ask the OpenJDK
guys about this in libraries like OpenSSL.

Second, they cross-pollinate into other test results and cause others
to fail. Others are forced to fix the problem that should have been
fixed by the developers. This wastes enormous amounts of time.

Third, they literally break the testing pipeline. I can name at least
three GNU libraries and programs that cause the entire testing process
to grind to a halt because of Asan findings. For example, /bin/bash
will load an Asan instrumented /usr/local/lib/libconv, and that will
immediately break testing scripts because of Bash and iConvert leaks.
Keep in mind I may be testing another library, like cURL.

Worse, we cannot segregate the Asan instrumented libraries because the
glibc folks think it is a good idea to compile and link against one
version of a library, and then runtime link against the wrong version
of the library. There is no way to set a policy that says, "programs
in /bin must only link against libraries in /lib".

The idiots who think it is a good idea to link against the wrong
library at runtime should get a Darwin award. Not for the initial
decision - mistakes are expected. They should get it for allowing the
problem to fester for 20 years.

Library maintainers need to fix their programs and libraries so the
testing pipeline always "just works". I know it can be done because
programs and libraries like Botan, cURL and Crypto++ do it. As far as
I know, you cannot find a test that will break them. That means
programs that use them can actually be tested instead of the testing
pipeline grinding to a halt.

Jeff
