X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["862" "Wednesday" "18" "March" "2015" "13:44:20" "+0100" "Florian Weimer" "fweimer@redhat.com" "<55097324.1070606@redhat.com>" "16" "Re: [oss-security] CVE Request: Linux kernel execution in the early microcode loader." nil nil nil "3" "2015031812:44:20" "[oss-security] CVE Request: Linux kernel execution in the early microcode loader." (number mark "        fweimer@redh Mar 18   16/862   " thread-indent "\"Re: [oss-security] CVE Request: Linux kernel execution in the early microcode loader.\"\n") "<20150318122502.GA24063@chrystal.uk.oracle.com>" ("<20150318122502.GA24063@chrystal.uk.oracle.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 16324 invoked by uid 550); 18 Mar 2015 12:44:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 16303 invoked from network); 18 Mar 2015 12:44:34 -0000
Message-ID: <55097324.1070606@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
References: <20150318122502.GA24063@chrystal.uk.oracle.com>
In-Reply-To: <20150318122502.GA24063@chrystal.uk.oracle.com>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.23
Date: Wed, 18 Mar 2015 13:44:20 +0100
From: Florian Weimer <fweimer@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE Request: Linux kernel execution in the early
 microcode loader.
To: oss-security@lists.openwall.com, CVE-assign <cve-assign@mitre.org>

On 03/18/2015 01:25 PM, Quentin Casasnovas wrote:
> The attack vector could be from anyone between Intel and people
> shipping/packaging the microcode, or could potentially be used to get a
> resilient backdoor on system already compromised by sticking a tampered
> microcode on the initrd.  It would also allow root to get kernel execution
> by recreating the initrd.  I admit these are overly paranoid scenarios, but
> I _think_ there's still a privilege crossing from root to kernel exec which
> could make sense on certain security model.

Yes, Secure Boot separates root privileges from code execution in ring 0
(according to some interpretations of Secure Boot, in practice,
signatures on binaries allowing ring 0 code execution are not revoked,
so this new vulnerability does not alter the general picture).

-- 
Florian Weimer / Red Hat Product Security
