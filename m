X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2234" "Monday" "4" "January" "2021" "14:27:59" "+0100" "Mauro Matteo Cascella" "mcascell@redhat.com" "<CAA8xKjUGZPdrDvpisd4YpJfwL1wUMbr5KiM7x_SCNetAsLU8Ww@mail.gmail.com>" "64" "[oss-security] Re: [dpdk-dev] [oss-security] DPDK security advisory for multiple vhost crypto issues" nil nil nil "1" "2021010413:27:59" "[oss-security] Re: [dpdk-dev] [oss-security] DPDK security advisory for multiple vhost crypto issues" (number mark "U       mcascell@red Jan  4   64/2234  " thread-indent "\"[oss-security] Re: [dpdk-dev] [oss-security] DPDK security advisory for multiple vhost crypto issues\"\n") "<69a35308-0697-780d-8e72-422c7a2173d8@intel.com>" ("<73386a14-6e5a-83e4-051d-125b5c5fe5d9@intel.com>" "<CAA8xKjULPZw04YY9fd1d83893mmqXX_qp1UjRZdAWP7fU3yC_A@mail.gmail.com>" "<69a35308-0697-780d-8e72-422c7a2173d8@intel.com>") nil nil nil nil nil nil nil "[oss-security] Re: [dpdk-dev] [oss-security] DPDK security advisory for multiple vhost crypto issues" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 6072 invoked by uid 550); 4 Jan 2021 13:34:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3752 invoked from network); 4 Jan 2021 13:28:26 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1609766894;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=/j5/gKF6B7E7RPrIWM3yA5sk3z0EwdaIj83fePF94wE=;
	b=MMxKa8afJJvffUi/ugIY11w1RDrW4KTlvsWK7ERP0iQJZm4BS79NaTNTrh1zfggJpanNHR
	JiuBfi2iCVJn24PXLHqMoly+ndajOdvkYVCzP+B57qOJY2uPCU1GiFAphLOsQjnjJZUAmz
	2i30oYBUiRGNjX2yTMTJXtUE9teZ+48=
X-MC-Unique: kA4ZTmlHM0uNvNdBTLPODg-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=/j5/gKF6B7E7RPrIWM3yA5sk3z0EwdaIj83fePF94wE=;
        b=qHJZaQKxfGVhtH7PnCRIPDT2Lmd1P8CFu/gKOTsReTCP0mM6E/sPodkc0vllvnmepZ
         +jmkNvvgP8qTgTmXO9cuhHQBltUht8LSmvVj/PGcclFKEHnqSLxIttmi5Z1LkGjo/WEX
         YKw5yWKJKHIyr+H+bmUEbIHlrtZHEZxe3nAKhDvgLfKpuQ/O/oETmLymwDFqXLxS4lYz
         lIY6Hk4HhWGD101/LYPvT8L0OcfwUhkZk241btonp2uj9Ngui7P7wsMdi+ltOGDUm80x
         6TqabVt3HPGakNsNCk/baRYn8zy2OHaa0TjCN5Pji0b3hlmgfxciwgYXYY7UIYlxZI7k
         +ZmQ==
X-Gm-Message-State: AOAM5316yXFR9MQanNnt2EzDdhFpCLXn6wgUkCjOpXKgQNNwCFKMe/gg
	OD1Umc3VSTFhYZFUy+c7xjlx3LxCXs1vkGPP6JpzC6xKYX/lBgqAe+1NlSfQD0iKm/P4Y+l9cCA
	l2egFD2jVvl6Vebn8G+NpJgOAFNHblqkUEmmXSC1VQPQO
X-Received: by 2002:a50:fb97:: with SMTP id e23mr72618933edq.208.1609766890782;
        Mon, 04 Jan 2021 05:28:10 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyS4p2NXKeO+Cj2jebXSieWHUT9GkSTo0np1SFJE7E8GPFKJDPHW66l1g1CECw7HKSfzjIT9NHioBkERwrxL5E=
X-Received: by 2002:a50:fb97:: with SMTP id e23mr72618922edq.208.1609766890634;
 Mon, 04 Jan 2021 05:28:10 -0800 (PST)
MIME-Version: 1.0
References: <73386a14-6e5a-83e4-051d-125b5c5fe5d9@intel.com>
 <CAA8xKjULPZw04YY9fd1d83893mmqXX_qp1UjRZdAWP7fU3yC_A@mail.gmail.com> <69a35308-0697-780d-8e72-422c7a2173d8@intel.com>
In-Reply-To: <69a35308-0697-780d-8e72-422c7a2173d8@intel.com>
From: Mauro Matteo Cascella <mcascell@redhat.com>
Date: Mon, 4 Jan 2021 14:27:59 +0100
Message-ID: <CAA8xKjUGZPdrDvpisd4YpJfwL1wUMbr5KiM7x_SCNetAsLU8Ww@mail.gmail.com>
To: Ferruh Yigit <ferruh.yigit@intel.com>
Cc: oss-security@lists.openwall.com, security@dpdk.org, 
	security-prerelease@dpdk.org, "dev@dpdk.org" <dev@dpdk.org>, 
	Ryan Hall <ryan.e.hall@intel.com>
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=mcascell@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] Re: [dpdk-dev] [oss-security] DPDK security advisory for multiple
 vhost crypto issues

On Mon, Jan 4, 2021 at 12:29 PM Ferruh Yigit <ferruh.yigit@intel.com> wrote:
>
> On 1/4/2021 8:28 AM, Mauro Matteo Cascella wrote:
> > Hello,
> >
> > Is there any particular reason for the Scope metric to be Unchanged
> > (S:U) for CVE-2020-14377 and CVE-2020-14378?
> >
>
> removed dpdk-announce mail list
>
> Hi Mauro,
>
> CVE-2020-14377, the memory over read is in the scope of the same application,
> that is the reason of the unchanged scope. There is another CVE below that can
> use this information to figure out where to overwrite for remote execution which
> has scope set as 'Changed'.
>
> CVE-2020-14378, can cause loop taken longer time and delays the service, since
> it is eating the core cycles, if there is something else using that specific
> core technically it may delay it too, but DPDK mostly uses all core for itself
> and since mainly the vhost crypto service is affected, scope selected as Unchanged.
>
> Is there a concern on the selected scope metric?
>
> Thanks.
>

Thank you for the timely reply. With regard to CVE-2020-14377, the
Scope metric was rated differently by NIST [1] hence my initial
question.

[1] https://nvd.nist.gov/vuln/detail/CVE-2020-14377

> > On Mon, Sep 28, 2020 at 5:43 PM Ferruh Yigit <ferruh.yigit@intel.com> wrote:
> >>
> >> A set of vulnerabilities are fixed in DPDK:
> >> - CVE-2020-14374
> >> - CVE-2020-14375
> >> - CVE-2020-14376
> >> - CVE-2020-14377
> >> - CVE-2020-14378
> >>
> >> Some downstream stakeholders were warned in advance in order to coordinate the
> >> release of fixes and reduce the vulnerability window.
> >>
> >> Problem:
> >> A malicious guest can harm the host using vhost crypto, this includes
> >> executing code in host (VM Escape), reading host application memory
> >> space to guest and causing partially denial of service in the host.
> >>

>From the problem statement above I assume all these CVEs lead to some
kind of guest-to-host compromise, which usually implies a Scope change
(or at least, this holds true for QEMU flaws). Therefore I was
wondering what's the reason behind the different evaluation of the
Scope metric between CVE-2020-14377 and the others.

Regards.
--
Mauro Matteo Cascella
Red Hat Product Security
PGP-Key ID: BB3410B0

