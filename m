X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["609" "Monday" "4" "September" "2017" "14:41:07" "+0200" "Marcus Meissner" "meissner@suse.de" "<20170904124107.GB6792@suse.de>" "16" "Re: [oss-security] CVE-2017-1000083: evince: Command injection vulnerability in CBT handler" nil nil nil "9" "2017090412:41:07" "[oss-security] CVE-2017-1000083: evince: Command injection vulnerability in CBT handler" (number mark "U       meissner@sus Sep  4   16/609   " thread-indent "\"Re: [oss-security] CVE-2017-1000083: evince: Command injection vulnerability in CBT handler\"\n") "<C6395DC7-CB29-4844-9EB0-E572C7AAAE81@gmail.com>" ("<20170713154344.GG21662@suse.com>" "<C6395DC7-CB29-4844-9EB0-E572C7AAAE81@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11340 invoked by uid 550); 4 Sep 2017 12:41:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11316 invoked from network); 4 Sep 2017 12:41:19 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Mon, 4 Sep 2017 14:41:07 +0200
From: Marcus Meissner <meissner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <20170904124107.GB6792@suse.de>
References: <20170713154344.GG21662@suse.com>
 <C6395DC7-CB29-4844-9EB0-E572C7AAAE81@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <C6395DC7-CB29-4844-9EB0-E572C7AAAE81@gmail.com>
Organization: SUSE Linux GmbH, GF: =?iso-8859-1?Q?Felix_?=
 =?iso-8859-1?Q?Imend=F6rffer=2C_Jane_Smithard=2C_Graham_Norton=2C_HRB_212?=
 =?iso-8859-1?Q?84_=28AG_N=FCrnberg=29?=
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [oss-security] CVE-2017-1000083: evince: Command injection
 vulnerability in CBT handler

> > This can be exploited by creating a tar archive with an embedded file
> > named something
> > like this: "--checkpoint-action=exec=bash -c 'touch ~/covfefe.evince;'.jpg"
> > 
> > (Make sure evince is not sandboxed by apparmor before trying to reproduce
> > the attached POC)
> 
> Not sure if the list ate the attachment, but I don’t see it available. Perhaps a link to it somewhere else would be of use?

Sebastian Krahmer of SUSE recreated one that starts xeyes.

https://bugzilla.suse.com/show_bug.cgi?id=1046856

	( attachment link https://bugzilla.suse.com/attachment.cgi?id=739314 ) 

Ciao, Marcus
