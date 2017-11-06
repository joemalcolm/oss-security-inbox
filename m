X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["710" "Sunday" "5" "November" "2017" "22:15:44" "-0800" "Ian Zimmerman" "itz@very.loosely.org" "<20171106061544.apbxborivf4lye7m@matica.foolinux.mooo.com>" "18" "[oss-security] Re: Security risk of vim swap files" "^Date:" nil nil "11" "2017110606:15:44" "[oss-security] Re: Security risk of vim swap files" (number mark "        itz@very.loo Nov  5   18/710   " thread-indent "\"[oss-security] Re: Security risk of vim swap files\"\n") "<20171101181209.GB22752@openwall.com>" ("<20171031132352.2df6d2ad@pc1>" "<20171031175407.jcniviupwyab6qcl@sentinelchicken.org>" "<20171101023330.GK30551@takahe.colorado.edu>" "<20171101144927.srk7stiwoia4qt57@sentinelchicken.org>" "<CAH8yC8=KKh8SPtDUUSAL_GuDHT7eYBrmHvVjzeQ5n4ocFh4m5Q@mail.gmail.com>" "<20171101180222.5j6wqmmqakwvu72q@jwilk.net>" "<20171101181209.GB22752@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19963 invoked by uid 550); 6 Nov 2017 11:46:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22197 invoked from network); 6 Nov 2017 06:16:06 -0000
Message-ID: <20171106061544.apbxborivf4lye7m@matica.foolinux.mooo.com>
Mail-Followup-To: oss-security@lists.openwall.com
References: <20171031132352.2df6d2ad@pc1>
 <20171031175407.jcniviupwyab6qcl@sentinelchicken.org>
 <20171101023330.GK30551@takahe.colorado.edu>
 <20171101144927.srk7stiwoia4qt57@sentinelchicken.org>
 <CAH8yC8=KKh8SPtDUUSAL_GuDHT7eYBrmHvVjzeQ5n4ocFh4m5Q@mail.gmail.com>
 <20171101180222.5j6wqmmqakwvu72q@jwilk.net>
 <20171101181209.GB22752@openwall.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20171101181209.GB22752@openwall.com>
X-Loosely-Listed: yes
User-Agent: NeoMutt/20170707-dirty (1.8.3)
Date: Sun, 5 Nov 2017 22:15:44 -0800
From: Ian Zimmerman <itz@very.loosely.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Security risk of vim swap files
To: oss-security@lists.openwall.com

On 2017-11-01 19:12, Solar Designer wrote:

> On Wed, Nov 01, 2017 at 07:02:22PM +0100, Jakub Wilk wrote:

> > Unfortunately, glibc's implementation of tmpfile(3), which is the
> > most fool-proof interface for dealing with temporary files that the
> > C library offers, doesn't honour TMPDIR. :(
> 
> We've been carrying a patch for this for ages:

Do you know why this has not been changed upstream?  The code (and
infopage) mentions "SVID compatibility".  Do you know of any programs
that break with this change?

-- 
Please don't Cc: me privately on mailing lists and Usenet,
if you also post the followup to the list or newsgroup.
To reply privately _only_ on Usenet, fetch the TXT record for the domain.
