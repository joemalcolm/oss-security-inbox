X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["406" "Wednesday" "27" "October" "2021" "15:10:11" "+0200" "Alberto Garcia" "berto@igalia.com" nil "11" "Re: [oss-security] WebKitGTK and WPE WebKit Security Advisory WSA-2021-0006" nil nil nil "10" nil nil (number mark "U       berto@igalia Oct 27   11/406   " thread-indent "\"Re: [oss-security] WebKitGTK and WPE WebKit Security Advisory WSA-2021-0006\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] WebKitGTK and WPE WebKit Security Advisory WSA-2021-0006" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27941 invoked by uid 550); 27 Oct 2021 13:12:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17867 invoked from network); 27 Oct 2021 13:10:25 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; s=20170329;
	h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date; bh=xMqh9p2KYF4UCqBh+m/bZxrG1k50u+ZQmABSRaZ1RGI=;
	b=Fnw6xTLCSkPJpY8MxcNOZKgf/ruVZbH9cEWxOHzgK3y50ydijq45MFVUe1IayPkva4+7tgF/ZYF02IzAeA2hicictbgM3yeJaTHIWRTRSWLWXictRHBS3lKZjtgh875IMRrF27dUQkZf1QX007BuiP4JhzKR9TfVWHJnPNh/mJtH5SHwPYT6gwE7+LCcYb+FcnLxFVPtfj+Y8h/gDqRFjUFQ63a+oArhGZS7s2pEPCKzGrXcbIsm2L7tIr55QDVuDmhmZ4eArA2r2POH0zdDIjvKAU+uCQGzORFb36fIR6MgJUL+3wD4NuE0v9762pTOBZjbUcWmnpbANSYchTAtVw==;
Date: Wed, 27 Oct 2021 15:10:11 +0200
From: Alberto Garcia <berto@igalia.com>
To: Francis Perron <francis.perron@shopify.com>
Cc: oss-security@lists.openwall.com,
	Carlos Alberto Lopez Perez <clopez@igalia.com>, security@webkit.org
Message-ID: <20211027131011.GA24452@igalia.com>
References: <03eb1900-5593-09ff-8814-008632c46c5c@igalia.com>
 <YXjQiwOj3gF/phTC@elende.valinor.li>
 <CAJAmgfgpTF--5HsAaWrmWaoM5dHswtdNB2==gUdhSCiDYG6X+A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAJAmgfgpTF--5HsAaWrmWaoM5dHswtdNB2==gUdhSCiDYG6X+A@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: Re: [oss-security] WebKitGTK and WPE WebKit Security Advisory
 WSA-2021-0006

On Wed, Oct 27, 2021 at 09:02:02AM -0400, Francis Perron wrote:

> Salvatore -
>   I think 30851 was not issued, and it may have been a mistake here.
> There was no other CVE issued as part of WSA-2021-0006 according to
> the GitHub repo for the CVE program:
> https://github.com/CVEProject/cvelist/search?q=wsa-2021-0006

FWIW Apple listed that CVE as well https://support.apple.com/en-us/HT212816

Berto
