Received: (qmail 26503 invoked by uid 550); 6 Jun 2025 01:49:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 21759 invoked from network); 6 Jun 2025 01:24:13 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cpansec.org; s=gm1;
	t=1749173045;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=gimQyNInV8ik9sdOMuPCgpGdMrMeb7ol55sh9etiP3I=;
	b=GbVf/MgBNDDGefqUACIbKBJ07+OMRhrRLv1dvpdVu+8zBNGVTlZDxV0c65PjCQB8t/4TKB
	5tZH++seavJlWVOjPk3B5z8axvvO7MEcKeBb8y1GkRfnp1MTV5n+/yIxoftX1nkhhguI/4
	+91r0GgjTrZb7a72xev67WU67T4QWqMW/GmWq34iGRvd/qjdcDC19x+NXAAaUVcvdYA0Gg
	u66IrhPQogo9nC+sqSQNXe/+aHfb7IUEAo4QqulUPsUeSEW6I4kvlslMaecTfWlpe2ZBDa
	DLkhACgpE+jzzh0Lk+zpErYnaw3dE4b361wTqaV5hxQ+vsRjzCZJ/TdWmeWqww==
MIME-Version: 1.0
Date: Thu, 05 Jun 2025 22:24:04 -0300
From: Timothy Legge <timlegge@cpansec.org>
To: Sam James <sam@gentoo.org>
Cc: oss-security@lists.openwall.com
In-Reply-To: <87frgdfzxc.fsf@gentoo.org>
References: <af08b59edaa5fd29007603e146a3a43e@cpansec.org>
 <87frgdfzxc.fsf@gentoo.org>
Message-ID: <a2f4aa2ef5d6d819b65dcd74cd7a8071@cpansec.org>
X-Sender: timlegge@cpansec.org
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
X-GND-State: clean
X-GND-Score: 0
X-GND-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtddugdeggeduucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuifetpfffkfdpucggtfgfnhhsuhgsshgtrhhisggvnecuuegrihhlohhuthemuceftddunecunecujfgurhepggffhffvvefujghfkfigtgfgsehtjehjtddttddvnecuhfhrohhmpefvihhmohhthhihucfnvghgghgvuceothhimhhlvghgghgvsegtphgrnhhsvggtrdhorhhgqeenucggtffrrghtthgvrhhnpedvjedtvefgvdffffdukeetvdetvdeuteffkeehhffhgfehgeehkeetgfejvdduheenucffohhmrghinhepphgvrhhlrdhorhhgnecukfhppedutddrvddttddrvddtuddrudeknecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehinhgvthepuddtrddvtddtrddvtddurddukedphhgvlhhopeifvggsmhgrihhlrdhgrghnughirdhnvghtpdhmrghilhhfrhhomhepthhimhhlvghgghgvsegtphgrnhhsvggtrdhorhhgpdhnsggprhgtphhtthhopedvpdhrtghpthhtohepshgrmhesghgvnhhtohhordhorhhgpdhrtghpthhtohepohhsshdqshgvtghurhhithihsehlihhsthhsrdhophgvnhifrghllhdrtghomh
X-GND-Sasl: timlegge@cpansec.org
Subject: Re: [oss-security] CVE-2011-10007: File::Find::Rule through 0.34 for
 Perl is vulnerable to Arbitrary Code Execution when `grep()` encounters a
 crafted file name

On 2025-06-05 21:59, Sam James wrote:

>> A file handle is opened with the 2 argument form of `open()` allowing
>> an attacker controlled filename to provide the MODE parameter to
>> `open()`, turning the filename into a command to be executed.
>> 
> 
> FWIW, I've started a broader discussion on the future of 2-arg open on
> p5p at 
> https://www.nntp.perl.org/group/perl.perl5.porters/2025/06/msg269996.html.

Thanks, I just say that.  I was thinking it would be nice to have a way 
to disable it.
