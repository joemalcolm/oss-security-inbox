X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["511" "Tuesday" "23" "March" "2021" "10:10:37" "+0100" "Petr Matousek" "pmatouse@redhat.com" nil "16" "Re: [oss-security] Re: CVE-2021-20219 Linux kernel: improper synchronization in flush_to_ldisc() can lead to DoS" nil nil nil "3" nil nil (number mark "U       pmatouse@red Mar 23   16/511   " thread-indent "\"Re: [oss-security] Re: CVE-2021-20219 Linux kernel: improper synchronization in flush_to_ldisc() can lead to DoS\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Re: CVE-2021-20219 Linux kernel: improper synchronization in flush_to_ldisc() can lead to DoS" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9654 invoked by uid 550); 23 Mar 2021 09:10:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9636 invoked from network); 23 Mar 2021 09:10:55 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1616490643;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=463bqGGeQGEeNu7VP/Xh+2haRqDurNWfctDAeBn9xGc=;
	b=YXHux/rVfk5Xbif2ou8TNLUJ2Yt0sXiDnssvl+cWHBZNKP95wuCXkJciCeFhzU8huV/9qY
	37EYsor5Jq/3F90vMc73FAO0fe9YYCdTEPFUz4XJIBZ6Yt69qzmg1R+y8e5oDsZeeX8zMx
	xfk5g66DlRqNJfeINnw5ZtXeh/9wwX4=
X-MC-Unique: E_VUSsuBOR68XYDaBYe60w-1
Date: Tue, 23 Mar 2021 10:10:37 +0100
From: Petr Matousek <pmatouse@redhat.com>
To: oss-security@lists.openwall.com
Message-ID: <20210323091036.GB2094@dhcp-25-225.brq.redhat.com>
References: <CAKx+4-pR3JScgA-PJFSwkAw6B8xiXYWFtVD6rEYp2wnJjyCogw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAKx+4-pR3JScgA-PJFSwkAw6B8xiXYWFtVD6rEYp2wnJjyCogw@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=pmatouse@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: Re: [oss-security] Re: CVE-2021-20219 Linux kernel: improper
 synchronization in flush_to_ldisc() can lead to DoS

Hello,

we are reviewing our approach to sending CVE kernel announcements to
oss-security after the (mostly) constructive feedback received in this
email thread.

I admit that several of the recent announcements were not up to par with
the minimal standard we strive to achieve and I apologize for that. Our
intention never was to cause unnecessary work for others, quite the
opposite.

Thank you,
-- 
Petr Matousek / Red Hat Product Security
PGP: 0xC44977CA 8107 AF16 A416 F9AF 18F3  D874 3E78 6F42 C449 77CA

