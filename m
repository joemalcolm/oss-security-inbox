X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2127" "Friday" "19" "March" "2021" "08:30:34" "+0100" "Greg KH" "greg@kroah.com" nil "40" "Re: [oss-security] Re: CVE-2021-20219 Linux kernel: improper synchronization in flush_to_ldisc() can lead to DoS" nil nil nil "3" nil nil (number mark "U       greg@kroah.c Mar 19   40/2127  " thread-indent "\"Re: [oss-security] Re: CVE-2021-20219 Linux kernel: improper synchronization in flush_to_ldisc() can lead to DoS\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Re: CVE-2021-20219 Linux kernel: improper synchronization in flush_to_ldisc() can lead to DoS" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1209 invoked by uid 550); 19 Mar 2021 07:30:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1190 invoked from network); 19 Mar 2021 07:30:52 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
	date:from:to:subject:message-id:references:mime-version
	:content-type:in-reply-to; s=fm3; bh=i7ZN/GqUZHp9bBF4013uwSC7oH0
	dwfqW2rweqMPdDJg=; b=YlcxhiclkUR4RjzM57DWRVol7yMcWp/5W2t9eEUgP52
	Gekouf4tCPnsv/sI6AOMF9mHMef3DH1NSTqEk7opOPCiRxxTnl9ilYOoh/tpK2M7
	9IHecDRI8xdTGYvU//l0eaPPAtkwbEH74KWLYEgqSK1v3dOOIIR5566OedblE0VX
	ax7k2JRjjDczLkqvRvCvPrzrHIe9rjiDYufzWkVPSrRS2e2Uu5RVVEXhJfDAbrK5
	gY05MPVJMXpCFYOGfLbx18EAMjnckCBwMOzIyZTiEyL+YEyWMhVZKgMpbaIt1mmD
	kBpzWuKyhy93ZxChI6tynzdID3NZi3agz0oYlphabQA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=i7ZN/G
	qUZHp9bBF4013uwSC7oH0dwfqW2rweqMPdDJg=; b=mLpye8wOEL1h7DumKu70UB
	2MwuRiUp01P+/Ri6rK9IgNffAHIRtT1jRKx1qjzeXFvunh4SWz8qZMg7AwDOvcP2
	zOs7z8P2FrPqvZlkBbfCmVt/dXo6KY7ZAaqBlqn1xd6ur14mMekUAic/X9B4xB6C
	yeNlBJYBPQTHO0i0Zvg5RYak1FJfFUNMEGBM2q15fezcX800wHu9S4Aqao6d3BK9
	xMIzMu75Fi0aHAi58NJg1nl6zkbMslAp913vzGT3tS9462S3Md82kAJXdZBZwhX4
	fgtS+E6DW2dLXN1HgO1/DRxCwrHmykuQV4pbd26ppWrGjAY6WtU2/TbteO7xx63g
	==
X-ME-Sender: <xms:HFNUYFNJ87B8vVL8-9eIqfMSYXmaJa96ojk2G7N-xTngfSKu4I3l3A>
    <xme:HFNUYH_m8MU8TKr6ak3tTEXcvfAAIicihdjb1MR1uDG-wH1FhXBUGqRcB2VCH6cG-
    5g_CVUE3jqDbQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrudefjedguddtkecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfhfgggtuggjsehttd
    ertddttddvnecuhfhrohhmpefirhgvghcumffjuceoghhrvghgsehkrhhorghhrdgtohhm
    qeenucggtffrrghtthgvrhhnpeevueehjefgfffgiedvudekvdektdelleelgefhleejie
    eugeegveeuuddukedvteenucfkphepkeefrdekiedrjeegrdeigeenucevlhhushhtvghr
    ufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehgrhgvgheskhhrohgrhhdrtg
    homh
X-ME-Proxy: <xmx:HFNUYESWHE1avnKOwSRytjcc_I_xrsRkXT843xMC1zKLdjpsyOqx4g>
    <xmx:HFNUYBt_wEd5M78XX9KmBGi8jmO1z65jgfn4TBRZ-r5c-6P20cApgA>
    <xmx:HFNUYNckUFKXQE75wM_29CPUhosrBMQoe0d61dl-1ot05KX_Y2yk0g>
    <xmx:HVNUYHprNpzEzaxOyyGWk4BoOHv145LHyN9fkAnsz4ePhnDjlVVS4g>
Date: Fri, 19 Mar 2021 08:30:34 +0100
From: Greg KH <greg@kroah.com>
To: oss-security@lists.openwall.com
Message-ID: <YFRTGpfRTmm566ZQ@kroah.com>
References: <CAKx+4-pR3JScgA-PJFSwkAw6B8xiXYWFtVD6rEYp2wnJjyCogw@mail.gmail.com>
 <YFNCtWmsYrtYQeEJ@kroah.com>
 <YFOLo/QrlgIrFotJ@wopr>
 <YFOc8bhUAKOgjfVS@sashalap>
 <20210318192136.GA6178@openwall.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210318192136.GA6178@openwall.com>
Subject: Re: [oss-security] Re: CVE-2021-20219 Linux kernel: improper
 synchronization in flush_to_ldisc() can lead to DoS

On Thu, Mar 18, 2021 at 08:21:36PM +0100, Solar Designer wrote:
> Greg, I'd appreciate you not repeating the same things over and over -
> such as (roughly) "who is this for" and "why did you assign this CVE
> _now_".  Questioning CVE assignment is reasonable and desirable, but
> only when that is specific (e.g., point out specific reasons why you
> think an issue might not be CVE worthy) and not generic (questioning
> every CVE without giving reasons, or asking why bother with CVE for an
> old issue).  As a moderator, I tell you that the kind of messages Red
> Hat is posting _are_ desirable in here.  They could be more detailed,
> and it's OK to ask for more detail, but it's not OK to discourage their
> posting.  Thank you.

If you look at the 3 RH emails this week for issues, they all contained
misinformation and confused people.  I did not do my usual "why are you
asking for a CVE for an old issue" questions, I asked in one for more
information about the issue involved, and for the other, proper
acknowledgment for the people that reported and fixed the issue as what
was written was entirely incorrect and ignored them.

I asked for that _because_ once these types of "announcements" go out to
the world, my inbox instantly starts filling up with "why isn't this
fixed in a stable kernel." "please tell me what commit fixes this
issue." and the like from users of Linux.  Because the CVE notices are
all still marked "private", doing misleading announcements like this
cause a mini DoS on a number of kernel community members each time.

So until Red Hat starts sending out announcements that are actually
correct and are helpful to the community, I will keep complaining,
because they directly affect me and others that work upstream on the
stable kernel releases.

For an example of how to do a "good" CVE notice, I will point out
Piotr's excellent emails today for CVE-2020-27171 and CVE-2020-27170.
Red Hat could use those as a template of how to write their
announcements in a way that would be useful for us all, and would _not_
cause the upstream kernel developers additional work.

thanks,

greg k-h
