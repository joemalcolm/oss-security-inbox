X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1225" "Tuesday" "3" "October" "2017" "17:33:40" "+0200" "Greg KH" "greg@kroah.com" "<20171003153340.GA26029@kroah.com>" "35" "Re: [oss-security] Linux kernel CVEs not mentioned on oss-security" "^Date:" nil nil "10" "2017100315:33:40" "[oss-security] Linux kernel CVEs not mentioned on oss-security" (number mark "        greg@kroah.c Oct  3   35/1225  " thread-indent "\"Re: [oss-security] Linux kernel CVEs not mentioned on oss-security\"\n") "<CANO=Ty0NXSozVQfV9hkPkLH2Yc1h1WzGGovG8OpYdvTSX1+Gtw@mail.gmail.com>" ("<4188502.8b3PN4uBSd@wanheda>" "<20170926150446.GA11530@kroah.com>" "<CAADPF4OszZShcGb+x79UZQzBT3XONwNH6E970MVwrUdXyJDmiw@mail.gmail.com>" "<20170927125149.GA2500@openwall.com>" "<20170927130424.GA19695@kroah.com>" "<20170928073533.mlntvkfnzl6sann7@eldamar.local>" "<20170928143420.GB6123@kroah.com>" "<20170928213721.GA5119@grsecurity.net>" "<20171003112709.GA30134@kroah.com>" "<CANO=Ty0NXSozVQfV9hkPkLH2Yc1h1WzGGovG8OpYdvTSX1+Gtw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30199 invoked by uid 550); 3 Oct 2017 15:33:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30178 invoked from network); 3 Oct 2017 15:33:42 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-sender
	:x-me-sender:x-sasl-enc:x-sasl-enc; s=fm1; bh=mzEmJHsRU977Yh3fCm
	uyYHIE3Hd49fU4tmPBAI854ZA=; b=BnzHMh2XvZEv4kGgmJLpUUorT3lt1Or9MJ
	0ksOLHm/QXMplp7O4NnThNFd06wj43JtRyXJMnplFYZa4f/kKcbkNWsjdwngo0Z9
	ZXOmwjP3auP+XuZ0CCTxONdokbYrIoR1I33Set7L/MMYGX4DjCX3bcBSLGt0Ubef
	eTANcmX4XntyfJPcpWafcOpjpSgpXY8TEJRMVWo56OUyVL9+fUKG9kkRvHUVPjCv
	cDJlyhNTlcPfJNdBAV4l+SjBsfQ5CRukCiMCraPbxug6tPzzkbN8bzB/rBEYKLyc
	LrRk/nJQ2X5aY5q+ACtgix5Mpo5pqqulE4Td9CV5JtGK3aC5K+HA==
X-ME-Sender: <xms:yq3TWbbO131Mv69TWeDkyeZWL7yYPJQPQ10WgYy13L6uPxZAcSpdhw>
X-Sasl-enc: 18ZAsXwxK6zaDNRwq36JoqoESVJV94qDp/1eR64lz+8S 1507044810
Message-ID: <20171003153340.GA26029@kroah.com>
References: <4188502.8b3PN4uBSd@wanheda>
 <20170926150446.GA11530@kroah.com>
 <CAADPF4OszZShcGb+x79UZQzBT3XONwNH6E970MVwrUdXyJDmiw@mail.gmail.com>
 <20170927125149.GA2500@openwall.com>
 <20170927130424.GA19695@kroah.com>
 <20170928073533.mlntvkfnzl6sann7@eldamar.local>
 <20170928143420.GB6123@kroah.com>
 <20170928213721.GA5119@grsecurity.net>
 <20171003112709.GA30134@kroah.com>
 <CANO=Ty0NXSozVQfV9hkPkLH2Yc1h1WzGGovG8OpYdvTSX1+Gtw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CANO=Ty0NXSozVQfV9hkPkLH2Yc1h1WzGGovG8OpYdvTSX1+Gtw@mail.gmail.com>
User-Agent: Mutt/1.9.1 (2017-09-22)
Date: Tue, 3 Oct 2017 17:33:40 +0200
From: Greg KH <greg@kroah.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux kernel CVEs not mentioned on oss-security
To: oss-security@lists.openwall.com

On Tue, Oct 03, 2017 at 09:00:38AM -0600, Kurt Seifried wrote:
> On Tue, Oct 3, 2017 at 5:27 AM, Greg KH <greg@kroah.com> wrote:
> 
> >
> >
> > Yeah, this one keeps trying to get re-introduced as a "fix", when it
> > really isn't (see the archives of the stable@vger mailing list for
> > details.
> >
> > I don't know how you can "reject" a CVE, is there a proceedure
> > somewhere?  There's lots of CVEs out there that people create against
> > the kernel that just aren't issues at all, but I've been ignoring them
> > as it makes people happy to assign and track them for no reason.
> 
> 
> > Is there some way a project can get them rejected?
> >
> 
> As mentioned before, there is the cveform page at https://cveform.mitre.org/
> which can be used to update CVEs, including asking for REJECT. Simply chose
> "Request an update to an existing CVE entry" then in "Type of update
> requested" please choose "Rejection".
> 
> AN EASY WAY TO INTERACT WITH CVE TO UPDATE/REJECT/ETC PLEASE IS TO USE THE
> CVEFORM.
> 
> CVEFORM URL: https://cveform.mitre.org/

Well, it's not as easy as using email, but ok, I've attempted to submit
a "reject this CVE" for the above mentioned one, let's see what happens
:)

thanks,

greg k-h
