X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["823" "Thursday" "18" "January" "2018" "15:58:43" "-0500" "Rich Felker" "dalias@libc.org" "<20180118205843.GR1627@brightrain.aerifal.cx>" "18" "Re: [oss-security] How to deal with reporters who don't want their bugs fixed?" "^Date:" nil nil "1" "2018011820:58:43" "[oss-security] How to deal with reporters who don't want their bugs fixed?" (number mark "        dalias@libc. Jan 18   18/823   " thread-indent "\"Re: [oss-security] How to deal with reporters who don't want their bugs fixed?\"\n") "<07f40446-1917-893c-2a87-b0d7990579b2@redhat.com>" ("<07f40446-1917-893c-2a87-b0d7990579b2@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5934 invoked by uid 550); 18 Jan 2018 21:00:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3179 invoked from network); 18 Jan 2018 20:58:55 -0000
Message-ID: <20180118205843.GR1627@brightrain.aerifal.cx>
References: <07f40446-1917-893c-2a87-b0d7990579b2@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <07f40446-1917-893c-2a87-b0d7990579b2@redhat.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Date: Thu, 18 Jan 2018 15:58:43 -0500
From: Rich Felker <dalias@libc.org>
Reply-To: oss-security@lists.openwall.com
Sender: Rich Felker <dalias@aerifal.cx>
Subject: Re: [oss-security] How to deal with reporters who don't want their
 bugs fixed?
To: oss-security@lists.openwall.com

On Thu, Jan 18, 2018 at 05:10:05PM +0100, Florian Weimer wrote:
> Subject says it all: What do you do if you receive a vulnerability
> report, and the reporter requests an embargo at some time in the
> future because that's when their paper/conference
> presentation/patent submission is scheduled?
> 
> The obvious approach is to find a prior public report of essentially
> the same bug and fix that (which will work surprisingly often), but
> let's assume that this isn't the case.

Assuming there is no good reason for the embargo (like coordination
with other affected parties), ignore the embargo, fix the bug, and
report the behavior to the conference. Conferences should adopt
policies not to host speakers who request that users be left
unprotected for any extended period for the sake of their own ego
trip.

Rich
