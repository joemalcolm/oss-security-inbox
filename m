X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["540" "Tuesday" "30" "June" "2020" "14:54:59" "+0200" "Stefan Cornelius" "scorneli@redhat.com" "<20200630145459.1d12bb01@lenovo>" "21" "Re: [oss-security] libvncserver: old websocket decoding patch" nil nil nil "6" "2020063012:54:59" "[oss-security] libvncserver: old websocket decoding patch" (number mark "U       scorneli@red Jun 30   21/540   " thread-indent "\"Re: [oss-security] libvncserver: old websocket decoding patch\"\n") "<20200630105009.46d2de6d@lenovo>" ("<20200630105009.46d2de6d@lenovo>") nil nil nil nil nil nil nil "Re: [oss-security] libvncserver: old websocket decoding patch" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30659 invoked by uid 550); 30 Jun 2020 12:55:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30641 invoked from network); 30 Jun 2020 12:55:20 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1593521708;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=oiojF3aEAk+WIQ4q4+Bkpkzk3pZ7t3oX+vQCQc8At44=;
	b=HX0n3WpQ+34qQyE304V1IB9cNVxSFHSCZB/nkPimHFus6Y6jlGLEJw+TpETnAlqKrTIfAN
	6D5HJQlGVYMDNjqKb5nupT/+jw6TQ3rDWoA3KhDOXfFYYVGhikYNPy2GCUsSNo0u2H5SVy
	tVLBpbAOrhjBzuVJMtTJODBJLZKdIc0=
X-MC-Unique: KRX20CgpPLW3RpED_vn66A-1
Date: Tue, 30 Jun 2020 14:54:59 +0200
From: Stefan Cornelius <scorneli@redhat.com>
To: oss-security@lists.openwall.com
Message-ID: <20200630145459.1d12bb01@lenovo>
In-Reply-To: <20200630105009.46d2de6d@lenovo>
References: <20200630105009.46d2de6d@lenovo>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=scorneli@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] libvncserver: old websocket decoding patch

On Tue, 30 Jun 2020 10:50:09 +0200
Stefan Cornelius <scorneli@redhat.com> wrote:

> Hi,
> 
> Upstream libvncserver fixed a websocket decoding issue >3years ago in
> https://github.com/LibVNC/libvncserver/commit/aac95a9dcf4bbba87b76c72706c3221a842ca433
> 
> AFAICT, this never got a CVE and wasn't backported by some
> distributions.
> 
> Thanks and kind regards,
> 
> [I sent a heads-up about this to distros last Friday, 'embargo' ran
> out on Monday 20:00 UTC]

Please use CVE-2017-18922

-- 
Stefan Cornelius / Red Hat Product Security

