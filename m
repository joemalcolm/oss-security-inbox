X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1017" "Saturday" "26" "December" "2015" "14:02:26" "+0000" "Sevan Janiyan" "venture37@geeklan.co.uk" "<567E9DF2.3080909@geeklan.co.uk>" "25" "Re: [oss-security] Being vulnerable to POODLE" nil nil nil "12" "2015122614:02:26" "[oss-security] Being vulnerable to POODLE" (number mark "U       venture37@ge Dec 26   25/1017  " thread-indent "\"Re: [oss-security] Being vulnerable to POODLE\"\n") "<567E7481.607@gmail.com>" ("<567E41B4.2010606@geeklan.co.uk>" "<20151226104143.GA26606@gremlin.ru>" "<567E7481.607@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3574 invoked by uid 550); 26 Dec 2015 14:19:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28238 invoked from network); 26 Dec 2015 14:02:40 -0000
References: <567E41B4.2010606@geeklan.co.uk>
 <20151226104143.GA26606@gremlin.ru> <567E7481.607@gmail.com>
X-Enigmail-Draft-Status: N1110
Message-ID: <567E9DF2.3080909@geeklan.co.uk>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:38.0)
 Gecko/20100101 Thunderbird/38.5.0
MIME-Version: 1.0
In-Reply-To: <567E7481.607@gmail.com>
Content-Type: text/plain; charset=koi8-r
Content-Transfer-Encoding: 7bit
Date: Sat, 26 Dec 2015 14:02:26 +0000
From: Sevan Janiyan <venture37@geeklan.co.uk>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Being vulnerable to POODLE
To: oss-security@lists.openwall.com



On 26/12/2015 11:05, Gsunde Orangen wrote:
> Nope, it is not a vulnerability specific to OpenSSL, but a design
> weakness in the SSLv3 protocol - so all implementations of SSLv3 are
> affected. I would use the same CVE-2014-3566 for all software that still
> uses SSLv3.
> This is different to "POODLE TLS", where some implementations (but not
> OpenSSL) contained a similar vulnerability in their implementation of
> the TLS 1.0 protocol (although the TLS 1.0 standard itself does not have
> it). In this case different CVE IDs are suggested - see Mitre's
> statement at [1]
> "POODLE TLS" is references in multiple CVEs, see [2]
> 
> [1] http://seclists.org/oss-sec/2014/q4/1003
> [2] https://web.nvd.nist.gov/view/vuln/search-results?query=poodle%20tls

Ok, so in this case, changing the source code to set the context options
to exclude SSLv2 & v3 was all that was made. The code base is a consumer
of the OpenSSL API & relies on that to establish SSL, it does not
implement any crypto itself locally.



Sevan
