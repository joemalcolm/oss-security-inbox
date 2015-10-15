X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["772" "Thursday" "15" "October" "2015" "10:08:26" "+0200" "Florian Weimer" "fweimer@redhat.com" "<561F5EFA.1050105@redhat.com>" "25" "Re: [oss-security] CVE Request: Glibc Pointer guarding weakness" nil nil nil "10" "2015101508:08:26" "[oss-security] CVE Request: Glibc Pointer guarding weakness" (number mark "        fweimer@redh Oct 15   25/772   " thread-indent "\"Re: [oss-security] CVE Request: Glibc Pointer guarding weakness\"\n") "<55EB1D07.2060005@upv.es>" ("<55EB1D07.2060005@upv.es>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28630 invoked by uid 550); 15 Oct 2015 08:08:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28609 invoked from network); 15 Oct 2015 08:08:40 -0000
References: <55EB1D07.2060005@upv.es>
X-Enigmail-Draft-Status: N1110
Message-ID: <561F5EFA.1050105@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.2.0
MIME-Version: 1.0
In-Reply-To: <55EB1D07.2060005@upv.es>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.23
Cc: cve-assign@mitre.org
Date: Thu, 15 Oct 2015 10:08:26 +0200
From: Florian Weimer <fweimer@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE Request: Glibc Pointer guarding weakness
To: oss-security@lists.openwall.com

On 09/05/2015 06:49 PM, Hector Marco-Gisbert wrote:
> Hello,
> 
> A weakness in the dynamic loader have been found, Glibc prior to 2.22.90
> are affected. The issue is that the LD_POINTER_GUARD in the environment
> is not sanitized allowing local attackers easily to bypass the pointer
> guarding protection on set-user-ID and set-group-ID programs.
> 
> 
> Details and PoC at:
> http://hmarco.org/bugs/glibc_ptr_mangle_weakness.html
> 
> 
> A patch is already sent to Glibc maintainers. This issue is similar to
> http://hmarco.org/bugs/CVE-2013-4788.html but now affect to dynamic
> linked applications.

> Could you please assign a CVE ?

Upstream commit:

https://sourceware.org/git/gitweb.cgi?p=glibc.git;a=commit;h=a014cecd82b71b70a6a843e250e06b541ad524f7

Florian

