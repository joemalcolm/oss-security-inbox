X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["561" "Monday" "8" "February" "2016" "11:19:14" "+0400" "Stepan Golosunov" "stepan@golosunov.pp.ru" "<20160208071914.GB6074@sghpc.golosunov.pp.ru>" "15" "[oss-security] CVE request - buffer overflow in xdelta3 before 3.0.9" nil nil nil "2" "2016020807:19:14" "[oss-security] CVE request - buffer overflow in xdelta3 before 3.0.9" (number mark "U       stepan@golos Feb  8   15/561   " thread-indent "\"[oss-security] CVE request - buffer overflow in xdelta3 before 3.0.9\"\n") "<20160208055712.GA27038@eldamar.local>" ("<20141004164105.GA31867@sghpc.golosunov.pp.ru>" "<20160207150512.GA22436@sghpc.golosunov.pp.ru>" "<20160208055712.GA27038@eldamar.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20413 invoked by uid 550); 8 Feb 2016 14:50:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3811 invoked from network); 8 Feb 2016 07:19:26 -0000
Date: Mon, 8 Feb 2016 11:19:14 +0400
From: Stepan Golosunov <stepan@golosunov.pp.ru>
To: oss-security@lists.openwall.com
Cc: security@debian.org, Salvatore Bonaccorso <carnil@debian.org>
Message-ID: <20160208071914.GB6074@sghpc.golosunov.pp.ru>
References: <20141004164105.GA31867@sghpc.golosunov.pp.ru>
 <20160207150512.GA22436@sghpc.golosunov.pp.ru>
 <20160208055712.GA27038@eldamar.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=koi8-r
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20160208055712.GA27038@eldamar.local>
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: [oss-security] CVE request - buffer overflow in xdelta3 before 3.0.9

Hi,

Buffer overflow was found and fixed in xdelta3 binary diff tool that
allows arbitrary code execution from input files at least on some
systems.

08.02.2016 в 06:57:12 +0100 Salvatore Bonaccorso написал:
> On Sun, Feb 07, 2016 at 07:05:12PM +0400, Stepan Golosunov wrote:
> > This appears to be fixed in xdelta3 3.0.9 and later via
> > https://github.com/jmacd/xdelta-devel/commit/ef93ff74203e030073b898c05e8b4860b5d09ef2
> 
> Can you request a CVE as well on the oss-security mailinglist or from
> MITRE directly? (You can keep us in the loop).

Doing so.
