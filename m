X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2080" "Tuesday" "31" "October" "2017" "14:20:34" "+0000" "Jason Cooper" "osssecurity@lakedaemon.net" "<20171031142034.GJ31388@io.lakedaemon.net>" "52" "Re: [oss-security] Fw: Security risk of vim swap files" "^Date:" nil nil "10" "2017103114:20:34" "[oss-security] Fw: Security risk of vim swap files" (number mark "        osssecurity@ Oct 31   52/2080  " thread-indent "\"Re: [oss-security] Fw: Security risk of vim swap files\"\n") "<20171031132352.2df6d2ad@pc1>" ("<20171031132352.2df6d2ad@pc1>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7804 invoked by uid 550); 31 Oct 2017 15:17:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5679 invoked from network); 31 Oct 2017 14:20:49 -0000
X-MHO-User: b6e64d47-be46-11e7-a938-4f970e858fdb
X-Report-Abuse-To: https://support.duocircle.com/support/solutions/articles/5000540958-duocircle-standard-smtp-abuse-information
X-Originating-IP: 108.39.34.239
X-Mail-Handler: DuoCircle Outbound SMTP
X-DKIM: OpenDKIM Filter v2.6.8 io 9845B8012B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lakedaemon.net;
	s=mail; t=1509459634;
	bh=8CZBYPZqZZZXd+UTD5mzKni61Qe7QVhjoQCR69kbKds=;
	h=Date:From:To:Subject:References:In-Reply-To;
	b=qYl6abdHQ7TnstZLYMum6ERTV84fgVh4Bz9gIu8bbR6lR9YqC9PR1Y2sM/GEZaNNj
	 CKBKYtmW2G4XG9mIz7rHLPWGOC/XxCZ3B/nBpeBEove7EYdxGV4T8VNyfSPZUasqwd
	 1aQJ1JzVciymvuBw5PLrSdKIeWD4MBsIyv3D02fOIkWFpuLKNKMCxqmlHmRjRTJiZY
	 dh/mNrai1199KJOxPCisNIB854f6SxxnHDWE75PfkELjrtBAbdj1fuCOuJ9GYrqwus
	 Slov+Iiq657KJnb6WsaEV+FNSnkJAooUWjz8wIo5izd53BcijQh8dF7wTNNJ/D5gaw
	 fMOoush4sX4FA==
Message-ID: <20171031142034.GJ31388@io.lakedaemon.net>
References: <20171031132352.2df6d2ad@pc1>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20171031132352.2df6d2ad@pc1>
User-Agent: Mutt/1.5.21 (2010-09-15)
Date: Tue, 31 Oct 2017 14:20:34 +0000
From: Jason Cooper <osssecurity@lakedaemon.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Fw: Security risk of vim swap files
To: oss-security@lists.openwall.com

Hi Hanno,

On Tue, Oct 31, 2017 at 01:23:52PM +0100, Hanno Böck wrote:
> I think vim should change the behavior of swap files:
> 1. they should be stored in /tmp by default

This opens up a host of other issues, which others have highlighted.

> 2. they should have secure permissions (tmp file security is
> a tricky thing and needs careful consideration to avoid symlink attacks
> and the like, but there are dedicated functions for this like mkstemp).

This is only if you move to /tmp.

> 3. Ideally they also shouldn't leak currently edited filenames (e.g.
> they shouldn't be called /tmp/.test.txt.swp, but more something
> like /tmp/.vim_swap.123782173)

Adding this requirement begs for a Rube Goldberg solution.  :-)  Since
vim needs a deterministic name to search for when it opens the file the
next time.  And next time could be after a reboot.

Maybe we just need to change the default backup pattern to something
that isn't hidden by default?  e.g. wp-config.php.swp (no leading
period), or wp-config.php~ ?  Thus, it's more likely to be caught by the
developer.

Honestly, The real problem is just webserver design in general.  In
order to have automatic reboot/restart, you need to grossly compromise
security in several ways.

  a) store the server ssl key on disk without a password.
  b) store passwords in the clear in config files, readable by the
     running server user.

The real answer is "Don't do that."  Which, years ago, was really
infeasible since most servers were physically hosted and redundancy was
expensive.

But we're not there anymore.  Wether you use a caching provider like
cloudflare, or a hosting service using VMs, there's plenty of cheap
redundancy.  Having an individual box down doesn't mean your site is
down.  So, this gives us some wiggle room to ask for a password to
decrypt the key (or, load from remote), and provide credentials for the
server to access other resources.

But, I digress.  Yes, vim swap files are a problem.  But only because
we've built stupid decisions (necessary at one time) into the design.

thx,

Jason.
