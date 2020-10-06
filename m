X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["930" "Monday" "5" "October" "2020" "22:36:14" "-0400" "Steve Grubb" "sgrubb@redhat.com" "<5643462.lOV4Wx5bFT@x2>" "19" "Re: [oss-security] major changes if gnu/linux dominates the desktop and/or mobile market?" nil nil nil "10" "2020100602:36:14" "[oss-security] major changes if gnu/linux dominates the desktop and/or mobile market?" (number mark "U       sgrubb@redha Oct  5   19/930   " thread-indent "\"Re: [oss-security] major changes if gnu/linux dominates the desktop and/or mobile market?\"\n") "<20201005204820.GA8410@openwall.com>" ("<CAGUWgD_aZ6chnKWNf79_Ru=u=dFhMVX_qZEDv8tU1BajEx5ejw@mail.gmail.com>" "<20201005204820.GA8410@openwall.com>") nil nil nil nil nil nil nil "Re: [oss-security] major changes if gnu/linux dominates the desktop and/or mobile market?" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21709 invoked by uid 550); 6 Oct 2020 02:36:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21688 invoked from network); 6 Oct 2020 02:36:32 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1601951780;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=fWC+m0XFEI72vXr8U8efxlUL4d+Wy4rn7B8dhGkzyYQ=;
	b=GAI9ySZbKaIyxJkwcZucGeb++VD4Q5j7O7rvRCKlqzg0WEtkj/xET5d+kGmJKur7paTlXX
	VoUj3mmFqVy9JRsm+eJ7y2CfL5sEYeWAXl7WC2eEvGP8xtBALBjCm/W5dWBeLlwWDYe4fk
	oA4sr++pqH/1bXIpjllVh7dgMUwFDpo=
X-MC-Unique: gNjmBHXINAWZ3wAb7e4TIg-1
From: Steve Grubb <sgrubb@redhat.com>
To: oss-security@lists.openwall.com
Cc: Solar Designer <solar@openwall.com>
Date: Mon, 05 Oct 2020 22:36:14 -0400
Message-ID: <5643462.lOV4Wx5bFT@x2>
Organization: Red Hat
In-Reply-To: <20201005204820.GA8410@openwall.com>
References: <CAGUWgD_aZ6chnKWNf79_Ru=u=dFhMVX_qZEDv8tU1BajEx5ejw@mail.gmail.com> <20201005204820.GA8410@openwall.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=sgrubb@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Subject: Re: [oss-security] major changes if gnu/linux dominates the desktop and/or mobile market?

On Monday, October 5, 2020 4:48:20 PM EDT Solar Designer wrote:
> On the desktop, major Linux distributions (and by the way *BSDs and
> Solaris are not very different in this respect, I think) when used as
> single-user desktop systems lack security isolation between applications
> of the user.  (And also between the user and root, due to the typical
> recommended use of sudo from the user account.)

I will skip the whole discussion on access control. However to prove security 
requires going through a Common Criteria certification. The biggest issue is 
that the desktoptop uses dbus instantiation which does not have the auid of 
the requesting process. Meaning audit cannot work.

The fix was kdus. That was rejected. But the issue remains. There cannot be a 
secure desktop without auditing. And no one is really pushing for a desktop 
certification, therefore no one is pushing to fix audit desktop problems.

-Steve


