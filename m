Received: (qmail 15907 invoked by uid 550); 3 May 2026 18:00:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13373 invoked from network); 3 May 2026 11:32:34 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1777807944;
	bh=HxROsOi5/sHkbLkqUaCnKkzq4ihYQr/kFFSxR0+knho=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pbh6xJybOxdMZubI6bNvabuVRmu4JYxq+jjfzu0Fxzi5RXoCtjLe7K0RzVcwkj7mY
	 2m1kqSE6jvANfDvI/e2itf1drTrnJam1Bk1+gcw82Aavn+7lPoeMKW/RNF2ZvlbTGG
	 1ZM7qzN7vq89X1XJtISLdwbkNKJAXirYBmJfctqU=
Date: Sun, 3 May 2026 13:32:21 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Mohamed salem Eddah <medsalemeddah@gmail.com>
Cc: security@kernel.org, oss-security@lists.openwall.com,
	"asml.Silence@gmail.com" <asml.Silence@gmail.com>,
	"axboe@kernel.dk" <axboe@kernel.dk>
Message-ID: <2026050325-dance-campsite-01ae@gregkh>
References: <CAMrV8J7FfiB0ptMZFU+EKdRt1NPgtTe_YJWPFw7AQdB-vAQ75w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAMrV8J7FfiB0ptMZFU+EKdRt1NPgtTe_YJWPFw7AQdB-vAQ75w@mail.gmail.com>
Subject: [oss-security] Re: CVE request: io_uring zcrx freelist OOB write

On Sun, May 03, 2026 at 07:00:06AM -0400, Mohamed salem Eddah wrote:
> This issue appears to have been addressed in commit 770594e
> (“io_uring/zcrx: warn on freelist violations”, April 21, 2026), however it
> was not assigned a CVE and does not appear to have been included in a
> formal security advisory. As a result, multiple stable and downstream
> distribution kernels are still affected.
> ------------------------------
> Vulnerability Summary
> 
> *File:* io_uring/zcrx.c
> *Function:* io_zcrx_return_niov_freelist()
> *Introduced:* Linux 6.12 (initial ZCRX merge)
> *Fixed upstream:* 770594e (Apr 21, 2026)
> *Status:* Fix not yet present in stable releases


<formletter>

Please see:
        https://www.kernel.org/doc/html/latest/process/cve.html
for how kernel CVEs are assigned.

</formletter>
