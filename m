X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1239" "Monday" "22" "August" "2016" "10:16:30" "+0200" "Cedric Buissart" "cbuissar@redhat.com" "<CAKG8Do6pS1wRkC2YTU_btNED5Zhc71uchaC6g=FU4CrzUzt1Vw@mail.gmail.com>" "53" "[oss-security] Re: CVE-2016-5404 freeipa: Insufficient privileges check in certificate revocation" nil nil nil "8" "2016082208:16:30" "[oss-security] Re: CVE-2016-5404 freeipa: Insufficient privileges check in certificate revocation" (number mark "U       cbuissar@red Aug 22   53/1239  " thread-indent "\"[oss-security] Re: CVE-2016-5404 freeipa: Insufficient privileges check in certificate revocation\"\n") "<CAKG8Do5ebwd1h2XAEYntLh0k4oes5pLRR0UOw2nEVwNFLhk3dg@mail.gmail.com>" ("<CAKG8Do5ebwd1h2XAEYntLh0k4oes5pLRR0UOw2nEVwNFLhk3dg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7785 invoked by uid 550); 22 Aug 2016 08:16:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7756 invoked from network); 22 Aug 2016 08:16:43 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=aheOgKKEqqQ/u5FC5Dwna89SFSIi0wobIyYfdvas3lI=;
        b=AdTt+JZJ946CvSgyz9MPuD/h9iHJoHU24yG7PHeSZJUZv8IQIuT9SHHQG8tPDoCyuR
         qgpDmaUAY4YxMBY632ksylx1BJZsfmXOb1ty2oRU6U32KRww/7Jq0hcu29ypP+rtgAOH
         Rs3R7byC+0YD/0beR/FtbMGE2sHXRV8P9ql9vA/caevBFBwq/QS4s4HUYiQkN+V/wG4w
         L7Kg4ZsVBxfqc3t0nAo0MG6Sy1dYmyhIruiav4/59ywxeKV4KLS5wHN84NYvgjyhNSou
         R8wuDbeYdiEzrfdDpCPm8CADpYQKB+mSP63fNnWOp2CXHPbbHZyoNKDZqWuYQyx3mFSU
         Qnng==
X-Gm-Message-State: AEkooutBeuzGDwRAzUrysT/ajWMHoKLlsT2gox/xSAPzASSRiwfoog/1RNtaGDxJ+IT2BCziJhRwdYDiqO0lOBzI
X-Received: by 10.66.14.161 with SMTP id q1mr40376551pac.103.1471853791217;
 Mon, 22 Aug 2016 01:16:31 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAKG8Do5ebwd1h2XAEYntLh0k4oes5pLRR0UOw2nEVwNFLhk3dg@mail.gmail.com>
References: <CAKG8Do5ebwd1h2XAEYntLh0k4oes5pLRR0UOw2nEVwNFLhk3dg@mail.gmail.com>
From: Cedric Buissart <cbuissar@redhat.com>
Date: Mon, 22 Aug 2016 10:16:30 +0200
Message-ID: <CAKG8Do6pS1wRkC2YTU_btNED5Zhc71uchaC6g=FU4CrzUzt1Vw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=bcaec51f9709631f1a053aa4aae8
Subject: [oss-security] Re: CVE-2016-5404 freeipa: Insufficient privileges check in
 certificate revocation

--bcaec51f9709631f1a053aa4aae8
Content-Type: text/plain; charset=UTF-8

Patch for this incident is now upstream.
For the master branch commit :
https://git.fedorahosted.org/cgit/freeipa.git/commit/?id=cf74584d0f772f3f5eccc1d30c001e4212a104fd

Other branches have been fixed too.

Regards,

Cedric

On Wed, Aug 17, 2016 at 7:30 PM, Cedric Buissart <cbuissar@redhat.com>
wrote:

> Hi,
>
> This is to disclose the following CVE:
>
> CVE-2016-5404 freeipa: Insufficient privileges check in certificate
> revocation
>
> Description :
> An insufficient permission check issue was found in the way IPA server
> treats certificate revocation requests. An attacker logged in with the
> 'retrieve certificate' permission enabled could use this flaw to revoke
> certificates, possibly triggering a denial of service attack.
>
> All versions are affected.
>
> Patches can be found on the corresponding Red Hat Bugzilla:
> https://bugzilla.redhat.com/show_bug.cgi?id=CVE-2016-5404
>
> Impact: Moderate
> CVSS3 scoring : 4.3 CVSS:3.0/AV:N/AC:L/PR:L/UI:N/S:U/C:N/I:N/A:L
>
> Reported by: Fraser Tweedale (Red Hat)
>
> Best Regards,
>
> --
> Cedric Buissart,
> Product Security
>



-- 
Cedric Buissart,
Product Security

--bcaec51f9709631f1a053aa4aae8--
