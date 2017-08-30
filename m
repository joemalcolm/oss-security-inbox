X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1102" "Wednesday" "30" "August" "2017" "19:04:15" "+0200" "Marcus Meissner" "meissner@suse.de" "<20170830170415.GA5594@suse.de>" "36" "Re: [oss-security] RubyGems flaws" nil nil nil "8" "2017083017:04:15" "[oss-security] RubyGems flaws" (number mark "U       meissner@sus Aug 30   36/1102  " thread-indent "\"Re: [oss-security] RubyGems flaws\"\n") "<CANO=Ty0wfWS6kZLQO12WXu0Zd0MM-_ThiDKqttHvnZQmmxCtgA@mail.gmail.com>" ("<CANO=Ty0wfWS6kZLQO12WXu0Zd0MM-_ThiDKqttHvnZQmmxCtgA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24425 invoked by uid 550); 30 Aug 2017 17:04:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24407 invoked from network); 30 Aug 2017 17:04:26 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Wed, 30 Aug 2017 19:04:15 +0200
From: Marcus Meissner <meissner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <20170830170415.GA5594@suse.de>
References: <CANO=Ty0wfWS6kZLQO12WXu0Zd0MM-_ThiDKqttHvnZQmmxCtgA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CANO=Ty0wfWS6kZLQO12WXu0Zd0MM-_ThiDKqttHvnZQmmxCtgA@mail.gmail.com>
Organization: SUSE Linux GmbH, GF: =?iso-8859-1?Q?Felix_?=
 =?iso-8859-1?Q?Imend=F6rffer=2C_Jane_Smithard=2C_Graham_Norton=2C_HRB_212?=
 =?iso-8859-1?Q?84_=28AG_N=FCrnberg=29?=
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [oss-security] RubyGems flaws

On Wed, Aug 30, 2017 at 10:30:19AM -0600, Kurt Seifried wrote:
> Does anyone know if these got CVEs?
> 
> https://www.ruby-lang.org/en/news/2017/08/29/multiple-vulnerabilities-in-rubygems/
> http://blog.rubygems.org/2017/08/27/2.6.13-released.html
> 
> Security fixes:
> 
> *Fix a DNS request hijacking vulnerability. Discovered by Jonathan
> Claudius, fix by Samuel Giddins.
> *Fix an ANSI escape sequence vulnerability. Discovered by Yusuke Endoh, fix
> by Evan Phoenix.
> *Fix a DOS vulernerability in the query command. Discovered by Yusuke
> Endoh, fix by Samuel Giddins.
> *Fix a vulnerability in the gem installer that allowed a malicious gem to
> overwrite arbitrary files. Discovered by Yusuke Endoh, fix by Samuel
> Giddins.
> 
> Affected Versions
> 
> *Ruby 2.2 series: 2.2.7 and earlier
> *Ruby 2.3 series: 2.3.4 and earlier
> *Ruby 2.4 series: 2.4.1 and earlier
> *prior to trunk revision 59672

Mitre communicated to me the following CVEs on query:

CVE-2017-0899  ANSI escape issue

CVE-2017-0900  query command

CVE-2017-0901  overwrite any file

CVE-2017-0902  DNS issue

Ciao, Marcus
