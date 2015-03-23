X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["983" "Monday" "23" "March" "2015" "11:38:54" "+0100" "Marcus Meissner" "meissner@suse.de" "<20150323103854.GA28211@suse.de>" "19" "Re: [oss-security] CVE for Kali Linux" nil nil nil "3" "2015032310:38:54" "[oss-security] CVE for Kali Linux" (number mark "        meissner@sus Mar 23   19/983   " thread-indent "\"Re: [oss-security] CVE for Kali Linux\"\n") "<550F2754.5060704@openwall.com>" ("<550EE478.70005@redhat.com>" "<E1YZj9N-0003Th-Gn@rmm6prod02.runbox.com>" "<20150322172300.GA21110@openwall.com>" "<550F2754.5060704@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21769 invoked by uid 550); 23 Mar 2015 10:39:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21745 invoked from network); 23 Mar 2015 10:39:07 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Message-ID: <20150323103854.GA28211@suse.de>
References: <550EE478.70005@redhat.com>
 <E1YZj9N-0003Th-Gn@rmm6prod02.runbox.com>
 <20150322172300.GA21110@openwall.com>
 <550F2754.5060704@openwall.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <550F2754.5060704@openwall.com>
Organization: SUSE Linux GmbH, GF: =?iso-8859-1?Q?Felix_?=
 =?iso-8859-1?Q?Imend=F6rffer=2C_Jane_Smithard=2C_Jennifer_Guild=2C_Dilip_?=
 =?iso-8859-1?Q?Upmanyu=2C_Graham_Norton=2C_HRB_21284_=28AG_N=FCrnberg=29?=
User-Agent: Mutt/1.5.21 (2010-09-15)
Date: Mon, 23 Mar 2015 11:38:54 +0100
From: Marcus Meissner <meissner@suse.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE for Kali Linux
To: oss-security@lists.openwall.com

On Sun, Mar 22, 2015 at 11:34:28PM +0300, Alexander Cherepanov wrote:
> On 2015-03-22 20:23, Solar Designer wrote:
> >https does offer a security aspect that signatures don't: it hides from
> >some observers which exact software is being downloaded (and maybe that
> >it's a software download at all).  It doesn't do that perfectly because
> >the target address and transfer timings and sizes may be revealing, but
> >I do acknowledge there's some subtle improvement over http here.  I just
> >think this is far less important than ensuring authenticity of the
> >software.  So let's demand signatures and signature verification first,
> >and let's not be distracted by http vs. https.
> 
> There are some attacks even if you verify signatures, e.g. serving
> old, known-vulnerable versions. HTTPS can help here (until
> signatures start to be widely accompanied by expiring timestamps or
> something).

SUSE has added an expiry tag in the YUM metadata for such cases.

Ciao, Marcus
