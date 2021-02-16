X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1351" "Tuesday" "16" "February" "2021" "14:12:50" "+0100" "Solar Designer" "solar@openwall.com" nil "31" "Re: [oss-security] 2021-01 stats" nil nil nil "2" nil nil (number mark "U       solar@openwa Feb 16   31/1351  " thread-indent "\"Re: [oss-security] 2021-01 stats\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] 2021-01 stats" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11709 invoked by uid 550); 16 Feb 2021 13:13:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11492 invoked from network); 16 Feb 2021 13:12:55 -0000
Date: Tue, 16 Feb 2021 14:12:50 +0100
From: Solar Designer <solar@openwall.com>
To: "Fuller, Abby" <abbyfull@amazon.com>
Cc: oss-security@lists.openwall.com
Message-ID: <20210216131249.GA28858@openwall.com>
References: <5AD4FFC2-6E4A-44C4-92A9-8203C9244484@amazon.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5AD4FFC2-6E4A-44C4-92A9-8203C9244484@amazon.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] 2021-01 stats

Hi Abby,

On Tue, Feb 16, 2021 at 12:05:36AM +0000, Fuller, Abby wrote:
> 2021-01 stats are up on the wiki: https://oss-security.openwall.org/wiki/mailing-lists/distros/stats

Thank you for starting to work on this!  Please make these changes:

1. Add the raw data (to the end of the Data section, or to a new wiki
sub-page) corresponding to these statistics you added.  Otherwise they
can't be verified.

2. Move the 2021-01 column to its own table, which you'd then use for
all of 2021.  In general, I suggest that we have one table per calendar
year, and have per-year totals and averages (in addition to per-month).

(Also, I am still hoping Yury German will complete the table for 2019
and create one for 2020.)

3. "These statistics are updated as of 2021-02-15 23:56 (UTC)" isn't
what it should say.  This is when you made the update, but the
statistics are only for issues up to the end of January and exclude any
issues that are being handled in February (some of those not yet
public).  So this should say e.g. "2021-01-31 23:59 (UTC)" if that's the
cut-off date/time for the issues you included.  Alternatively, you can
drop this line altogether since it's implied that the statistics are
published for full months and since there's a gap (so the statistics
are not really updated for the entire dates range yet).

Thanks again,

Alexander
