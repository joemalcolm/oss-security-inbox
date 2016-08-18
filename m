X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1077" "Thursday" "18" "August" "2016" "21:50:24" "+0200" "Willy Tarreau" "w@1wt.eu" "<20160818195024.GB17944@1wt.eu>" "24" "Re: [oss-security] Re: CVE Request: Linux kernel crash of OHCI when plugging in malicious USB devices" "^Cc:" nil nil "8" "2016081819:50:24" "[oss-security] Re: CVE Request: Linux kernel crash of OHCI when plugging in malicious USB devices" (number mark "        w@1wt.eu     Aug 18   24/1077  " thread-indent "\"Re: [oss-security] Re: CVE Request: Linux kernel crash of OHCI when plugging in malicious USB devices\"\n") "<3385bcd9-629a-5978-abfa-87cae962deb2@redhat.com>" ("<20160818142216.GH2701@suse.de>" "<20160818143014.GA27854@kroah.com>" "<20160818143957.GI2701@suse.de>" "<20160818145724.GA32181@kroah.com>" "<20160818151654.GK2701@suse.de>" "<1471538630.13300.95.camel@decadent.org.uk>" "<3385bcd9-629a-5978-abfa-87cae962deb2@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1756 invoked by uid 550); 18 Aug 2016 20:01:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30276 invoked from network); 18 Aug 2016 19:50:44 -0000
Message-ID: <20160818195024.GB17944@1wt.eu>
References: <20160818142216.GH2701@suse.de>
 <20160818143014.GA27854@kroah.com>
 <20160818143957.GI2701@suse.de>
 <20160818145724.GA32181@kroah.com>
 <20160818151654.GK2701@suse.de>
 <1471538630.13300.95.camel@decadent.org.uk>
 <3385bcd9-629a-5978-abfa-87cae962deb2@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3385bcd9-629a-5978-abfa-87cae962deb2@redhat.com>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: oss-security@lists.openwall.com, Marcus Meissner <meissner@suse.de>,
        Greg KH <greg@kroah.com>, cve-assign@mitre.org, security@kernel.org
Date: Thu, 18 Aug 2016 21:50:24 +0200
From: Willy Tarreau <w@1wt.eu>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: CVE Request: Linux kernel crash of OHCI when
 plugging in malicious USB devices
To: Adam Maris <amaris@redhat.com>

On Thu, Aug 18, 2016 at 08:16:27PM +0200, Adam Maris wrote:
> Attacker doesn't necessarily need to have physical access to USB port. He
> can somehow
> hand USB off to the victim that will with good intentions stick it to his
> USB port, unexpectedly
> causing kernel panic. Difference is that one probably wouldn't pour glue or
> corrosive liquid
> into his USB port believing that nothing bad will happen.

Well, it happened to me when I was a kid, with a PS/2 port. I handed off
a device to someone of trust to connect to the PS/2 port and parallel port.
(PS/2 to pick the +5V). I wired it wrong and the motherboard died, as
amazing as it seems and the person didn't find it fun as it was not his PC.

So yes it can be done even without suspecting. It's easy to do whatever you
want using a USB stick. You can use the 3W it provides to charge a 300V
capacitor and discharge it on the D+/D- to test the clamping diodes
robustness, etc...

Thus I don't think either that something "only causing a panic" deserves
a CVE. It needs to be fixed however, for sure!

Regards,
Willy
