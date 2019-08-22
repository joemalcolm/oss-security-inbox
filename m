X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1136" "Thursday" "22" "August" "2019" "09:20:00" "-0700" "Greg KH" "greg@kroah.com" "<20190822162000.GA1670@kroah.com>" "24" "Re: [oss-security] Linux kernel: multiple vulnerabilities in the USB subsystem x2" "^Date:" nil nil "8" "2019082216:20:00" "[oss-security] Linux kernel: multiple vulnerabilities in the USB subsystem x2" (number mark "U       greg@kroah.c Aug 22   24/1136  " thread-indent "\"Re: [oss-security] Linux kernel: multiple vulnerabilities in the USB subsystem x2\"\n") "<CA+fCnZfpGc0qK9MRp-BQJkLPrZhf-Md-UYCOtPi0RhbwJqmAHQ@mail.gmail.com>" ("<CA+fCnZfz=Y41rkacwG6z0d_d6WV=iSkU2R1L-JzxfRKYHnSN9w@mail.gmail.com>" "<C1E053CF-5359-43A3-8572-BE6CDFDCC2B1@oracle.com>" "<20190822093122.GQ6086@suse.de>" "<ECC3E425-3E0F-4671-AC2B-CA5FD8958FBD@oracle.com>" "<CA+fCnZfpGc0qK9MRp-BQJkLPrZhf-Md-UYCOtPi0RhbwJqmAHQ@mail.gmail.com>") nil nil nil nil nil nil nil "Re: [oss-security] Linux kernel: multiple vulnerabilities in the USB subsystem x2" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5149 invoked by uid 550); 22 Aug 2019 16:20:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5128 invoked from network); 22 Aug 2019 16:20:18 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
	date:from:to:subject:message-id:references:mime-version
	:content-type:in-reply-to; s=fm1; bh=r9gwy2fe/sK7dhQc+cQKhusQH10
	5/RGS2YjSF3yqykU=; b=jATnue7bMAzo+Qdq5tRkDlfdOQmjo78x0lh6NDy5IsG
	SEahMD6J8be3gVxrdyDHN+v8vy+Dqd02iuJFo9AdbhmAPsDEvbHfCvVw9forxb4N
	JX63MSLnZk6DMHi5CGy3b4XKxUU2Y/zzxi8IXL+5dulQb55snkeDEBcoAb2710Gv
	c677nZDUO/0JzTNW9YCnBJ8nK+5aD9ZRpNfFh9DfQVAyV00pRJzCU8TtO04sUgMX
	CRxypB/7PhIhD1PkjJG7LpdWZ+UoZa1i4YHl2p3SjkEwe2/4IPjooTD3nPcw1UwV
	+IP8hdw5fIdaz/UVP4c4b0Rspwlyv+u8nEnBXMDPvsg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=r9gwy2
	fe/sK7dhQc+cQKhusQH105/RGS2YjSF3yqykU=; b=F1YevkAB0KHncDR2BQcdOM
	evSj2t7jHyAJiWFF8+wNltElF5vnPV+l6XB1PDgJkNd68BS6kBXhqxls2dSARtfn
	8LEW/3o5TSbm9re4CusZOIpalnotgBV2jS8mCOfK9NfY7csAKPlULQfYoOu1pWXG
	NGZy8Bi6J9Z2q8YzVJunPkqjBYo83b/75XejLqI1WOXzo3pUU4Z/e56js1oW1Cdf
	ZxDC4NQYnBf2COakA6rd3rdpwIIThxsVS46ASgKFi4bKrWgJcArefVxLylAKReum
	k9gpDe481SIsyWzySlTUr9KUAQwYlbKjFMSnyxTFMAW2BBGO/yrHuj+LSF6JCR7Q
	==
X-ME-Sender: <xms:tMBeXYWdO9L8fc2Asdo9uNQ4FT7NNYqiso6fIBXY-nSNN_fjxyyVPg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrudegiedgheeiucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkfhggtggujggfsehttd
    ertddtredvnecuhfhrohhmpefirhgvghcumffjuceoghhrvghgsehkrhhorghhrdgtohhm
    qeenucffohhmrghinhepohhpvghnfigrlhhlrdgtohhmnecukfhppedukeegrddukeekrd
    efiedrvdenucfrrghrrghmpehmrghilhhfrhhomhepghhrvghgsehkrhhorghhrdgtohhm
    necuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:tMBeXQ2FqEBKkCEJN47TdXALk_MizsvVoiuWj_3mjlsb92x7j_7htg>
    <xmx:tMBeXXZB8Z4UMcpYsYRgEo1XdSJwYnHYgS_V9OyPQVNJbtX6ok40Gw>
    <xmx:tMBeXbrsTykJHuPBds9U-lvAcf3J-zT-HTd2VEW3mxSYFuwNN5TVxw>
    <xmx:tcBeXdcuZpLAI9GCQpm0rYt75iI3PFiCAe_fMkt4bY117bMELpl9mg>
Message-ID: <20190822162000.GA1670@kroah.com>
References: <CA+fCnZfz=Y41rkacwG6z0d_d6WV=iSkU2R1L-JzxfRKYHnSN9w@mail.gmail.com>
 <C1E053CF-5359-43A3-8572-BE6CDFDCC2B1@oracle.com>
 <20190822093122.GQ6086@suse.de>
 <ECC3E425-3E0F-4671-AC2B-CA5FD8958FBD@oracle.com>
 <CA+fCnZfpGc0qK9MRp-BQJkLPrZhf-Md-UYCOtPi0RhbwJqmAHQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CA+fCnZfpGc0qK9MRp-BQJkLPrZhf-Md-UYCOtPi0RhbwJqmAHQ@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Date: Thu, 22 Aug 2019 09:20:00 -0700
From: Greg KH <greg@kroah.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux kernel: multiple vulnerabilities in the USB
 subsystem x2
To: oss-security@lists.openwall.com

On Thu, Aug 22, 2019 at 05:16:03PM +0200, Andrey Konovalov wrote:
> On a side note, currently there's an issue with many Linux kernel bugs
> being fixed, but not backported to distro kernels. Those bugs might
> have security implications, but there's no way to know that, unless
> someone specifically spends time to assess them in that regard.
> Requesting CVEs for those bugs is a way to get the fixes into distro
> kernels (even though that doesn't always work promptly [1] :).
> 
> [1] https://www.openwall.com/lists/oss-security/2018/10/30/2

Note, I am scraping the logs for anything that says it is fixed due do a
syzbot find or report and backporting them to the stable kernel
branches.  So those distros that do follow the LTS/stable kernel
releases do get these fixes.  Luckily most of the "sane" distros these
days do this.

Please don't abuse the CVE process just to try to get a fix backported
to a Linux kernel release.  There is at least one company today that
does this as it is a way to "route around" management, but really, that
shouldn't be needed, fix your management processes instead please :)

thanks,

greg k-h
