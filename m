Received: (qmail 7909 invoked by uid 550); 10 Apr 2025 13:43:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13899 invoked from network); 10 Apr 2025 13:32:48 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1744291958;
	bh=MCXFhYZse2XHv2jeMGCHmJQzuc0LiTOI8iW5s1l9DiU=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=OSlCu+HvWY1S9Rzwuu1MRHAfe2GtqEc8a3kVdE8HOHjy312gnIst7hOVtIn6OX1o8
	 Y1YptGe1cSAyf++i+8RC7sM5vEfAzGQV5wZHJjWpZI5vIhzxf8R+Dr7BQ3yXsQuzoT
	 mOzsexdGXJYelvwDfhz0LnM7/920zdtM0ecBCbf8=
Date: Thu, 10 Apr 2025 15:31:03 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: oss-security@lists.openwall.com
Message-ID: <2025041003-saddling-dart-5b8b@gregkh>
References: <VI0P189MB276612AABA4D5DB2B4018524AEB72@VI0P189MB2766.EURP189.PROD.OUTLOOK.COM>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <VI0P189MB276612AABA4D5DB2B4018524AEB72@VI0P189MB2766.EURP189.PROD.OUTLOOK.COM>
Subject: Re: [oss-security] CVE-2024-50217: Linux kernel: btrfs:
 Use-after-free of block device file in __btrfs_free_extra_devids()

On Thu, Apr 10, 2025 at 12:22:46PM +0000, akendo@akendo.eu wrote:
> Hey everyone,
> 
> Not too sure how or whom to ask about: But I saw that there is CVE-2024-50217 that affects every kernel since 4.8.
> 
> However, it is only fixed on more recent version of the linux kernel like 6.11 or 6.12. Any reason this wasn’t backported to older kernel versions?

That's usually because no one has taken the time to do so.  Same for the
thousands of other "unfixed" CVEs in older stable kernel trees.

As an example, for the latest 5.4.y stable kernel release, I see that
there are currently 1110 unfixed CVEs as of right now.

Feel free to send backports to the stable@vger.kernel.org mailing list
if you wish to see specific commits applied to older stable kernel
releases.

thanks,

greg k-h
