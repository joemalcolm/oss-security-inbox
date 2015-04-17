X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2476" "Friday" "17" "April" "2015" "12:19:09" "+0530" "Akhil Das" "akhil@sigmoidanalytics.com" "<CAHUQ+_YRowPyTAm1S5JYxYxX06O4Yxi6+yWMfCN4+eaiL3sF=A@mail.gmail.com>" "65" "[oss-security] Re: CVE Request: Arbitary Code Execution in Apache Spark Cluster" nil nil nil "4" "2015041706:49:09" "[oss-security] Re: CVE Request: Arbitary Code Execution in Apache Spark Cluster" (number mark "        akhil@sigmoi Apr 17   65/2476  " thread-indent "\"[oss-security] Re: CVE Request: Arbitary Code Execution in Apache Spark Cluster\"\n") "<20150416220530.E9FC03AE00F@smtpvbsrv1.mitre.org>" ("<CAHUQ+_bsF=VoOsFiF7jL4hzuJYU=E=XQW4z1SFHP5+mTubv+KA@mail.gmail.com>" "<20150416220530.E9FC03AE00F@smtpvbsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30255 invoked by uid 550); 17 Apr 2015 06:49:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30234 invoked from network); 17 Apr 2015 06:49:20 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=fxcvX0na3n1W36vA863iNZGHq+V8kKm5G36GMRw6wL4=;
        b=JrY0X/YNxMVmNnIapd3W4CefhOw7zf+f8I0kYoVgluu4TznvMBbszqXUbOY9OXZY3f
         WaXUcmXrp1mObruhOSQQgju8K77Ao4QCjxA4eIDZuuTTlyUxZ87vKaC62Tzzof3FGgmz
         OfmnfcQCdOrLzmsz6XEwjD0JrI3v9UgqAiCJqClwwAp+aJpWCzNieTIp8c7m3oaW92l6
         Dm83BsAHF+I7LrG8aoDPW6rTJRTn/CGrOgyD+ILwgmI4ix6gDvxi7okgp29P6GLDJ7KC
         XtxyBax8p8k0OandZbppuzcu2wSBqIWyb8r/sFiglImAkbAPk1M1PjWzyK/gznm/m8wr
         8wjg==
X-Gm-Message-State: ALoCoQkJ649YZTTKZ+DLnhvYGx+iglyaeKdQtkFVJFDoXpSh4NRzw2ElkhWMVAQ0adzE5+/J5gMh
MIME-Version: 1.0
X-Received: by 10.141.28.70 with SMTP id f67mr1842603qhe.0.1429253349376; Thu,
 16 Apr 2015 23:49:09 -0700 (PDT)
In-Reply-To: <20150416220530.E9FC03AE00F@smtpvbsrv1.mitre.org>
References: <CAHUQ+_bsF=VoOsFiF7jL4hzuJYU=E=XQW4z1SFHP5+mTubv+KA@mail.gmail.com>
	<20150416220530.E9FC03AE00F@smtpvbsrv1.mitre.org>
Message-ID: <CAHUQ+_YRowPyTAm1S5JYxYxX06O4Yxi6+yWMfCN4+eaiL3sF=A@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a1142375c2f1c420513e5fa33
Cc: oss-security@lists.openwall.com
Date: Fri, 17 Apr 2015 12:19:09 +0530
From: Akhil Das <akhil@sigmoidanalytics.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: Arbitary Code Execution in Apache Spark Cluster
To: cve-assign@mitre.org

--001a1142375c2f1c420513e5fa33
Content-Type: text/plain; charset=UTF-8

I see, thanks a lot for the response.

Thanks
Best Regards

On Fri, Apr 17, 2015 at 3:35 AM, <cve-assign@mitre.org> wrote:

> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA1
>
> >
> http://codebreach.in/blog/2015/03/arbitary-code-execution-in-unsecured-apache-spark-cluster/
>
> As far as we can tell, the essence of your report is related to:
>
>   http://spark.apache.org/docs/latest/configuration.html
>   Property Name: spark.authenticate
>   Default: false
>   Meaning: Whether Spark authenticates its internal connections.
>
> If a user downloads spark-1.3.0.tgz, they will find a README.md with:
>
>   Please refer to the [Configuration guide]
>   (http://spark.apache.org/docs/latest/configuration.html)
>   in the online documentation for an overview on how to configure
>   Spark.
>
> Also, because the product is advertised as a "general-purpose cluster
> computing system," we think that downloaders would typically have some
> experience in system or network administration, and should be able to
> recognize whether a trusted network exists for all "internal
> connections."
>
> It's conceivable that the documentation should be expanded to further
> discuss the risks of the default spark.authenticate value. MITRE is
> not going to assign a CVE ID for this. It is a judgment call for the
> upstream vendor. Because the upstream vendor has a process for
> assigning CVE IDs, we feel it would be simplest and best here to use
> that process, even if it is often not used in cases of publicly known
> vulnerabilities. See the security@apache.org address on the
> http://www.apache.org/security/committers.html page. It's their
> decision on how to proceed.
>
> - --
> CVE assignment team, MITRE CVE Numbering Authority
> M/S M300
> 202 Burlington Road, Bedford, MA 01730 USA
> [ PGP key available through http://cve.mitre.org/cve/request_id.html ]
> -----BEGIN PGP SIGNATURE-----
> Version: GnuPG v1.4.14 (SunOS)
>
> iQEcBAEBAgAGBQJVMDDEAAoJEKllVAevmvms7TAH/2VS+DAzJk77Z6bIa28/YNXh
> 3oErKwofEMfK7jOi0bUfglWGXRKRKA8RdyDq4TkCaoskP4buXDg/i411A8zwdoIb
> pxSO7ocq6LnpxmrMoNdOnU+6c9eEIYK/LbcLAPBXneQNt6XnNc7blTrAJAPM/tWU
> uApr3UyVNNG6W9SbeGz4tLkEPTbNBInEshpokWTn7n83iID9VvhKFJC6x4wCRb3q
> paRpxzg7N3AWjm0uSQu3UJRTpKEbyFCFt0rHn7DWVQ2fZlj4K7VXnkCNYzE1ssbZ
> S8iEhT09SKEg5sqqVN5vpuORfj7deoebnD9pbWTijUPcpXtuz/t7fYqbL+oaJ6Y=
> =mHRi
> -----END PGP SIGNATURE-----
>

--001a1142375c2f1c420513e5fa33--
