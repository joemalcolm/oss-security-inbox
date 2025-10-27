Received: (qmail 13790 invoked by uid 550); 27 Oct 2025 19:46:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13725 invoked from network); 27 Oct 2025 19:45:59 -0000
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=spacehopper.org;
	s=s3e; t=1761594350; h=from:from:subject:subject:date:date:message-id:message-id:
	 in-reply-to:in-reply-to:references:references;
	bh=ZG5G/AOkoqp9pmoqInkXSFpkR6dUz7PdcFwNPwp6kiM=;
	b=Aw0i0Vx+bGUD+SDRgHKdF4ePxknczt6jEm6xnxQLwrx9D4ZuN/2GigKngaTgcKHBLLkYqp
	xI5PGIXS9rfJyCCQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=spacehopper.org;
	s=s3; t=1761594350; h=from:from:subject:subject:date:date:message-id:message-id:
	 in-reply-to:in-reply-to:references:references;
	bh=ZG5G/AOkoqp9pmoqInkXSFpkR6dUz7PdcFwNPwp6kiM=;
	b=OePUw8C0PXsOoeJsheVOT6jmivIVaruMmB6N5Z1YQdE8K6pJunSyFVx4bknlOiKOsx+icS
	I0/Wje65SFToNnTSus1ZlB7bKWoEFqpxbeYjEYDml7Iz4vRWwnGKgUPCcqn0MXFgyT/Lg2
	J4yI5w2CDmmduV9Clvk9YV5v/3+7p0pJm7gXaHDPt5Hc5M7DhkO7kdWmrMXZ3pinsQ/Au/
	mFS+fxcb7KO5FCMWtk/2wv/2n2TguEWo6s9/C9arJWA4EG/7n73jZXJPwt7y30ihtLo/+9
	ELKQfbxtBL7mP80Vz4sE2dC2iqPyXOEz8SUTvEIE+lAuX4Ig+RxJ3TvmZ9eX2g==
Date: Mon, 27 Oct 2025 19:45:50 +0000
From: Stuart Henderson <stu@spacehopper.org>
To: oss-security@lists.openwall.com
Message-ID: <aP_L7mY0OXB2iDmk@symphytum.spacehopper.org>
References: <2ccbcc13-fc25-484c-a34d-56f27ac87db7@oracle.com>
 <aP-rxft9ra58z9EZ@yuggoth.org>
 <CA+qj4S-=TtjPN5Us5tva1TUo7a2MJKzpXweiQCM=QLMwcq5Xjw@mail.gmail.com>
 <6c9a4094-6af3-4aa3-940d-0d19505da3b1@pipping.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6c9a4094-6af3-4aa3-940d-0d19505da3b1@pipping.org>
Subject: Re: [oss-security] Questionable CVE's reported against dnsmasq

On 2025/10/27 19:51, Sebastian Pipping wrote:
> Also, fixes without a CVE will not be backported downstream.

That depends on the downstream.

