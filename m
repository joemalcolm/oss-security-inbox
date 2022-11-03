Received: (qmail 7918 invoked by uid 550); 3 Nov 2022 19:40:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7900 invoked from network); 3 Nov 2022 19:40:02 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sciops.net; s=20210706;
	t=1667504263;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=eHmsryQOKsBOfdb2zjPCQOzQm3DYZkauvi7PFL9YKY0=;
	b=q3TKvAOu/M0DReIzM/fFaED/xQNkvQP4WnkHbpcN3OAeNOb//m/mSGeYuq+34tbfRodTi+
	lSj8vBwxTXV9+Slz4ik2RF5ogox4EtewZPz3HVnyt4gadfdD5IFHKu57Tjny8nBJrUFKNn
	ZF6RFjZaPBnkL821e/BUEB0rLUzTzj4=
Date: Thu, 3 Nov 2022 12:37:43 -0700
From: Kurt H Maier <khm@sciops.net>
To: oss-security@lists.openwall.com
Message-ID: <Y2QYhxYN5/mNgtAO@wopr>
Mail-Followup-To: oss-security@lists.openwall.com
References: <20221101170833.GA10470@openwall.com>
 <20221102150921.3ab3f2d0@computer>
 <Y2K1yOB7748iGI2P@wopr>
 <tk0n6j$10pr$1@ciao.gmane.io>
 <CANm5x_MaPRcY8B6WdNM40xj8kaeqqfX2Z=EZk36MohfSk9KYNA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CANm5x_MaPRcY8B6WdNM40xj8kaeqqfX2Z=EZk36MohfSk9KYNA@mail.gmail.com>
Subject: Re: [oss-security] Re: OpenSSL X.509 Email Address 4-byte Buffer
 Overflow (CVE-2022-3602), X.509 Email Address Variable Length Buffer
 Overflow (CVE-2022-3786)

On Thu, Nov 03, 2022 at 06:32:22PM +0200, Nicola Tuveri wrote:
> I can also add that at least this member of the OpenSSL Technical
> Committee is following the discussion, and I believe I am not the only
> one.

Thanks, Nicola, that makes me feel a lot better about this thread.

khm
