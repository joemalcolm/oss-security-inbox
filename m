X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1558" "Thursday" "23" "July" "2020" "16:19:03" "-0600" "Jeff Law" "law@redhat.com" nil "33" nil "^Cc:" nil nil "7" nil nil (number mark "        law@redhat.c Jul 23   33/1558  " thread-indent "\"Re: [oss-security] Flatcar membership on the linux-distros list\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Flatcar membership on the linux-distros list" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 29942 invoked by uid 550); 23 Jul 2020 22:19:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 29924 invoked from network); 23 Jul 2020 22:19:19 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1595542747;
	h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=A0s8SJiNNaQrGWnwyYCIh8X3zXggqZGgWGDdwEnflL4=;
	b=aqmBjiJvAIH1xMSCPRezJkCV5rVRkPKmyBlVv4QzC1q9yDfZsIbbA3Gdi6gxref2PJZLJH
	ZB7LHikCvfd33OlyMSRgAiL2nmHC2SeZk9CrftxrQnfFPwZ62kbYz9h8d7hoN0t3NJ3lqV
	G9kUXZq0E0Z9EanLiqgSXnZOiO2xs5o=
X-MC-Unique: U5jDcKLyM-i6mVvRjKihlg-1
Message-ID: <218e3919b8d7666c70e024d08acf668f855c314c.camel@redhat.com>
In-Reply-To: <20200723220124.GA23394@openwall.com>
References: 
	<CAHp2X_Q=2=8qauHjTQRqUOdfUxW5s7pypwLYBwpNQ5yFyE4p+w@mail.gmail.com>
	 <20200720183532.GA11008@openwall.com>
	 <CAHp2X_S_3DC00CE8Yt_RkY+dhYH-BJX2sj9EzP_ip9Sp2T+DJQ@mail.gmail.com>
	 <20200723184514.GA22802@openwall.com>
	 <ec15f352a25a3322ca1feb435266b53b1901d340.camel@redhat.com>
	 <20200723220124.GA23394@openwall.com>
Organization: Red Hat
User-Agent: Evolution 3.36.3 (3.36.3-1.fc32)
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
Cc: "Alban Crequy (Kinvolk)" <alban@kinvolk.io>, volkerdi@slackware.com
Date: Thu, 23 Jul 2020 16:19:03 -0600
From: Jeff Law <law@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Flatcar membership on the linux-distros list
To: oss-security@lists.openwall.com

On Fri, 2020-07-24 at 00:01 +0200, Solar Designer wrote:
> On Thu, Jul 23, 2020 at 01:44:46PM -0600, Jeff Law wrote:
> > On Thu, 2020-07-23 at 20:45 +0200, Solar Designer wrote:
> > > OK.  It looks like we'll add Flatcar as soon as an existing member
> > > vouches for you.
> > In what way do you need someone to vouch for Vincent?
> 
> This requirement is currently loosely specified as:
> 
> "Have someone already on the private list, or at least someone else who
> has been active on oss-security for years but is not affiliated with
> your distro nor your organization, vouch for at least one of the people
> requesting membership on behalf of your distro (then that one
> vouched-for person will be able to vouch for others on your team, in
> case you'd like multiple people subscribed)"
> 
> So someone who's on (linux-)distros "or at least someone else who has
> been active on oss-security for years but is not affiliated" should
> state in here that they vouch for Vincent.  They may optionally make
> this more specific (yet convincing) if they like, but that isn't
> required.
So I'm no longer affiliated with Vincent since he's left Red Hat and I'm not
affiliated with flatcar at all.  We loosely worked together at Red Hat and I'll
certainly vouch for Vincent.

I'm not sure how long I've been on oss-security, but I was the primary designer
and implementor of the stack-clash mitigations for GCC and consultant for the
LLVM stack-clash mitigations, as well as Red Hat's lead on the compiler side of
spectre mitigations.

Hope that helps,
Jeff

