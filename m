X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2317" "Tuesday" "23" "June" "2020" "09:06:34" "-0700" "Eric Biggers" "ebiggers@kernel.org" "<20200623160634.GA150582@gmail.com>" "49" "Re: [oss-security] CVE-2020-10769 kernel: Buffer over-read in crypto_authenc_extractkeys() when a payload longer than 4 bytes is not aligned." nil nil nil "6" "2020062316:06:34" "[oss-security] CVE-2020-10769 kernel: Buffer over-read in crypto_authenc_extractkeys() when a payload longer than 4 bytes is not aligned." (number mark "U       ebiggers@ker Jun 23   49/2317  " thread-indent "\"Re: [oss-security] CVE-2020-10769 kernel: Buffer over-read in crypto_authenc_extractkeys() when a payload longer than 4 bytes is not aligned.\"\n") "<CAKx+4-qHV2QzfTZKLt23E2jgnLvnncdAVUmqqdRKZhJFLV3tMA@mail.gmail.com>" ("<CAKx+4-qHV2QzfTZKLt23E2jgnLvnncdAVUmqqdRKZhJFLV3tMA@mail.gmail.com>") nil nil nil nil nil nil nil "Re: [oss-security] CVE-2020-10769 kernel: Buffer over-read in crypto_authenc_extractkeys() when a payload longer than 4 bytes is not aligned." nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5714 invoked by uid 550); 23 Jun 2020 16:08:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5363 invoked from network); 23 Jun 2020 16:06:48 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1592928395;
	bh=x8RDvqWg691Bmq3fEfpnE9jaL9tMXjFRyo8Juy7E+/c=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=OGxonaXUc3mNGixAvW2/m9W4TJfEQzfqrT5qxPEIxAkPQ5td58c8y09Uvj7ctQPsN
	 XIjYQrvrlglit7FtfS531Ydq8A7NHxWhvTzG+kqjbbxU2ZP8rcpMmge8HMdnaihf9l
	 vI8BLulRKHghxKbh5I/lJ+Y1Y3FNk/TR5doNxbhA=
Date: Tue, 23 Jun 2020 09:06:34 -0700
From: Eric Biggers <ebiggers@kernel.org>
To: oss-security@lists.openwall.com
Message-ID: <20200623160634.GA150582@gmail.com>
References: <CAKx+4-qHV2QzfTZKLt23E2jgnLvnncdAVUmqqdRKZhJFLV3tMA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAKx+4-qHV2QzfTZKLt23E2jgnLvnncdAVUmqqdRKZhJFLV3tMA@mail.gmail.com>
Subject: Re: [oss-security] CVE-2020-10769 kernel: Buffer over-read in
 crypto_authenc_extractkeys() when a payload longer than 4 bytes is not
 aligned.

On Tue, Jun 23, 2020 at 04:52:12PM +0530, Rohit Keshri wrote:
> Hello Team,
> 
> Red Hats kernel has a flaw in Authenticated Encryption with Associated Data
> (AEAD), a form of encryption technique which
> simultaneously assures the confidentiality and authenticity of data with
> below details.
> 
> A buffer over-read flaw was found in crypto_authenc_extractkeys in
> crypto/authenc.c  in  the IPsec Cryptographic  algorithm’s
> module, authenc. When a payload is longer than 4 bytes, and is not
> following 4-byte alignment boundary guidelines, it causes
> a buffer over-read threat, leading to a system crash. This flaw allows a
> local attacker with  user  privileges  to  cause a  denial
> of service.
> 
> 'CVE-2020-10769' was assigned by Red Hat Inc.
> 
> Upstream fix:
> https://lkml.org/lkml/2019/1/21/675
> 
> Thank you
> ..
> Rohit Keshri / Red Hat Product Security Team
> PGP: OX01BC 858A 07B7 15C8 EF33 BFE2 2EEB 0CBC 84A4 4C2D

Note that the Linux kernel community maintains LTS (Long Term Support) kernels
which already have most bug fixes backported -- including hundreds of bug fixes
that, like this one, were not assigned CVEs.  This bug was already fixed in the
Linux LTS kernels 17 months ago:

Linux v4.4.172: 2019-01-26 (https://lkml.kernel.org/lkml/20190126092938.GA23417@kroah.com/)
Linux v4.9.152: 2019-01-23 (https://lkml.kernel.org/lkml/20190123140846.GA27512@kroah.com/)
Linux v4.14.95: 2019-01-23 (https://lkml.kernel.org/lkml/20190123140915.GA27656@kroah.com/)
Linux v4.19.17: 2019-01-23 (https://lkml.kernel.org/lkml/20190123140935.GA27716@kroah.com/)

Linux distributors can significantly reduce their vulnerability to known bugs by
periodically merging in the appropriate LTS kernel branch.

Also, a regression test for this bug was added to LTP (Linux Test Project)
14 months ago: https://github.com/linux-test-project/ltp/commit/5d30802778fe3a21
Based on what I've seen when adding regression tests to LTP before, it's likely
that this bug was finally found and fixed in this particular downstream kernel
only because the LTP test was failing.  However, note that most Linux kernel
bugs are fixed without a regression test being added to LTP, which means that
cherry-picking kernel patches to fix LTP failures is much less effective than
merging in all LTS kernel fixes.

- Eric
