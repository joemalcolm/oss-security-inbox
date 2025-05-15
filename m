Received: (qmail 13923 invoked by uid 550); 15 May 2025 15:10:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13896 invoked from network); 15 May 2025 15:10:01 -0000
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=spacehopper.org;
	s=s3e; t=1747321791; h=from:from:subject:subject:date:date:message-id:message-id:
	 in-reply-to:in-reply-to:references:references;
	bh=Ch+LTNZw3sqFbkiqkXQICNkDJtDhztkku3c8AKYyty8=;
	b=V5WOc8rx6nyF/MvAq59N/ZOuug3PE3eZndeAps2T8X3Pme3fsgQKUwGDiDnAt3dVzvVLfy
	ZhmPZLWnzzb6+7AA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=spacehopper.org;
	s=s3; t=1747321791; h=from:from:subject:subject:date:date:message-id:message-id:
	 in-reply-to:in-reply-to:references:references;
	bh=Ch+LTNZw3sqFbkiqkXQICNkDJtDhztkku3c8AKYyty8=;
	b=eW7RRId9xUgtINj7gASKvnNGXG+o/DUllikrKCEpXNTRQh8UGyt5iiya3qhBW7hLd1YaZ8
	uh2p3lyGKymsE/1G8erqf2Cr/jc31IkMri6VDL8ir6NGYt/EH5pVkD82HARnYC4K09Jym3
	+3LXCNpi8lqv5ou11rlWjfQS0eXThohlxYfHLIrQHkywTjVeHsAaGa4mX0IFipsLSoqTGd
	mSt8BZSuQzE1YZs2rp3NK+d/u7kuMwS1sbwUHrIokMN9MPfNjYdqkYLNlJ1iqcp7Oor9bc
	PIYZ72jqy+BRLomH1SBiIDfiWexmqoYGRuSG3DlbJtbroW4ZElSnIuIO/wuVvA==
Date: Thu, 15 May 2025 16:09:51 +0100
From: Stuart Henderson <stu@spacehopper.org>
To: oss-security@lists.openwall.com
Message-ID: <yxzsn67mzkjf2bxwkjah6u5q54yg2mqj7tlysm7mjeo4xytwhr@24dslwvnetyr>
References: <aCISrQTbLQjaxBZS@kasco.suse.de>
 <CAK84RTXnye4-qBA0Yfachi-8gQHZc2bdcSS=9Zi4cfpaDhCFmg@mail.gmail.com>
 <aCR-A6lIgS2h8efj@kasco.suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aCR-A6lIgS2h8efj@kasco.suse.de>
Subject: Re: [oss-security] screen: Multiple Security Issues in Screen
 (mostly affecting release 5.0.0 and setuid-root installations)

On 2025/05/14 13:26, Matthias Gerstner wrote:
> Hi,
> 
> On Tue, May 13, 2025 at 03:48:31PM -0700, Mark Esler wrote:
> > Cheers for the report Matthias and SUSE Security!
> 
> thanks!
> 
> > Could you please comment on the affectedness of upstream screen 5.0.1?
> > 
> > https://git.savannah.gnu.org/cgit/screen.git/commit/?h=screen-v5&id=464c8d8f945f53f8cbb854517279349e09d74756
> > 
> > This version was released ~an hour before your initial oss post. It appears
> > that upstream landed the patches, which may be worth mentioning in your
> > timeline.
> 
> Indeed, this is the bugfix release announced by upstream here:
> 
> https://lists.gnu.org/archive/html/screen-users/2025-05/msg00005.html

There are two different versions of the tar.gz; at present, some of the
gnu.org mirrors have one, some have another. The earlier one includes
.o and other generated files, also there are differences to some source
and headers around WINESC_WIN_CARET.

It would probably be helpful to make a 5.0.2 release to make it a little
more clear.

