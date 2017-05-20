X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1543" "Saturday" "20" "May" "2017" "13:21:52" "-0500" "Bob Friesenhahn" "bfriesen@simple.dallas.tx.us" "<alpine.GSO.2.20.1705201313250.6623@freddy.simplesystems.org>" "32" "Re: [oss-security] Re: ImageMagick: CVE-2017-9098: use of uninitialized memory in RLE decoder" "^Date:" nil nil "5" "2017052018:21:52" "[oss-security] Re: ImageMagick: CVE-2017-9098: use of uninitialized memory in RLE decoder" (number mark "        bfriesen@sim May 20   32/1543  " thread-indent "\"Re: [oss-security] Re: ImageMagick: CVE-2017-9098: use of uninitialized memory in RLE decoder\"\n") "<20170520175436.GA30962@jasmine>" ("<20170520072632.z5nbivrdwmqm3soe@eldamar.local>" "<20170520152406.2339.3B884775@matica.foolinux.mooo.com>" "<20170520175436.GA30962@jasmine>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9987 invoked by uid 550); 20 May 2017 18:22:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9966 invoked from network); 20 May 2017 18:22:05 -0000
X-X-Sender: bfriesen@freddy.simplesystems.org
In-Reply-To: <20170520175436.GA30962@jasmine>
Message-ID: <alpine.GSO.2.20.1705201313250.6623@freddy.simplesystems.org>
References: <20170520072632.z5nbivrdwmqm3soe@eldamar.local> <20170520152406.2339.3B884775@matica.foolinux.mooo.com> <20170520175436.GA30962@jasmine>
User-Agent: Alpine 2.20 (GSO 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII; format=flowed
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (smtp.simplesystems.org [65.66.246.90]); Sat, 20 May 2017 13:21:52 -0500 (CDT)
Date: Sat, 20 May 2017 13:21:52 -0500 (CDT)
From: Bob Friesenhahn <bfriesen@simple.dallas.tx.us>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: ImageMagick: CVE-2017-9098: use of uninitialized
 memory in RLE decoder
To: oss-security@lists.openwall.com

On Sat, 20 May 2017, Leo Famulari wrote:
>
> Chris Evans' report (copied in the email you replied to) says this:
>
> GraphicsMagick vs. ImageMagick, again. Well, well, look at this :)
> GraphicsMagick fixed this issue in March 2016, for the v1.3.24 release, tucked
> away in a changeset titled "Fix SourceForge bug #371 "out-of-bounds read in
> coders/rle.c:633:39" (see the second memset()). This is another case where tons
> of vulnerabilities are being found and fixed in both GraphicsMagick and
> ImageMagick with little co-ordination. This seems like a waste of effort and a
> risk of 0-day (or is it 1-day?) exposure. It goes both ways: the RLE memory
> corruption I referenced in my previous blog post was only fixed in
> GraphicsMagick in March 2016, having been previously fixed in ImageMagick in
> Dec 2014.

There is no co-ordination between the two projects and they have been 
independent for 15 years already.  This in spite of one developer 
being a member of both projects, and some contributions to 
GraphicsMagick from heavy ImageMagick contributors.

Regardless, it is difficult for someone such as myself to know the 
possible significance of each of the many issues which are fixed other 
than obvious issues such as shell exploits and DOS.

There is old code which was common at the time of the fork but many 
issues pertain to newer code which is not common.

Bob
-- 
Bob Friesenhahn
bfriesen@simple.dallas.tx.us, http://www.simplesystems.org/users/bfriesen/
GraphicsMagick Maintainer,    http://www.GraphicsMagick.org/
