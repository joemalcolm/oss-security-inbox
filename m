X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1050" "Friday" "3" "June" "2016" "21:31:04" "+0200" "Sebastian Pipping" "sebastian@pipping.org" "<5751DAF8.6060901@pipping.org>" "41" "Re: [oss-security] expat hash collision fix too predictable?" "^Date:" nil nil "6" "2016060319:31:04" "[oss-security] expat hash collision fix too predictable?" (number mark "        sebastian@pi Jun  3   41/1050  " thread-indent "\"Re: [oss-security] expat hash collision fix too predictable?\"\n") "<20120405093027.GB18070@suse.de>" ("<20120405093027.GB18070@suse.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19955 invoked by uid 550); 3 Jun 2016 19:31:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19935 invoked from network); 3 Jun 2016 19:31:16 -0000
References: <20120405093027.GB18070@suse.de>
X-Enigmail-Draft-Status: N1110
Message-ID: <5751DAF8.6060901@pipping.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.7.1
MIME-Version: 1.0
In-Reply-To: <20120405093027.GB18070@suse.de>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Df-Sender: aGFydHdvcmtAYmluZXJhLmRl
Date: Fri, 3 Jun 2016 21:31:04 +0200
From: Sebastian Pipping <sebastian@pipping.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] expat hash collision fix too predictable?
To: oss-security@lists.openwall.com

Hi!


On 05.04.2012 11:30, Marcus Meissner wrote:
> Hi,
> 
> while reviewing a expat regression (likely caused by the hash collision denial of service fix, but unclear)
> i stumbled about the randomness it uses.
> 
> 	static unsigned long
> 	generate_hash_secret_salt(void)
> 	{
> 	  unsigned int seed = time(NULL) % UINT_MAX;
> 	  srand(seed);
> 	  return rand();
> 	}
> 
> and it is seeded once at parser object creation.
> 
> This is better than not seeding, but I am not sure if it is sufficient.
> 
> Ciao, Marcus
> 

Please excuse bumping this thread.  It think it may need another CVE:

The call to srand(3) can reduce the security of the calling application,
depending on what it is doing with srand(3)/random(3).  This behavior is
recognized as a bug by Fedora, too
(https://bugzilla.redhat.com/show_bug.cgi?id=1197087).

There are multiple related commits in Expat's Git repository.  I am
happy to extract a single to-the-point patch for your version of Expat
and operating system platform from that for you, if needed.

Best



Sebastian

