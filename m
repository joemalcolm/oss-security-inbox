X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1149" "Tuesday" "8" "September" "2015" "12:55:15" "+0200" "Florian Weimer" "fweimer@redhat.com" "<55EEBE93.3030206@redhat.com>" "28" "Re: [oss-security] CVE Request: libgcrypt hardening for RSA-CRT leak" nil nil nil "9" "2015090810:55:15" "[oss-security] CVE Request: libgcrypt hardening for RSA-CRT leak" (number mark "        fweimer@redh Sep  8   28/1149  " thread-indent "\"Re: [oss-security] CVE Request: libgcrypt hardening for RSA-CRT leak\"\n") "<20150908100534.GC18322@suse.de>" ("<20150908100534.GC18322@suse.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 23556 invoked by uid 550); 8 Sep 2015 10:55:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22501 invoked from network); 8 Sep 2015 10:55:29 -0000
References: <20150908100534.GC18322@suse.de>
Message-ID: <55EEBE93.3030206@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.1.0
MIME-Version: 1.0
In-Reply-To: <20150908100534.GC18322@suse.de>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.22
Date: Tue, 8 Sep 2015 12:55:15 +0200
From: Florian Weimer <fweimer@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE Request: libgcrypt hardening for RSA-CRT leak
To: oss-security@lists.openwall.com, cve-assign@mitre.org

On 09/08/2015 12:05 PM, Marcus Meissner wrote:
> Hi,
> 
> Redhat has published a paper on RSA-CRT keyleakage.
> 
> https://securityblog.redhat.com/2015/09/02/factoring-rsa-keys-with-tls-perfect-forward-secrecy/
> 
> There was a CVE assigned for this issue CVE-2015-5738, but the software scope of this assigned is not clear.
> 
> libgcrypt has published a hardening fix for the same issue.
> https://lists.gnupg.org/pipermail/gnupg-announce/2015q3/000370.html
> http://git.gnupg.org/cgi-bin/gitweb.cgi?p=libgcrypt.git;a=commit;h=b85c8d6645039fc9d403791750510e439731d479
> 
> Should it get a new CVE?

For context, Oracle has assigned CVE-2015-0478 for the missing hardening
in the default JCE implementation:

https://bugzilla.redhat.com/show_bug.cgi?id=1210355
http://www.oracle.com/technetwork/topics/security/cpuapr2015-2365600.html#AppendixJAVA
https://access.redhat.com/security/cve/CVE-2015-0478

This case is similar to libgcrypt, I believe: no key leaks have been
attributed to this implementation, the change is purely hardening in
this sense (and I would not have assigned a CVE ID to this).

-- 
Florian Weimer / Red Hat Product Security
