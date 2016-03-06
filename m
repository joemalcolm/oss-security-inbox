X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1850" "Sunday" "6" "March" "2016" "13:29:59" "+0300" "Solar Designer" "solar@openwall.com" "<20160306102959.GA26781@openwall.com>" "44" "Re: [oss-security] Concerns about CVE coverage shrinking - direct impact to researchers/companies" "^Date:" nil nil "3" "2016030610:29:59" "[oss-security] Concerns about CVE coverage shrinking - direct impact to researchers/companies" (number mark "        solar@openwa Mar  6   44/1850  " thread-indent "\"Re: [oss-security] Concerns about CVE coverage shrinking - direct impact to researchers/companies\"\n") "<20160306062700.GA25289@gremlin.ru>" ("<CANO=Ty3u964Yax4jMPkwDEiWj=S5TBQdGKarKyicVAk2Ec+Hxw@mail.gmail.com>" "<56D9DD1F.1030302@cert.org>" "<20160305172039.GA20796@openwall.com>" "<20160306062700.GA25289@gremlin.ru>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9388 invoked by uid 550); 6 Mar 2016 10:30:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9360 invoked from network); 6 Mar 2016 10:30:02 -0000
Message-ID: <20160306102959.GA26781@openwall.com>
References: <CANO=Ty3u964Yax4jMPkwDEiWj=S5TBQdGKarKyicVAk2Ec+Hxw@mail.gmail.com> <56D9DD1F.1030302@cert.org> <20160305172039.GA20796@openwall.com> <20160306062700.GA25289@gremlin.ru>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160306062700.GA25289@gremlin.ru>
User-Agent: Mutt/1.4.2.3i
Date: Sun, 6 Mar 2016 13:29:59 +0300
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Concerns about CVE coverage shrinking - direct impact to researchers/companies
To: oss-security@lists.openwall.com

On Sun, Mar 06, 2016 at 09:27:00AM +0300, gremlin@gremlin.ru wrote:
> On 2016-03-05 20:20:39 +0300, Solar Designer wrote:
>  > Problem solved:
>  > http://www.openwall.com/ove
> 
> Hmmm... sorry to say, but I've garbaged 21 IDs by simply visiting
> this page and reloading it twice just to see what would happen :-)

A few people said they felt sorry about that, but I think this is
actually OK.

> So I'd suggest adding a BRB (Big Red Button) for those who actually
> need an ID,

I had thought of that and decided to do without it for now.  (Also
considered captcha.)  I like to emphasize how very easy it is to obtain
OVE IDs.  Not even having to click a button serves that goal well.

I don't mind adding a button a bit later, though.  We'll see.

> and displaying some statistics ("1234 IDs were assigned
> today") for everyone else.

This is currently available through OVE IDs themselves - they are
sequential, starting with 0001 at midnight UTC.

>  > Having IDs is of some use even without or before all of that.
> 
> Yes. So prepare for the above link to become really popular.

As it is, it should survive quite a few thousand of unique IPs per day
(and yes, it temporarily records per IP address statistics, and it has
per-IP and per-netblock limits), before (gradually) denying service for
the rest of the day.  It might or might not survive a Slashdot-alike
event, but even if not then waiting a day for the next batch of IDs is
quicker than waiting weeks for CVE IDs.

BTW, there is not a hard-coded limit of 9999.  There is logic in place
to try and keep the daily IDs within 9999 (the service becomes less
generous as the 4-digit space gets closer to being exhausted), but if
the requests and unique IPs are too numerous this may be crossed anyway,
resulting in 5- or 6-digit IDs (and going back to 4-digit the next day).

Alexander
