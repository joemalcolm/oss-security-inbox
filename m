X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1446" "Tuesday" "6" "October" "2020" "23:17:56" "+1100" "Michael Ellerman" "mpe@ellerman.id.au" "<87lfgj35vv.fsf@mpe.ellerman.id.au>" "57" "Re: [oss-security] CVE-2020-25641 kernel: soft lockup when submitting zero length bvecs." "^Date:" nil nil "10" "2020100612:17:56" "[oss-security] CVE-2020-25641 kernel: soft lockup when submitting zero length bvecs." (number mark "        mpe@ellerman Oct  6   57/1446  " thread-indent "\"Re: [oss-security] CVE-2020-25641 kernel: soft lockup when submitting zero length bvecs.\"\n") "<20200930063254.GB1474755@kroah.com>" ("<CALJHwhTWAWPjfWD1nLho+zxXneEt_CCbYFROJY=trcDvqsA7uw@mail.gmail.com>" "<20200930063254.GB1474755@kroah.com>") nil nil nil nil nil nil nil "Re: [oss-security] CVE-2020-25641 kernel: soft lockup when submitting zero length bvecs." nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30227 invoked by uid 550); 6 Oct 2020 13:36:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1404 invoked from network); 6 Oct 2020 12:18:15 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ellerman.id.au;
	s=201909; t=1601986682;
	bh=EEffFzJJ2fn89RnvwmOnMH7fkFYVOXEOJh/+AWzCNnk=;
	h=From:To:Subject:In-Reply-To:References:Date:From;
	b=pb9h6eLEv70Pc3Q/oyFRF1loD1wm4YglnMsRDtXQTt7dtqd0QgChNEqsCvSqfbrIP
	 r7AQA9Y3Z5ts1WRObnpA4V32fLfhLFRFId+mxN8fFCTS5Y9l99wU1zbagxLDQ2pa/v
	 m4SpFcBJecJrULQwbJN9t+fDCtx070oMh1PRlKORmChL2tc3LpCRpTJuP7NfC81nK+
	 vvBpCGyPEju5ON2BPK3S4c+P8rxV6z6w3p1w4o/kzAhgNDicras3VYYJjTXVjxLuzb
	 yYNPBu1jr1keuqTdkXjDD8PdgWJ6ZmJQnv0mDdGiO7YzmhuZ7NI69Xc2kWX+tkJHE3
	 C6futByesse6g==
In-Reply-To: <20200930063254.GB1474755@kroah.com>
References: <CALJHwhTWAWPjfWD1nLho+zxXneEt_CCbYFROJY=trcDvqsA7uw@mail.gmail.com> <20200930063254.GB1474755@kroah.com>
Message-ID: <87lfgj35vv.fsf@mpe.ellerman.id.au>
MIME-Version: 1.0
Content-Type: text/plain
Date: Tue, 06 Oct 2020 23:17:56 +1100
From: Michael Ellerman <mpe@ellerman.id.au>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2020-25641 kernel: soft lockup when submitting zero length bvecs.
To: Greg KH <greg@kroah.com>, oss-security@lists.openwall.com

Greg KH <greg@kroah.com> writes:
> On Wed, Sep 30, 2020 at 10:35:56AM +1000, Wade Mealing wrote:
>> Gday,
>> 
>> A flaw was found in the Linux kernels implementation of biovec usage.  A
>> zero-length biovec request issued to the block subsystem could cause the
>> kernel to enter an infinite loop causing a denial of service. An attacker
>> with a local account can issue requests to a block device can cause a
>> denial of service.
>> 
>> This has been assigned CVE-2020-25641,
>> 
>> According to the fix commits "Introduced in":
>> # git tag --contains 1bdc76aea115 | head -n 1
>> v4.10
>
> That's odd, and not the best way to do this, the commit really showed up
> in 4.8-rc1:
> 	$ git describe --contains 1bdc76aea115
> 	v4.8-rc1~162^2~21
>
> You forgot to sort by "version", which is what you need to do if you
> want to try to look at tags, but then it's still a bit off:
> 	$ git tag --contains 1bdc76aea115 | sort -V | head -n 10
> 	v4.8
> 	v4.8-rc1
> 	v4.8-rc2
> 	v4.8-rc3
> 	v4.8-rc4
> 	v4.8-rc5
> 	v4.8-rc6
> 	v4.8-rc7
> 	v4.8-rc8
> 	v4.9

Git can do the sorting for you with --sort.

And if you have other tags in your repo that can confuse things, so
specifying that you want "v*" tags avoids that.

eg:

$ git tag -l "v*" --sort=v:refname --contains 1bdc76aea115 | head -n 10
v4.8
v4.8-rc1
v4.8-rc2
v4.8-rc3
v4.8-rc4
v4.8-rc5
v4.8-rc6
v4.8-rc7
v4.8-rc8
v4.9

Obviously for ease of use you want that in an alias or script.

cheers
