X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2009" "Wednesday" "2" "December" "2015" "09:49:56" "+0100" "Sebastian Krahmer" "krahmer@suse.com" "<20151202084956.GA11762@suse.de>" "56" "Re: [oss-security] Re: CVE Request: dhcpcd 3.x, potentially other versions too" "^Date:" nil nil "12" "2015120208:49:56" "[oss-security] Re: CVE Request: dhcpcd 3.x, potentially other versions too" (number mark "        krahmer@suse Dec  2   56/2009  " thread-indent "\"Re: [oss-security] Re: CVE Request: dhcpcd 3.x, potentially other versions too\"\n") "<20151202075811.GL24908@hunt>" ("<20151202015146.GJ24908@hunt>" "<20151202045847.129B06C0063@smtpvmsrv1.mitre.org>" "<20151202075811.GL24908@hunt>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21508 invoked by uid 550); 2 Dec 2015 08:50:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 20460 invoked from network); 2 Dec 2015 08:50:08 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Message-ID: <20151202084956.GA11762@suse.de>
References: <20151202015146.GJ24908@hunt>
 <20151202045847.129B06C0063@smtpvmsrv1.mitre.org>
 <20151202075811.GL24908@hunt>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20151202075811.GL24908@hunt>
Organization: SUSE Linux GmbH, GF: Felix =?utf-8?Q?Imend?=
 =?utf-8?Q?=F6rffer?= =?utf-8?Q?=2C?= Jane Smithard, Graham Norton, HRB 21284
 (AG Nuernberg)
User-Agent: Outlook
Date: Wed, 2 Dec 2015 09:49:56 +0100
From: Sebastian Krahmer <krahmer@suse.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: CVE Request: dhcpcd 3.x, potentially other
 versions too
To: cve-assign@mitre.org, oss-security@lists.openwall.com,
	guidovranken@gmail.com

Hi

On Tue, Dec 01, 2015 at 11:58:11PM -0800, Seth Arnold wrote:
> On Tue, Dec 01, 2015 at 11:58:47PM -0500, cve-assign@mitre.org wrote:
> > MITRE will assign CVE IDs. Do the above references mean that most of
> > the changed code lines in dhcp.c.patch correspond to out-of-bounds
> > reads shown in the
> > http://roy.marples.name/projects/dhcpcd/fdiff?sbs=1&v1=63689c50411b0920&v2=dad877391ea5b128
> > diff,
> 
> I had expected this part of the diff to address the out-of-bounds writes:
> 
> 		if (out && out != start)
> 			*(out - 1) = ' ';

Ack, looks like heap[-1] OOB write to me.

> 
> > the change from "(l = *q++)" to "(l = *q++) && q - p < len"
> > corresponds to an out-of-bounds write,
> 
> I must confess that I skimmed the protected code block quickly when coming
> to the conclusion that this was out-of-bounds reads -- it's intricate and
> involved and the q - p < len check looked correct. But the memcpy(out,...)
> call does look like it'd also perform out-of-bounds writes.

Recalling from my last analyse, I think this is just an OOB read, because
decode_search() is called with out being NULL to count the amount of data
to be copied later. Unless this data is somehow modified the next call
to decode_search() should have sufficient amount of heap allocated for
the memcpy() to be correct. But the loop has an OOB read when counting
the data (and later when copying it and there wasnt already a SIGSEGV).


> 
> > the deletion of "free
> > (dhcp->dnssearch)" corresponds to a use-after-free, and nothing else
> > in the 2012 part of the http://roy.marples.name reference is a new
> > vulnerability? (This is just a guess.)
> 
> I should point out that it's my summary that it's a use-after-free --
> Guido said in his report that it is a double-free.

I think that both classes are basically the same.

After all, maybe quite challenging to exploit for one-packet client
side.

Sebastian

-- 

~ perl self.pl
~ $_='print"\$_=\47$_\47;eval"';eval
~ krahmer@suse.com - SuSE Security Team

