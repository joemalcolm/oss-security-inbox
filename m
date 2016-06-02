X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1081" "Thursday" "2" "June" "2016" "14:00:51" "+0200" "Marcus Meissner" "meissner@suse.de" "<20160602120051.GL26429@suse.de>" "29" "Re: [oss-security] CVE Request: bad USB host adapter implementation can corrupt memory/brick machine" "^Date:" nil nil "6" "2016060212:00:51" "[oss-security] CVE Request: bad USB host adapter implementation can corrupt memory/brick machine" (number mark "        meissner@sus Jun  2   29/1081  " thread-indent "\"Re: [oss-security] CVE Request: bad USB host adapter implementation can corrupt memory/brick machine\"\n") "<19b69f94-6f96-fc5f-5384-17ee2c399f43@redhat.com>" ("<20160602091013.GD26429@suse.de>" "<19b69f94-6f96-fc5f-5384-17ee2c399f43@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3234 invoked by uid 550); 2 Jun 2016 12:01:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3216 invoked from network); 2 Jun 2016 12:01:03 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Message-ID: <20160602120051.GL26429@suse.de>
References: <20160602091013.GD26429@suse.de>
 <19b69f94-6f96-fc5f-5384-17ee2c399f43@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <19b69f94-6f96-fc5f-5384-17ee2c399f43@redhat.com>
Organization: SUSE Linux GmbH, GF: =?iso-8859-1?Q?Felix_?=
 =?iso-8859-1?Q?Imend=F6rffer=2C_Jane_Smithard=2C_Graham_Norton=2C_HRB_212?=
 =?iso-8859-1?Q?84_=28AG_N=FCrnberg=29?=
User-Agent: Mutt/1.5.21 (2010-09-15)
Date: Thu, 2 Jun 2016 14:00:51 +0200
From: Marcus Meissner <meissner@suse.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE Request: bad USB host adapter implementation
 can corrupt memory/brick machine
To: oss-security@lists.openwall.com

On Thu, Jun 02, 2016 at 01:57:57PM +0200, Adam Maris wrote:
> On 02/06/16 11:10, Marcus Meissner wrote:
> 
> > Hi,
> >
> > reported here:
> >
> > https://marc.info/?l=linux-usb&m=146480770532266&w=2
> >
> > issue is that the Frescologic device id 1009 host controller apparently
> > has a broken XHCI STREAMS implementation which would lead to memory corruptions
> >
> > Redhat might have already assigned a CVE.
> >
> > I am not sure if this is controllable for code execution, but at least USB devices can be used
> > to brick a machine with the kernel running (local denial of service)?
> >
> > Ciao, Marcus
> 
> Red Hat hasn't assigned CVE. Overall, this has only minor security
> implications. Bricking machine doesn't seem to be easily reproducible,
> since on the second tested mobo it merely showed as a random memory
> corruption and hard locked system. It requires specific class of
> external usb devices getting plugged into machine with specific broken
> xhci controller.

Hmm. Yes, if it cannot be attacker driven, then we could consider it a bug only.

Ciao, Marcus
