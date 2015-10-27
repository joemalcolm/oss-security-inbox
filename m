X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["559" "Tuesday" "27" "October" "2015" "10:44:49" "+0100" "Michael Scherer" "misc@zarb.org" "<20151027094449.GB16580@sisay.ephaone.org>" "17" "Re: [oss-security] CVE request - open-vm-tools using predictable filename in /tmp" nil nil nil "10" "2015102709:44:49" "[oss-security] CVE request - open-vm-tools using predictable filename in /tmp" (number mark "U       misc@zarb.or Oct 27   17/559   " thread-indent "\"Re: [oss-security] CVE request - open-vm-tools using predictable filename in /tmp\"\n") "<562E7625.1000306@redhat.com>" ("<20151026182321.GA16580@sisay.ephaone.org>" "<562E7625.1000306@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 31809 invoked by uid 550); 27 Oct 2015 09:45:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 31782 invoked from network); 27 Oct 2015 09:45:01 -0000
Message-ID: <20151027094449.GB16580@sisay.ephaone.org>
References: <20151026182321.GA16580@sisay.ephaone.org>
 <562E7625.1000306@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
In-Reply-To: <562E7625.1000306@redhat.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
Date: Tue, 27 Oct 2015 10:44:49 +0100
From: Michael Scherer <misc@zarb.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE request - open-vm-tools using predictable
 filename in /tmp
To: oss-security@lists.openwall.com

On Mon, Oct 26, 2015 at 07:51:17PM +0100, Florian Weimer wrote:
> On 10/26/2015 07:23 PM, Michael Scherer wrote:
> 
> > It seems that vm-support, from open-vm-tools use /tmp to
> > store output of diagnostic software.
> > 
> > See 
> > https://github.com/vmware/open-vm-tools/blob/master/open-vm-tools/scripts/common/vm-support#L200
> > 
> > Can a CVE be assigned ?
> 
> I don't think this is a vulnerability anymore because runcmd prepends
> $OUTPUT_DIR to the path.

Damn, indeed, should have spent more time looking at the bash code :(
-- 
Michael Scherer
