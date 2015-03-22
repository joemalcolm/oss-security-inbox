X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["816" "Monday" "23" "March" "2015" "02:57:30" "+0300" "Solar Designer" "solar@openwall.com" "<20150322235730.GA24910@openwall.com>" "17" "Re: [oss-security] CVE for Kali Linux" nil nil nil "3" "2015032223:57:30" "[oss-security] CVE for Kali Linux" (number mark "        solar@openwa Mar 23   17/816   " thread-indent "\"Re: [oss-security] CVE for Kali Linux\"\n") "<877fu8bnks.fsf@hope.eyrie.org>" ("<550EE478.70005@redhat.com>" "<E1YZj9N-0003Th-Gn@rmm6prod02.runbox.com>" "<20150322172300.GA21110@openwall.com>" "<550F2754.5060704@openwall.com>" "<877fu8bnks.fsf@hope.eyrie.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 16046 invoked by uid 550); 22 Mar 2015 23:57:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 16028 invoked from network); 22 Mar 2015 23:57:33 -0000
Message-ID: <20150322235730.GA24910@openwall.com>
References: <550EE478.70005@redhat.com> <E1YZj9N-0003Th-Gn@rmm6prod02.runbox.com> <20150322172300.GA21110@openwall.com> <550F2754.5060704@openwall.com> <877fu8bnks.fsf@hope.eyrie.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <877fu8bnks.fsf@hope.eyrie.org>
User-Agent: Mutt/1.4.2.3i
Date: Mon, 23 Mar 2015 02:57:30 +0300
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE for Kali Linux
To: oss-security@lists.openwall.com

On Sun, Mar 22, 2015 at 04:48:51PM -0700, Russ Allbery wrote:
> Alexander Cherepanov <ch3root@openwall.com> writes:
> 
> > There are some attacks even if you verify signatures, e.g. serving old,
> > known-vulnerable versions. HTTPS can help here (until signatures start
> > to be widely accompanied by expiring timestamps or something).
> 
> Debian is indeed moving in exactly that direction, using the Valid-Until
> attribute of the archive metadata.  This currently isn't (yet?) enabled
> for the main stable archive, but is for the unstable and testing archives,
> the security archive, and the backports archive.

How do you handle the case when a given package build remains the
recommended version in its branch beyond the signature's initial
Valid-Until date?  Do you issue a new signature for it?

Alexander
