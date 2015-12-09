X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2600" "Wednesday" "9" "December" "2015" "14:15:34" "-0700" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty2gYBsn7nT8=QyaS=ReZr=khgcT4TTvxp_SqcgOi5Rjew@mail.gmail.com>" "69" "[oss-security] Re: CVE for git issue - please use CVE-2015-7545" "^Cc:" nil nil "12" "2015120921:15:34" "[oss-security] Re: CVE for git issue - please use CVE-2015-7545" (number mark "        kseifried@re Dec  9   69/2600  " thread-indent "\"[oss-security] Re: CVE for git issue - please use CVE-2015-7545\"\n") "<DM2PR09MB027022D8FA55B820E2975AF0CCE80@DM2PR09MB0270.namprd09.prod.outlook.com>" ("<CANO=Ty2buv0k_vfSBuQGKV60NmJM6T=VjUgmh7EvqisKyRHGng@mail.gmail.com>" "<DM2PR09MB027022D8FA55B820E2975AF0CCE80@DM2PR09MB0270.namprd09.prod.outlook.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24342 invoked by uid 550); 9 Dec 2015 21:15:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24315 invoked from network); 9 Dec 2015 21:15:47 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=EFtRBhszput5oymkwv1xz/l/u26uiuumB7n+hF/1Jjo=;
        b=FaPoQCoN86UgEpbXfpVa0jyh7B2aRE2Br3r4obDmvi+OXpjdOTMZIhYTJ2ooGe4osI
         KtsKWRUd5nVA2nvB7zijgnsta2uO/J8kXs/2dozFFW6EMZEg61ZFcomvw9++pU2AYdI3
         neqNgyx0GeTqmt1hDvp8RuLMZ5+s6qW0jjSQmGUQxMuM5FhwaxyVxCSbUlvMz+SixZc1
         Dft/j6ThdaiX06+cxkNxtmZTsRTZ/osl9W+5PorlszggLGHYhdiMKFRoYdPEG8XvGHQo
         t7oTu8Cb5MlBQe2yQOs6IgF5douu1dBPbQbdjm1+IiArIH9d+gxMpxuvXbFqg0RO82bT
         xXBw==
X-Gm-Message-State: ALoCoQnjlOHFNjFxSYk/p9vqb9Hy/1ecB+atR0fnI4vsZnRta8fE6lrBmyrANnwmf8PvbGXGsRvnGYEaNG3Kc7oBm+tuMkf5aRZ2GZq4Zz8wibpp89x7/pY=
MIME-Version: 1.0
X-Received: by 10.129.133.2 with SMTP id v2mr2207667ywf.76.1449695735073; Wed,
 09 Dec 2015 13:15:35 -0800 (PST)
In-Reply-To: <DM2PR09MB027022D8FA55B820E2975AF0CCE80@DM2PR09MB0270.namprd09.prod.outlook.com>
References: <CANO=Ty2buv0k_vfSBuQGKV60NmJM6T=VjUgmh7EvqisKyRHGng@mail.gmail.com>
	<DM2PR09MB027022D8FA55B820E2975AF0CCE80@DM2PR09MB0270.namprd09.prod.outlook.com>
Message-ID: <CANO=Ty2gYBsn7nT8=QyaS=ReZr=khgcT4TTvxp_SqcgOi5Rjew@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a114f1e8852883b05267d97a4
Cc: oss-security <oss-security@lists.openwall.com>, CVE ID Requests <cve-assign@mitre.org>
Date: Wed, 9 Dec 2015 14:15:34 -0700
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE for git issue - please use CVE-2015-7545
To: "Evans, Jonathan L." <jevans@mitre.org>

--001a114f1e8852883b05267d97a4
Content-Type: text/plain; charset=UTF-8

I'm pretty sure people expect git recursive fetch to result in data being
fetched (potentially quite a lot) but that it does NOT result in arbitrary
command/code execution. As such (the potential for remote code execution)
we feel this is a security issue, hence the security updates from Red Hat.



On Wed, Dec 9, 2015 at 1:26 PM, Evans, Jonathan L. <jevans@mitre.org> wrote:

> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA1
>
> We are not certain if the assignment of CVE-2015-7545 is correct.  The
> vendor
> may not officially support the "blindly enable recursive fetch" scenario,
> i.e.
> the user is expected to accept the risk of executing a recursive fetch
> from an
> untrusted source, and the change should be considered a security hardening
> feature for the convenience of their users.
>
> MITRE has been actively working with the upstream vendor to determine the
> appropriate number of CVEs for the vulnerabilities.  There was no
> oss-security
> post from us because the context of MITRE's work was related to previous
> private
> communication from and to the upstream vendor.
>
> In the future, we plan to respond quickly to requests like the initial one,
> asking the requester for the appropriate information needed to assign a
> CVE ID.
>
> - --
> Jonathan Evans
> CVE assignment team, MITRE CVE Numbering Authority M/S M300
> 202 Burlington Road, Bedford, MA 01730 USA [ PGP key available through
> http://cve.mitre.org/cve/request_id.html ]
> -----BEGIN PGP SIGNATURE-----
> Version: GnuPG v1
>
> iQIcBAEBAgAGBQJWaI5KAAoJEL54rhJi8gl5WDsQAL1khrVZkPxjgxauyLhaaPKA
> +zQogmqLzJmAlx6JNj5ehKNvSkPFX9J4TzJ7IyYdEiVaeoUvbWJHu+CCNfmsiEXv
> jmMDCfMOTeHUhHBi0DaeAklspzN11a78m+y4LV1ixB2/75PRHapNR36Ff2OLB6L0
> PDCW3Kwl0QBRWg+ezF4SeOfJNqCYUaat6oW16wgL33b1NTPveP7Iop0INHwb/ebd
> UEak3vZTeHowT0IP0/5wbUyqEmYXONvUuXfRvLuQQzVL2qfValAN6KMbFq2mjYEm
> SeGj9uNTBf16ATF/BboN3IWElBtGLfIwY3Rleu8NtMmKruR8rEP9tqDZKdnZI50K
> +c6S3sdqlfzc8F2m99dGE5FuXe/qY0WfALo8vDgNs58zR5uh23rIIGZwgU4zxl32
> V71ssQr/hbfxen8u3ZJ258bRVmhh8SFyykKznYdC0iq1Zf58oIwmUgja5AbNNkqI
> 39jeBeAVrdmmMIMrrw+hYDRRFcRXHRkGM95gMCSjBSHY68/duKfN+G3CIRntxtek
> /Cu3IIy50FybOfOERdy+NBsQV8yK2LR+PXWXMmik0JgYMRXkwH6zSf5opbwGDWQb
> 0nI+HIKSUXdmjGHyVE8YqgeFcb52W9+EbdybuRkdbZq09rUWUr94FPjR73VNA8Yj
> 755moYSPJKuOLPJK33pi
> =IV1v
> -----END PGP SIGNATURE-----
>



-- 

--
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--001a114f1e8852883b05267d97a4--
