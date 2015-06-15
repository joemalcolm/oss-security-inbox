X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1303" "Monday" "15" "June" "2015" "20:26:32" "+0200" "Bastian Blank" "waldi@debian.org" "<20150615182632.GA22032@mail.waldi.eu.org>" "28" "Re: [oss-security] PostgreSQL - Predictable cancel key" nil nil nil "6" "2015061518:26:32" "[oss-security] PostgreSQL - Predictable cancel key" (number mark "        waldi@debian Jun 15   28/1303  " thread-indent "\"Re: [oss-security] PostgreSQL - Predictable cancel key\"\n") "<557E8DA5.6080707@reactos.org>" ("<20150613093351.GF11230@mail.waldi.eu.org>" "<557E8DA5.6080707@reactos.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 27919 invoked by uid 550); 15 Jun 2015 18:26:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 27897 invoked from network); 15 Jun 2015 18:26:44 -0000
Message-ID: <20150615182632.GA22032@mail.waldi.eu.org>
Mail-Followup-To: Bastian Blank <waldi@debian.org>,
	Pierre Schweitzer <pierre@reactos.org>,
	oss-security@lists.openwall.com
References: <20150613093351.GF11230@mail.waldi.eu.org>
 <557E8DA5.6080707@reactos.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <557E8DA5.6080707@reactos.org>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: oss-security@lists.openwall.com
Date: Mon, 15 Jun 2015 20:26:32 +0200
From: Bastian Blank <waldi@debian.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] PostgreSQL - Predictable cancel key
To: Pierre Schweitzer <pierre@reactos.org>

Hi Pierre

On Mon, Jun 15, 2015 at 10:32:37AM +0200, Pierre Schweitzer wrote:
> I had a look at glibc random implementation, they got rid of the old
> LCG they were using for a "nonlinear additive feedback" PRNG which
> uses a 31 numbers state. That means that knowing a number in the
> pseudo-random stream you cannot recover the whole generator state to
> compute the next PRN, as it was possible with a LCG.

> So, basically, if I'm right (correct otherwise!) knowing your cancel
> key and your PID makes it really hard to know which key belongs to
> other PIDs. Because you still lack two pieces of information: the
> initial state (deduced from the knowledge of the seed) and the state
> of the generator when it generated your key (or perhaps knowing just
> one state would be enough? Anyway, it's missing).

The seed is not public, but you missed one detail: there are only one
million different ones.  This seed is the only input of the PRNG.  With
one million starting points (which is a lot less then the complete
state) you can easily brute force the seed for the returned values.
After you know the complete state, you can calculate possible state
ranges for different PID.

Bastian

-- 
The sight of death frightens them [Earthers].
		-- Kras the Klingon, "Friday's Child", stardate 3497.2
