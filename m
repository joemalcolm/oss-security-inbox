X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1757" "Monday" "22" "August" "2016" "17:24:49" "+0200" "Marcus Meissner" "meissner@suse.de" "<20160822152448.GC3132@suse.de>" "44" "Re: [oss-security] Re: CVE Request: Linux kernel crash of OHCI when plugging in malicious USB devices" "^Cc:" nil nil "8" "2016082215:24:49" "[oss-security] Re: CVE Request: Linux kernel crash of OHCI when plugging in malicious USB devices" (number mark "        meissner@sus Aug 22   44/1757  " thread-indent "\"Re: [oss-security] Re: CVE Request: Linux kernel crash of OHCI when plugging in malicious USB devices\"\n") "<20160818195024.GB17944@1wt.eu>" ("<20160818142216.GH2701@suse.de>" "<20160818143014.GA27854@kroah.com>" "<20160818143957.GI2701@suse.de>" "<20160818145724.GA32181@kroah.com>" "<20160818151654.GK2701@suse.de>" "<1471538630.13300.95.camel@decadent.org.uk>" "<3385bcd9-629a-5978-abfa-87cae962deb2@redhat.com>" "<20160818195024.GB17944@1wt.eu>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 20435 invoked by uid 550); 22 Aug 2016 15:25:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 20417 invoked from network); 22 Aug 2016 15:25:01 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Message-ID: <20160822152448.GC3132@suse.de>
References: <20160818142216.GH2701@suse.de>
 <20160818143014.GA27854@kroah.com>
 <20160818143957.GI2701@suse.de>
 <20160818145724.GA32181@kroah.com>
 <20160818151654.GK2701@suse.de>
 <1471538630.13300.95.camel@decadent.org.uk>
 <3385bcd9-629a-5978-abfa-87cae962deb2@redhat.com>
 <20160818195024.GB17944@1wt.eu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160818195024.GB17944@1wt.eu>
Organization: SUSE Linux GmbH, GF: =?iso-8859-1?Q?Felix_?=
 =?iso-8859-1?Q?Imend=F6rffer=2C_Jane_Smithard=2C_Graham_Norton=2C_HRB_212?=
 =?iso-8859-1?Q?84_=28AG_N=FCrnberg=29?=
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: Adam Maris <amaris@redhat.com>, Greg KH <greg@kroah.com>,
	cve-assign@mitre.org, security@kernel.org
Date: Mon, 22 Aug 2016 17:24:49 +0200
From: Marcus Meissner <meissner@suse.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: CVE Request: Linux kernel crash of OHCI when
 plugging in malicious USB devices
To: oss-security@lists.openwall.com

Hi,

This seems a bit sore topic, and Mitre does not want to chime in.

Perhaps we need to add more criteria to select CVE assignment.

- simple DOS (e.g. NULL ptr dereference) when plugging in: No CVE
- code execution (use after free, write overflows) when plugging in: Assign CVE


That said, this leaves malicious USB devices posing as regular keyboards 
for text injection unclassified ... 

Ciao, Marcus

On Thu, Aug 18, 2016 at 09:50:24PM +0200, Willy Tarreau wrote:
> On Thu, Aug 18, 2016 at 08:16:27PM +0200, Adam Maris wrote:
> > Attacker doesn't necessarily need to have physical access to USB port. He
> > can somehow
> > hand USB off to the victim that will with good intentions stick it to his
> > USB port, unexpectedly
> > causing kernel panic. Difference is that one probably wouldn't pour glue or
> > corrosive liquid
> > into his USB port believing that nothing bad will happen.
> 
> Well, it happened to me when I was a kid, with a PS/2 port. I handed off
> a device to someone of trust to connect to the PS/2 port and parallel port.
> (PS/2 to pick the +5V). I wired it wrong and the motherboard died, as
> amazing as it seems and the person didn't find it fun as it was not his PC.
> 
> So yes it can be done even without suspecting. It's easy to do whatever you
> want using a USB stick. You can use the 3W it provides to charge a 300V
> capacitor and discharge it on the D+/D- to test the clamping diodes
> robustness, etc...
> 
> Thus I don't think either that something "only causing a panic" deserves
> a CVE. It needs to be fixed however, for sure!
> 
> Regards,
> Willy
> 

-- 
Marcus Meissner,SUSE LINUX GmbH; Maxfeldstrasse 5; D-90409 Nuernberg; Zi. 3.1-33,+49-911-740 53-432,,serv=loki,mail=wotan,type=real <meissner@suse.de>
