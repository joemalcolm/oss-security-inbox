X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1412" "Monday" "23" "November" "2015" "13:13:08" "+0100" "Jan Rusnacko" "jrusnack@redhat.com" "<565302D4.2020900@redhat.com>" "32" "Re: [oss-security] CVE Request: git" nil nil nil "11" "2015112312:13:08" "[oss-security] CVE Request: git" (number mark "U       jrusnack@red Nov 23   32/1412  " thread-indent "\"Re: [oss-security] CVE Request: git\"\n") "<20151006035647.GG16643@hunt>" ("<20151006035647.GG16643@hunt>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32337 invoked by uid 550); 23 Nov 2015 12:11:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32303 invoked from network); 23 Nov 2015 12:11:45 -0000
To: oss-security@lists.openwall.com,
        Assign a CVE Identifier <cve-assign@mitre.org>
References: <20151006035647.GG16643@hunt>
From: Jan Rusnacko <jrusnack@redhat.com>
Message-ID: <565302D4.2020900@redhat.com>
Date: Mon, 23 Nov 2015 13:13:08 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <20151006035647.GG16643@hunt>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.24
Subject: Re: [oss-security] CVE Request: git

On 10/06/2015 05:56 AM, Seth Arnold wrote:
> Hello MITRE, all,
> 
> The git project announced v2.6.1 https://lkml.org/lkml/2015/10/5/683
> and included the following text:
> 
> 	 * Some protocols (like git-remote-ext) can execute arbitrary code
> 	   found in the URL. The URLs that submodules use may come
> 	   from arbitrary sources (e.g., .gitmodules files in a remote
> 	   repository), and can hurt those who blindly enable recursive
> 	   fetch. Restrict the allowed protocols to well known and
> 	   safe ones.
> 
> The following commits appear to implement the restrictions:
> 
> https://kernel.googlesource.com/pub/scm/git/git/+/a5adaced2e13c135d5d9cc65be9eb95aa3bacedf%5E%21/
> https://kernel.googlesource.com/pub/scm/git/git/+/33cfccbbf35a56e190b79bdec5c85457c952a021%5E%21/
> https://kernel.googlesource.com/pub/scm/git/git/+/5088d3b38775f8ac12d7f77636775b16059b67ef%5E%21/
> https://kernel.googlesource.com/pub/scm/git/git/+/f4113cac0c88b4f36ee6f3abf3218034440a68e3%5E%21/
> https://kernel.googlesource.com/pub/scm/git/git/+/b258116462399b318c86165c61a5c7123043cfd4%5E%21/
> 
> I do not know if this is exhaustive.
> 
> The announcement also mentions some int-based overflows but does not
> describe any situations that would allow crossing privilege boundaries.
> 
> Please assign CVEs as appropriate.

Can CVE be assigned to this vulnerability please?

-- 
Jan Rusnacko, Red Hat Product Security
