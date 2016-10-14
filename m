X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1282" "Friday" "14" "October" "2016" "13:01:07" "+0200" "Petr Matousek" "pmatouse@redhat.com" "<20161014110106.GG31594@dhcp-25-225.brq.redhat.com>" "32" "Re: [oss-security] kernel: Stack corruption while reading /proc/keys (CVE-2016-7042)" "^Cc:" nil nil "10" "2016101411:01:07" "[oss-security] kernel: Stack corruption while reading /proc/keys (CVE-2016-7042)" (number mark "        pmatouse@red Oct 14   32/1282  " thread-indent "\"Re: [oss-security] kernel: Stack corruption while reading /proc/keys (CVE-2016-7042)\"\n") "<041f8f08-d2d2-d1ec-78f3-18b3d5f6160e@oracle.com>" ("<1317626822.2210899.1474545527129.JavaMail.zimbra@redhat.com>" "<1061369962.2838882.1476362811840.JavaMail.zimbra@redhat.com>" "<ad59c912-423e-baa2-4a31-413251d0ee5c@oracle.com>" "<alpine.LFD.2.20.1610141145160.5203@wniryva>" "<041f8f08-d2d2-d1ec-78f3-18b3d5f6160e@oracle.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 25678 invoked by uid 550); 14 Oct 2016 11:01:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 25656 invoked from network); 14 Oct 2016 11:01:22 -0000
Message-ID: <20161014110106.GG31594@dhcp-25-225.brq.redhat.com>
References: <1317626822.2210899.1474545527129.JavaMail.zimbra@redhat.com>
 <1061369962.2838882.1476362811840.JavaMail.zimbra@redhat.com>
 <ad59c912-423e-baa2-4a31-413251d0ee5c@oracle.com>
 <alpine.LFD.2.20.1610141145160.5203@wniryva>
 <041f8f08-d2d2-d1ec-78f3-18b3d5f6160e@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <041f8f08-d2d2-d1ec-78f3-18b3d5f6160e@oracle.com>
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.29]); Fri, 14 Oct 2016 11:01:10 +0000 (UTC)
Cc: oss-security@lists.openwall.com
Date: Fri, 14 Oct 2016 13:01:07 +0200
From: Petr Matousek <pmatouse@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] kernel: Stack corruption while reading /proc/keys
 (CVE-2016-7042)
To: John Haxby <john.haxby@oracle.com>

On Fri, Oct 14, 2016 at 11:57:15AM +0100, John Haxby wrote:
> On 14/10/16 07:18, P J P wrote:
> > +-- On Thu, 13 Oct 2016, John Haxby wrote --+
> > | On 13/10/16 13:46, Vladis Dronov wrote:
> > | > https://bugzilla.redhat.com/show_bug.cgi?id=1373499 (reproducer, patch)
> > | 
> > | This bug isn't accessible.   Do you think you could post the reproducer
> > | or open the bug please?
> > 
> > Please see this one:
> >   -> https://bugzilla.redhat.com/show_bug.cgi?id=1373966
> > 
> > Thank you.
> 
> Sorry, that's not why I was asking.  You provided links to two bugs: one
> has the patch and a reproducer, the other has the patch.  Unfortunately
> the former is a link to a bug that no one outside Red Hat has access to.
>  In the past when people have posted links to oss-security that do not
> have general access the access permissions have been relaxed or the
> relevant content posted on the list.
> 
> That's what I was asking for:  inaccessible links are not helpful on an
> open list.

The other link to internal bug was posted by mistake. I am sorry for
that. https://bugzilla.redhat.com/show_bug.cgi?id=1373966 has all the
information we can share.

Thanks,
-- 
Petr Matousek / Red Hat Product Security
PGP: 0xC44977CA 8107 AF16 A416 F9AF 18F3  D874 3E78 6F42 C449 77CA
