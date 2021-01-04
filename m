X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3894" "Monday" "4" "January" "2021" "09:28:09" "+0100" "Mauro Matteo Cascella" "mcascell@redhat.com" "<CAA8xKjULPZw04YY9fd1d83893mmqXX_qp1UjRZdAWP7fU3yC_A@mail.gmail.com>" "122" "Re: [oss-security] DPDK security advisory for multiple vhost crypto issues" nil nil nil "1" "2021010408:28:09" "[oss-security] DPDK security advisory for multiple vhost crypto issues" (number mark "U       mcascell@red Jan  4  122/3894  " thread-indent "\"Re: [oss-security] DPDK security advisory for multiple vhost crypto issues\"\n") "<73386a14-6e5a-83e4-051d-125b5c5fe5d9@intel.com>" ("<73386a14-6e5a-83e4-051d-125b5c5fe5d9@intel.com>") nil nil nil nil nil nil nil "Re: [oss-security] DPDK security advisory for multiple vhost crypto issues" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15572 invoked by uid 550); 4 Jan 2021 12:18:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26130 invoked from network); 4 Jan 2021 08:28:47 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1609748915;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=PqM1yq7bA5siaRa4arFQbz1E7yubIeBKZWpKl4PZh2g=;
	b=d+xl+pvEY4/Ntpu5936hC64kSFExsy9VnU6yngLvsWTw3VBn4Lxz+OZwuOzQxKg+MuEzmd
	nC1cnF8+jF4ha4voDJcLFFnYZFc7mqHMruksPdTtdqsdFA9f9+iMtQ/Fl9/FKO4AdPR3y2
	QfncsSKpcc0/c1yWdgdSuXbfWe4uQRc=
X-MC-Unique: y9mMTWrtMkiZlds5LlULkA-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=PqM1yq7bA5siaRa4arFQbz1E7yubIeBKZWpKl4PZh2g=;
        b=BOTzpzMC2gBOOioco8h04DQD32mUevl/FKTf3HgbwWKS51ZvmQDMGT21IUyEDd1j3D
         MRll4GnKq2Gn9ZarDlHkOAeWfdkdSSK8FzxShDUK5MfpuxuwMESn4w/o1OaDQCDS1F5t
         eYLND1hA50SS8MPZk+SKwfrmzy8J6iRnwolhET+Qw7HI+/vtyyGwZeatCy1CDTQx4HKs
         RzMOCwWhyz9qEq9xvK5tFrzzpUOxbKfIilJQDkSDz7KdS20X4hxrHG2HF17hdkg1HUIz
         RNIok7A52+Frey6g3hJpLw+JKXSmIcM3XE6kULLxSwQ2gySkL+jK9+tbDHkC/YIHn4K7
         R+gg==
X-Gm-Message-State: AOAM5306SbRLl/ZdGq5F7hTWLnwo5HfOL7FYncKLDnkB+Jk0m3PvdlAC
	fR+dJRL8QYnbIAZO8xwNkGNf7ivYam3Cb6aDxIAYZMqBxL51vKuPqrCJZ7X4SA/tm9y02IdDRIN
	YWuFD8uVyOZAE3yoqw6bYKYpPl792s9zqV4Gw+TXhXr7I
X-Received: by 2002:a05:6402:307c:: with SMTP id bs28mr70498907edb.186.1609748899842;
        Mon, 04 Jan 2021 00:28:19 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxn5MPVkhc9zTJFprRBFoWFOoue9baX3a5c1v8X4zbDhHxUtUYIKY8dm76Q6u5kMZBJ8QyD7VoFfLbcteKM0kk=
X-Received: by 2002:a05:6402:307c:: with SMTP id bs28mr70498899edb.186.1609748899625;
 Mon, 04 Jan 2021 00:28:19 -0800 (PST)
MIME-Version: 1.0
References: <73386a14-6e5a-83e4-051d-125b5c5fe5d9@intel.com>
In-Reply-To: <73386a14-6e5a-83e4-051d-125b5c5fe5d9@intel.com>
From: Mauro Matteo Cascella <mcascell@redhat.com>
Date: Mon, 4 Jan 2021 09:28:09 +0100
Message-ID: <CAA8xKjULPZw04YY9fd1d83893mmqXX_qp1UjRZdAWP7fU3yC_A@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: dpdk-announce <announce@dpdk.org>, security@dpdk.org, security-prerelease@dpdk.org, 
	"dev@dpdk.org" <dev@dpdk.org>
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=mcascell@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] DPDK security advisory for multiple vhost crypto issues

Hello,

Is there any particular reason for the Scope metric to be Unchanged
(S:U) for CVE-2020-14377 and CVE-2020-14378?

Thank you,

