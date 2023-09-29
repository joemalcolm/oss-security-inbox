Received: (qmail 11562 invoked by uid 550); 29 Sep 2023 11:24:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11636 invoked from network); 29 Sep 2023 00:10:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=aceecat.org
	; s=rsa; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=B/jQu/MNT6xb6obBejBpH9PIAXQqIdxE0xWN3QP4jP8=; b=bX9ocYm7vyUlQLuoeWBV3r5od9
	5DeRM3eTVVFtZUsu5UPfMlxJJjcDs6KHutXOat4L6pbpLD0PfaBrj7ilj5UtUyoDJaDm2KVHUuIeT
	70qWqh6ybi9o8iiM2aea3bvBiriegt4IU8zgauObCuyhOKk5d9X9hAcASB01SmZxQDewIWZL3t5H6
	wqWQwlZjpl+fHB6nwA9renqEzej6MWvRTW7gDXJY2pzWUxKPTNPcpzTkEPYSOAp1LzRXy3z/aMzqO
	XLf2uI3WksY5LJbLJAnUF2tzLWiEnsPuXMA2OkKHjN09wQO8EJHtE1iNthvf1sUizE5nlJSvA3R5t
	ukmjTDpw==;
Date: Thu, 28 Sep 2023 17:10:09 -0700
From: nightmare.yeah27@aceecat.org
To: oss-security@lists.openwall.com
Message-ID: <fu34pmyckhgrjugxc2pqbj5afhtsf5jisnbpjghhkr7rfie3my@53a2ma3ekn6i>
Mail-Followup-To: oss-security@lists.openwall.com
References: <bd99e07a-8d8c-4652-9089-7c0fc2e86409@oracle.com>
 <ZRXlPoozp5n+cWv1@itl-email>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZRXlPoozp5n+cWv1@itl-email>
Subject: [oss-security] Re: CVE-2023-5217: Heap buffer overflow in vp8 encoding in libvpx

On Thu, Sep 28, 2023 at 04:42:33PM -0400, Demi Marie Obenour wrote:

> How long will it take for corporations to accept that writing media
> codecs in C, C++, or any other memory-unsafe language is a
> fundamentally bad idea, and that it is better to rewrite the codecs
> in a safe language (such as Wuffs or Rust) than to try to secure the
> existing ones?

Wouldn't the low-level code have to ultimately depend on unsafe Rust
modules, or similar feature in other safe language?

-- 
Ian
