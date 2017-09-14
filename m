X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["958" "Thursday" "14" "September" "2017" "08:24:45" "+0100" "Simon McVittie" "smcv@debian.org" "<20170914072445.bq2r6vtcnxietd4j@perpetual.pseudorandom.co.uk>" "21" "Re: [oss-security] mp3gain: NULL pointer dereference in sync_buffer (mpglibDBL/interface.c)" "^Date:" nil nil "9" "2017091407:24:45" "[oss-security] mp3gain: NULL pointer dereference in sync_buffer (mpglibDBL/interface.c)" (number mark "U       smcv@debian. Sep 14   21/958   " thread-indent "\"Re: [oss-security] mp3gain: NULL pointer dereference in sync_buffer (mpglibDBL/interface.c)\"\n") "<427445.19640425-sendEmail@localhost>" ("<427445.19640425-sendEmail@localhost>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9298 invoked by uid 550); 14 Sep 2017 07:25:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9280 invoked from network); 14 Sep 2017 07:25:18 -0000
Message-ID: <20170914072445.bq2r6vtcnxietd4j@perpetual.pseudorandom.co.uk>
References: <427445.19640425-sendEmail@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <427445.19640425-sendEmail@localhost>
User-Agent: NeoMutt/20170609 (1.8.3)
Date: Thu, 14 Sep 2017 08:24:45 +0100
From: Simon McVittie <smcv@debian.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] mp3gain: NULL pointer dereference in sync_buffer
 (mpglibDBL/interface.c)
To: oss-security@lists.openwall.com

On Thu, 14 Sep 2017 at 07:00:25 +0000, Agostino Sarubbo wrote:
> The fuzz was done via the aacgain command-line tool which uses mp3gain
> which bundles an old-modified version of mpg123 called mpglibDBL.

I wouldn't recommend putting effort into fuzzing mp3gain. mpglibDBL
is known to have security vulnerabilities anyway:
https://security-tracker.debian.org/tracker/source-package/mp3gain
(I wonder whether you've rediscovered those, or found new vulnerabilities?)

It probably also suffers from most other historical vulnerabilities
that are listed for mpg123. We removed it from Debian in 2014,
with a recommendation to use the rgain Python package instead:
https://tracker.debian.org/pkg/rgain

rgain uses libmad or ffmpeg via GStreamer for decoding, so it isn't
exactly bug-free either; but those libraries are actively maintained,
and when they have vulnerabilities, they'd need to be fixed anyway for
the benefit of other packages.

Regards,
    smcv