On Mon, Sep 28, 2020 at 5:43 PM Ferruh Yigit <ferruh.yigit@intel.com> wrote:
>
> A set of vulnerabilities are fixed in DPDK:
> - CVE-2020-14374
> - CVE-2020-14375
> - CVE-2020-14376
> - CVE-2020-14377
> - CVE-2020-14378
>
> Some downstream stakeholders were warned in advance in order to coordinate the
> release of fixes and reduce the vulnerability window.
>
> Problem:
> A malicious guest can harm the host using vhost crypto, this includes
> executing code in host (VM Escape), reading host application memory
> space to guest and causing partially denial of service in the host.
>
> All users of the vhost library are strongly encouraged to upgrade as soon as
> possible.
>
> Thanks to "Ryan Hall <ryan.e.hall@intel.com>" for reporting the issues.
>
>
> Stable releases download links:
>
> DPDK 18.11.10 (LTS)
> http://fast.dpdk.org/rel/dpdk-18.11.10.tar.xz
>
> DPDK 19.11.5 (LTS)
> https://fast.dpdk.org/rel/dpdk-19.11.5.tar.xz
>
>
> Details:
>
> CVE: CVE-2020-14374
> Bugzilla: https://bugs.dpdk.org/show_bug.cgi?id=272
> Severity: 8.8 (High)
> CVSS scores: CVSS:3.0/AV:L/AC:L/PR:L/UI:N/S:C/C:H/I:H/A:H
> Summary : Remote Code Execution in vhost_crypto (VM Escape)
> Reporter: Ryan Hall <ryan.e.hall@intel.com>
>
> CVE: CVE-2020-14375
> Bugzilla: https://bugs.dpdk.org/show_bug.cgi?id=272
> Severity: 7.8 (High)
> CVSS scores: CVSS:3.0/AV:L/AC:H/PR:L/UI:N/S:C/C:H/I:H/A:H
> Summary : Time-of-check time-of-use vulnerabilities throughout vhost_crypto.c
> Reporter: Ryan Hall <ryan.e.hall@intel.com>
>
> CVE: CVE-2020-14376
> Bugzilla: https://bugs.dpdk.org/show_bug.cgi?id=272
> Severity: 7.8 (High)
> CVSS scores: CVSS:3.0/AV:L/AC:H/PR:L/UI:N/S:C/C:H/I:H/A:H
> Summary : Buffer overflow copying iv_data from guest to
>            host(prepare_sym_cipher_op & prepare_sym_chain_op)
> Reporter: Ryan Hall <ryan.e.hall@intel.com>
>
> CVE: CVE-2020-14377
> Bugzilla: https://bugs.dpdk.org/show_bug.cgi?id=272
> Severity: 7.1 (High)
> CVSS scores: CVSS:3.0/AV:L/AC:L/PR:L/UI:N/S:U/C:H/I:N/A:H
> Summary: write_back_data buffer over read (cipher->para.dst_data_len &
>           desc->len)
> Reporter: Ryan Hall <ryan.e.hall@intel.com>
>
> CVE: CVE-2020-14378
> Bugzilla: https://bugs.dpdk.org/show_bug.cgi?id=272
> Severity: 3.3 (Low)
> CVSS scores: CVSS:3.0/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:N/A:L
> Summary : Partial Denial of Service due to Integer Underflow
> Reporter: Ryan Hall <ryan.e.hall@intel.com>
>
>
> Commits:
> main repo (will be 20.11.0)
> https://git.dpdk.org/dpdk/commit/?id=57680e34498
> https://git.dpdk.org/dpdk/commit/?id=5677e68c05d
> https://git.dpdk.org/dpdk/commit/?id=b2866f47336
> https://git.dpdk.org/dpdk/commit/?id=409c47c7c5b
> https://git.dpdk.org/dpdk/commit/?id=e15b7c01120
> https://git.dpdk.org/dpdk/commit/?id=2d962bb7365
>
> DPDK 18.11.10 (LTS)
> https://git.dpdk.org/dpdk-stable/commit/?h=18.11&id=ab6314978567
> https://git.dpdk.org/dpdk-stable/commit/?h=18.11&id=7a5af91f8bf4
> https://git.dpdk.org/dpdk-stable/commit/?h=18.11&id=7e7c75edc635
> https://git.dpdk.org/dpdk-stable/commit/?h=18.11&id=ff65dc28bc71
> https://git.dpdk.org/dpdk-stable/commit/?h=18.11&id=75f8df70a2c8
> https://git.dpdk.org/dpdk-stable/commit/?h=18.11&id=6e8a4da39e68
>
> DPDK 19.11.5 (LTS)
> https://git.dpdk.org/dpdk-stable/commit/?h=19.11&id=3f2635c5a9c3
> https://git.dpdk.org/dpdk-stable/commit/?h=19.11&id=81e969483020
> https://git.dpdk.org/dpdk-stable/commit/?h=19.11&id=e4a7c14f0248
> https://git.dpdk.org/dpdk-stable/commit/?h=19.11&id=319b498e4b16
> https://git.dpdk.org/dpdk-stable/commit/?h=19.11&id=6a3a414698e4
> https://git.dpdk.org/dpdk-stable/commit/?h=19.11&id=e2666ec24535
>
> --
> DPDK Security Team
> http://core.dpdk.org/security/
>
>
>
>
>
>
>
>


-- 
Mauro Matteo Cascella
Red Hat Product Security
PGP-Key ID: BB3410B0

