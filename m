X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1435" "Wednesday" "12" "August" "2015" "09:42:02" "-0400" "ISC Security Officer" "security-officer@isc.org" "<55CB4D2A.1070404@isc.org>" "37" "[oss-security] Re: Is CVE-2015-4650 a duplicate, leak, or just a typo?" nil nil nil "8" "2015081213:42:02" "[oss-security] Re: Is CVE-2015-4650 a duplicate, leak, or just a typo?" (number mark "        security-off Aug 12   37/1435  " thread-indent "\"[oss-security] Re: Is CVE-2015-4650 a duplicate, leak, or just a typo?\"\n") "<55CB3CE9.1030104@redhat.com>" ("<55CB3CE9.1030104@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 23601 invoked by uid 550); 12 Aug 2015 13:55:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9915 invoked from network); 12 Aug 2015 13:42:22 -0000
Message-ID: <55CB4D2A.1070404@isc.org>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
References: <55CB3CE9.1030104@redhat.com>
In-Reply-To: <55CB3CE9.1030104@redhat.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
CC: oss-security@lists.openwall.com, 
 "security-officer@isc.org" <security-officer@isc.org>
Date: Wed, 12 Aug 2015 09:42:02 -0400
From: ISC Security Officer <security-officer@isc.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Is CVE-2015-4650 a duplicate, leak, or just a typo?
To: Florian Weimer <fweimer@redhat.com>, 
 Assign a CVE Identifier <cve-assign@mitre.org>

On 8/12/15 8:32 AM, Florian Weimer wrote:
> Some documents use CVE-2015-4650 to refer to a vulnerability in BIND.
> Apparently, they source back to
> 
> <https://www.alienvault.com/forums/discussion/5706/security-advisory-alienvault-v5-1-addresses-6-vulnerabilities>
> 
> which says:

(details omitted)

> That description seems to match CVE-2015-4620, so I'm leaning towards typo:
> 
> <https://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2015-4620>

Speaking for ISC on the matter, I suspect a typo as well; at any rate
we have no knowledge of a CVE with that number.  It is not listed in
ISC's collection of BIND security advisories:


https://kb.isc.org/category/74/0/10/Software-Products/BIND9/Security-Advisories/

and I can say definitely that it is not a number which we are planning
to use for a pending advisory (i.e. the "leak" scenario can be dismissed.)

The number appears to have been reserved for use by another party
who has not yet provided MITRE with any details, as their page still
shows the place-holder typical of an assigned number which has not
yet been updated with details after public disclosure:

   http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2015-4650

A typo is the most likely explanation (and I can tell you from
experience that it is very easy to err when writing communications
which refer to things labeled with the CVE number format.)

Michael McNally
(responding for ISC Security Officer)
