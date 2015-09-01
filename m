X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1286" "Tuesday" "1" "September" "2015" "08:03:20" "+0200" "Marcus Meissner" "meissner@suse.de" "<20150901060320.GA6620@suse.de>" "44" "Re: [oss-security] CVE Request: more php unserializing issues" nil nil nil "9" "2015090106:03:20" "[oss-security] CVE Request: more php unserializing issues" (number mark "U       meissner@sus Sep  1   44/1286  " thread-indent "\"Re: [oss-security] CVE Request: more php unserializing issues\"\n") "<20150819094945.GD6584@suse.de>" ("<20150819094945.GD6584@suse.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3964 invoked by uid 550); 1 Sep 2015 06:03:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3946 invoked from network); 1 Sep 2015 06:03:32 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Tue, 1 Sep 2015 08:03:20 +0200
From: Marcus Meissner <meissner@suse.de>
To: OSS Security List <oss-security@lists.openwall.com>,
	cve-assign@mitre.org
Message-ID: <20150901060320.GA6620@suse.de>
References: <20150819094945.GD6584@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150819094945.GD6584@suse.de>
Organization: SUSE Linux GmbH, GF: =?iso-8859-1?Q?Felix_?=
 =?iso-8859-1?Q?Imend=F6rffer=2C_Jane_Smithard=2C_Graham_Norton=2C_HRB_212?=
 =?iso-8859-1?Q?84_=28AG_N=FCrnberg=29?=
User-Agent: Mutt/1.5.21 (2010-09-15)
Subject: Re: [oss-security] CVE Request: more php unserializing issues

Hm,

forgot to cc cve-assign


On Wed, Aug 19, 2015 at 11:49:45AM +0200, Marcus Meissner wrote:
> Hi,
> 
> I am not sure these have CVE ids yet:
> 
> https://bugs.php.net/bug.php?id=70068
> Dangling pointer in the unserialization of ArrayObject items
> 	impact: remote code execution
> 
> 
> https://bugs.php.net/bug.php?id=70166
> https://bugs.php.net/bug.php?id=70155 (dup)
> Use After Free Vulnerability in unserialize() with SPLArrayObject
> 
> https://bugs.php.net/bug.php?id=70168
> Use After Free Vulnerability in unserialize() with SplObjectStorage
> 
> https://bugs.php.net/bug.php?id=70169
> Use After Free Vulnerability in unserialize() with SplDoublyLinkedList
> 
> 
> These look like they can be exploited for code execution.
> 
> 
> https://bugs.php.net/bug.php?id=70019
> Files extracted from archive may be placed outside of destination directory
> 
> (indirect reference also  https://msisac.cisecurity.org/advisories/2015/2015-091.cfm
>  and the php release notes
>  http://php.net/ChangeLog-5.php#5.4.44
>  http://php.net/ChangeLog-5.php#5.5.28
>  http://php.net/ChangeLog-5.php#5.6.12
> )
> 
> Ciao, Marcus
> 

-- 
Marcus Meissner,SUSE LINUX GmbH; Maxfeldstrasse 5; D-90409 Nuernberg; Zi. 3.1-33,+49-911-740 53-432,,serv=loki,mail=wotan,type=real <meissner@suse.de>
