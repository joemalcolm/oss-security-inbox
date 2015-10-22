X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1412" "Thursday" "22" "October" "2015" "04:36:12" "+0000" "Loganaden Velvindron" "loganaden@gmail.com" "<CAOp4FwQrWjaDLeH9ZRi2L70-TE2oCjAPbvvbeRH9vbCxWmKMnQ@mail.gmail.com>" "36" "Re: [oss-security] Prime example of a can of worms" nil nil nil "10" "2015102204:36:12" "[oss-security] Prime example of a can of worms" (number mark "U       loganaden@gm Oct 22   36/1412  " thread-indent "\"Re: [oss-security] Prime example of a can of worms\"\n") "<CANO=Ty18_pMLco8RdabsEbhs9sLahRhT_U93PGhDVwhcRaqzpQ@mail.gmail.com>" ("<CANO=Ty18_pMLco8RdabsEbhs9sLahRhT_U93PGhDVwhcRaqzpQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32248 invoked by uid 550); 22 Oct 2015 04:36:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32219 invoked from network); 22 Oct 2015 04:36:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=WtHGi0cuYDVTRmxUGoQX5mjBmDegKRBe9pdmt7lYcg0=;
        b=umbnkG0v1/f/K35mD1eVmTJlgghFJWNqMDO7PzhZo5g/hwZbXqYKiffkfNofcF4Ftb
         y5dBO4rfUs1y07yhCA2PiUiC4/VxlafyR/vlkz6HZ/ELesPWGgszB1Oh0uid3GH8U3lH
         nOnFeeURc2GONhAh03uML3j6oeMMZBLCVjdE9WXvDw9ar5W4NFlZVF4tA73v7UFnbuzH
         hJ79v073+o0oGQ6Ki/H9dcPUdCx2yt6vO4q+HEn+Z1PFL5l+od9kWyqj207EAIkrK/u+
         MtXN9X2H0VgZzEPRuyw/k5Nywt+txJ3EZtHUpJvIxFqOSiBoimpaLxNRCJmf+lbj8YwS
         MZ7A==
MIME-Version: 1.0
X-Received: by 10.68.253.42 with SMTP id zx10mr14432584pbc.99.1445488572885;
 Wed, 21 Oct 2015 21:36:12 -0700 (PDT)
In-Reply-To: <CANO=Ty18_pMLco8RdabsEbhs9sLahRhT_U93PGhDVwhcRaqzpQ@mail.gmail.com>
References: <CANO=Ty18_pMLco8RdabsEbhs9sLahRhT_U93PGhDVwhcRaqzpQ@mail.gmail.com>
Date: Thu, 22 Oct 2015 04:36:12 +0000
Message-ID: <CAOp4FwQrWjaDLeH9ZRi2L70-TE2oCjAPbvvbeRH9vbCxWmKMnQ@mail.gmail.com>
From: Loganaden Velvindron <loganaden@gmail.com>
To: oss-security@lists.openwall.com
Cc: CVE ID Requests <cve-assign@mitre.org>
Content-Type: multipart/alternative; boundary=047d7b2e3d88e9f2e30522aa0883
Subject: Re: [oss-security] Prime example of a can of worms

--047d7b2e3d88e9f2e30522aa0883
Content-Type: text/plain; charset=UTF-8

On Mon, Oct 19, 2015 at 4:06 AM, Kurt Seifried <kseifried@redhat.com> wrote:

> So in light of:
>
> https://weakdh.org/imperfect-forward-secrecy-ccs15.pdf
>
> and
>
>
> https://www.eff.org/deeplinks/2015/10/how-to-protect-yourself-from-nsa-attacks-1024-bit-DH
>
> I would suggest we minimally have a conversation about DH prime security
> (e.g. using larger 2048 primes, and/or a better mix of primes to make
> pre-computation attacks harder). Generating good primes is not easy from
> what I've seen of several discussions, my fear would be that people try to
> fix this by finding new primes that turn out to be problematic.
>
> Secondly I would also suggest we seriously look at assigning a CVE to the
> use of suspected compromised DH primes. Despite the fact we don't have
> conclusive direct evidence (that I'm aware of, correct me if there is any
> conclusive evidence) I think in this case:
>
> 1) the attack is computationally feasible for an organization with
> sufficient funding
> 2) the benefit of such an attack far, far, FAR outweighs the cost for
> certain orgs, from the paper:
>
>
I think that it's important for organizations who are providing services
that are considered critical to the stability of the Internet to audit &
take corrective measures for all of their impacted services.

--047d7b2e3d88e9f2e30522aa0883--
