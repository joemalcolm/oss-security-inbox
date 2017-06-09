X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1677" "Friday" "9" "June" "2017" "18:27:29" "+0200" "Solar Designer" "solar@openwall.com" "<20170609162729.GA2535@openwall.com>" "43" "Re: [oss-security] Vixie/ISC Cron group crontab to root escalation" "^Date:" nil nil "6" "2017060916:27:29" "[oss-security] Vixie/ISC Cron group crontab to root escalation" (number mark "        solar@openwa Jun  9   43/1677  " thread-indent "\"Re: [oss-security] Vixie/ISC Cron group crontab to root escalation\"\n") "<20170609154755.2597617FDAB@rebar.astron.com>" ("<20170608180534.GA27098@openwall.com>" "<20170609154755.2597617FDAB@rebar.astron.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24544 invoked by uid 550); 9 Jun 2017 16:28:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24163 invoked from network); 9 Jun 2017 16:27:44 -0000
Message-ID: <20170609162729.GA2535@openwall.com>
References: <20170608180534.GA27098@openwall.com> <20170609154755.2597617FDAB@rebar.astron.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170609154755.2597617FDAB@rebar.astron.com>
User-Agent: Mutt/1.4.2.3i
Date: Fri, 9 Jun 2017 18:27:29 +0200
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Vixie/ISC Cron group crontab to root escalation
To: oss-security@lists.openwall.com

On Fri, Jun 09, 2017 at 11:47:55AM -0400, Christos Zoulas wrote:
> In this patch:
> http://cvsweb.openwall.com/cgi/cvsweb.cgi/Owl/packages/vixie-cron/vixie-cron-4.1.20040916-owl-crond.diff
> 
> Why do:
> 
> +	if (lstat(tabname, &lstatbuf) < OK) {
> +		log_it(fname, getpid(), "CAN'T LSTAT", tabname);
> +		goto next_crontab;
> +	}
> +	if (!S_ISREG(lstatbuf.st_mode)) {
> +		log_it(fname, getpid(), "NOT REGULAR", tabname);
> +		goto next_crontab;
> +	}
> +	if ((!pw && (lstatbuf.st_mode & 07533) != 0400) ||
> +	    (pw && (lstatbuf.st_mode & 07577) != 0400)) {
> +		log_it(fname, getpid(), "BAD FILE MODE", tabname);
> +		goto next_crontab;
> +	}
> +	if (lstatbuf.st_nlink != 1) {
> +		log_it(fname, getpid(), "BAD LINK COUNT", tabname);
> +		goto next_crontab;
> +	}
> +
>  	if ((crontab_fd = open(tabname, O_RDONLY|O_NONBLOCK|O_NOFOLLOW, 0)) < OK) {
>  		/* crontab not accessible?
>  		 */
> 
> Instead of doing the open first and then fstat(2) to prevent TOCTOU?

Oh, I did in fact mention this in the private discussion, so I'll quote:

| Another detail: somehow in Owl we introduced lstat() prior to open, and
| check lstat()'s struct for all the required properties before proceeding
| with open() with O_NOFOLLOW.  Then we check that st_dev/st_ino stayed
| the same.  We also kept the post-open() checks.  I don't recall exactly
| why we added this, but maybe because of the possibility of side-effects
| on open() for hard links to device files (like with tape drives).  And
| it looks like we neglected to add the same for at jobs (perhaps didn't
| revisit this when support for at jobs appeared via our update to later
| OpenBSD code) - maybe we should.

Alexander
