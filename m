X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1010" "Monday" "23" "March" "2015" "22:41:01" "+0100" "Marcus Meissner" "meissner@suse.de" "<20150323214101.GA23630@suse.de>" "26" "Re: [oss-security] CVE for Kali Linux" nil nil nil "3" "2015032321:41:01" "[oss-security] CVE for Kali Linux" (number mark "        meissner@sus Mar 23   26/1010  " thread-indent "\"Re: [oss-security] CVE for Kali Linux\"\n") "<551081E2.8000607@openwall.com>" ("<550EE478.70005@redhat.com>" "<E1YZj9N-0003Th-Gn@rmm6prod02.runbox.com>" "<20150322172300.GA21110@openwall.com>" "<550F2754.5060704@openwall.com>" "<20150323103854.GA28211@suse.de>" "<551081E2.8000607@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21597 invoked by uid 550); 23 Mar 2015 21:41:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21551 invoked from network); 23 Mar 2015 21:41:13 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Message-ID: <20150323214101.GA23630@suse.de>
References: <550EE478.70005@redhat.com>
 <E1YZj9N-0003Th-Gn@rmm6prod02.runbox.com>
 <20150322172300.GA21110@openwall.com>
 <550F2754.5060704@openwall.com>
 <20150323103854.GA28211@suse.de>
 <551081E2.8000607@openwall.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <551081E2.8000607@openwall.com>
Organization: SUSE Linux GmbH, GF: =?iso-8859-1?Q?Felix_?=
 =?iso-8859-1?Q?Imend=F6rffer=2C_Jane_Smithard=2C_Jennifer_Guild=2C_Dilip_?=
 =?iso-8859-1?Q?Upmanyu=2C_Graham_Norton=2C_HRB_21284_=28AG_N=FCrnberg=29?=
User-Agent: Mutt/1.5.21 (2010-09-15)
Date: Mon, 23 Mar 2015 22:41:01 +0100
From: Marcus Meissner <meissner@suse.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE for Kali Linux
To: oss-security@lists.openwall.com

On Tue, Mar 24, 2015 at 12:13:06AM +0300, Alexander Cherepanov wrote:
> On 2015-03-23 13:38, Marcus Meissner wrote:
> >>There are some attacks even if you verify signatures, e.g. serving
> >>old, known-vulnerable versions. HTTPS can help here (until
> >>signatures start to be widely accompanied by expiring timestamps or
> >>something).
> >
> >SUSE has added an expiry tag in the YUM metadata for such cases.
> 
> It's nice to see progress in this area. Does SUSE guard against
> other attacks from [1] too?
> 
> [1] https://isis.poly.edu/~jcappos/papers/cappos_pmsec_tr08-02.pdf

Our statements from 2008 (7 years ago) still stand and our package
manager does the full repository signing since 2006 already.

https://lizards.opensuse.org/2008/07/16/package-management-security-on-opensuse/

"Endless Data Attack" is open, as it is hard to solve for openSUSE with
its public mirror system.

The expiry was something added a bit later after the paper to address
the downgrade and replay attacks.

Ciao, Marcus
