Received: (qmail 24442 invoked by uid 550); 12 Mar 2024 16:13:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24420 invoked from network); 12 Mar 2024 16:13:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=notcom.org;
	s=jk; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Sender:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=JgN9aJTZYPdNFOBdV2MVFBbjJCqJRTlKapEUw0mcRCM=; t=1710260237; x=1710908237; 
	b=QvL4efnKaaVXnSijL+Z3WX7K/HkssZP0SRt+Nmz2bNxbntrLAypYzWDSeV9rnmN9mBKzHxtNmUQ
	U/pDs4fMqs20hITzgqeWYJxfqOgBRlgj59JJVz38Wmih/xAolLl5Xs58q/JQSLiqkWQu+dBwlNJ6v
	b+PaBpmB0BFumK9Vn7lY7EMVIbebgxzGDiI8ljFpRyCWeBCp2tkhXzIRVZBwJu6dCjrrtqn1ZdNLq
	f2LTbHK2ALmNYUlVRBsRt+MFBOupD/YEmwT1wXQO62C5ZgvB+6ZO0ZJBbTZg8gmqEYjz+2BDAharf
	ekgcA0x4lCeLO8sYuhQImAjIAZiGWmZf0TlQ==;
Date: Wed, 13 Mar 2024 01:17:03 +0900
From: Valtteri Vuorikoski <vuori@notcom.org>
To: oss-security@lists.openwall.com
Message-ID: <klcjh2m7nnaau5qyymirdbm45hsshfw7ma4iztnlg6thhgty72@ci3ntibgtvld>
Mail-Followup-To: oss-security@lists.openwall.com
References: <gb6h5yblly7xer6jg6sgn7syzrze3jviotrmfsp3ifgy6rg2jr@igvcqdasmnof>
 <CAKLnGtQHn4SdNEDND-9g7TbF6A6SbpYbW4Z8Tsf9W4ssuDf71A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAKLnGtQHn4SdNEDND-9g7TbF6A6SbpYbW4Z8Tsf9W4ssuDf71A@mail.gmail.com>
User-Agent: NeoMutt/20231221-36-1cdb04-dirty
Subject: Re: [oss-security] Certificate policy: OCSP becomes optional and
 CRLs mandatory for public CAs on Friday

On Tue, Mar 12, 2024 at 09:23:26AM -0400, Armin Kuster wrote:
> On Mon, Mar 11, 2024 at 4:35 PM Valtteri Vuorikoski <vuori@notcom.org>
> wrote:
> 
> > This is more of a meta-security
> 
> By "meta-security" do you mean the Yocto/OE meta layer by that name?
> https://git.yoctoproject.org/meta-security

No, I mean "meta" as in the general English meaning of the prefix: an
issue pertaining to other, concrete security issues, for example as a
cause of such issues or as something that prevents them.

 -Valtteri
 
