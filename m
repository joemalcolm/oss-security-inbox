X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1230" "Wednesday" "15" "August" "2018" "12:06:54" "+0200" "Marcus Meissner" "meissner@suse.de" "<20180815100654.vr67od6epctljw7v@suse.de>" "40" "Re: [oss-security] CVE-2018-5391: Linux kernel: IP fragments with random offsets allow a remote denial of service (FragmentSmack)" nil nil nil "8" "2018081510:06:54" "[oss-security] CVE-2018-5391: Linux kernel: IP fragments with random offsets allow a remote denial of service (FragmentSmack)" (number mark "U       meissner@sus Aug 15   40/1230  " thread-indent "\"Re: [oss-security] CVE-2018-5391: Linux kernel: IP fragments with random offsets allow a remote denial of service (FragmentSmack)\"\n") "<CAPdG+L40W-nprsiRV_bw68HP-eJ9u6F=sfXS39UJgJAd2TkuNg@mail.gmail.com>" ("<1545879296.2548069.1534278208403.JavaMail.zimbra@redhat.com>" "<334572023.2548916.1534278651965.JavaMail.zimbra@redhat.com>" "<CAPdG+L40W-nprsiRV_bw68HP-eJ9u6F=sfXS39UJgJAd2TkuNg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7602 invoked by uid 550); 15 Aug 2018 10:07:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7583 invoked from network); 15 Aug 2018 10:07:06 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Wed, 15 Aug 2018 12:06:54 +0200
From: Marcus Meissner <meissner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <20180815100654.vr67od6epctljw7v@suse.de>
References: <1545879296.2548069.1534278208403.JavaMail.zimbra@redhat.com>
 <334572023.2548916.1534278651965.JavaMail.zimbra@redhat.com>
 <CAPdG+L40W-nprsiRV_bw68HP-eJ9u6F=sfXS39UJgJAd2TkuNg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAPdG+L40W-nprsiRV_bw68HP-eJ9u6F=sfXS39UJgJAd2TkuNg@mail.gmail.com>
Organization: SUSE Linux GmbH, GF: =?iso-8859-1?Q?Felix_?=
 =?iso-8859-1?Q?Imend=F6rffer=2C_Jane_Smithard=2C_Graham_Norton=2C_HRB_212?=
 =?iso-8859-1?Q?84_=28AG_N=FCrnberg=29?=
User-Agent: NeoMutt/20170421 (1.8.2)
Subject: Re: [oss-security] CVE-2018-5391: Linux kernel: IP fragments with
 random offsets allow a remote denial of service (FragmentSmack)

Hi,

no.

SegmentSmack affects TCP segments,
FragmentSmack affects IP fragments (lower protocol level).

Ciao, Marcus
On Tue, Aug 14, 2018 at 05:09:38PM -0400, David T. wrote:
> Is this the same as "SegmentSmack" that came out last week, CVE-2018-5390?
> Or, what is the difference?
> 
> On Tue, Aug 14, 2018 at 16:31 Vladis Dronov <vdronov@redhat.com> wrote:
> 
> > Heololo,
> >
> > A flaw named FragmentSmack was found in the way the Linux kernel handled
> > reassembly of fragmented IPv4 and IPv6 packets. A remote attacker could
> > use this flaw to trigger time and calculation expensive fragment reassembly
> > algorithms by sending specially crafted packets which could lead to a CPU
> > saturation and hence a denial of service on the system.
> >
> > External References:
> >
> > https://www.kb.cert.org/vuls/id/641765
> >
> > https://access.redhat.com/articles/3553061
> >
> > https://bugzilla.redhat.com/show_bug.cgi?id=1609664
> >
> > Best regards,
> > Vladis Dronov | Red Hat, Inc. | Product Security Engineer
> >
> -- 
> Very respectfully,
> 
> David M Thomsen

-- 
Marcus Meissner,SUSE LINUX GmbH; Maxfeldstrasse 5; D-90409 Nuernberg; Zi. 3.1-33,+49-911-740 53-432,,serv=loki,mail=wotan,type=real <meissner@suse.de>
