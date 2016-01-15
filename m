X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["608" "Friday" "15" "January" "2016" "12:06:01" "+0100" "Florian Weimer" "fweimer@redhat.com" "<5698D299.6020202@redhat.com>" "12" "Re: [oss-security] Qualys Security Advisory - Roaming through the OpenSSH client: CVE-2016-0777 and CVE-2016-0778" "^Date:" nil nil "1" "2016011511:06:01" "[oss-security] Qualys Security Advisory - Roaming through the OpenSSH client: CVE-2016-0777 and CVE-2016-0778" (number mark "        fweimer@redh Jan 15   12/608   " thread-indent "\"Re: [oss-security] Qualys Security Advisory - Roaming through the OpenSSH client: CVE-2016-0777 and CVE-2016-0778\"\n") "<20160114171301.GH28298@localhost.localdomain>" ("<20160114171301.GH28298@localhost.localdomain>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17873 invoked by uid 550); 15 Jan 2016 11:06:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17851 invoked from network); 15 Jan 2016 11:06:15 -0000
References: <20160114171301.GH28298@localhost.localdomain>
X-Enigmail-Draft-Status: N1110
Message-ID: <5698D299.6020202@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.4.0
MIME-Version: 1.0
In-Reply-To: <20160114171301.GH28298@localhost.localdomain>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.26
Date: Fri, 15 Jan 2016 12:06:01 +0100
From: Florian Weimer <fweimer@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Qualys Security Advisory - Roaming through the
 OpenSSH client: CVE-2016-0777 and CVE-2016-0778
To: oss-security@lists.openwall.com

On 01/14/2016 06:13 PM, Qualys Security Advisory wrote:
> Internal stdio buffering is the most severe of the three problems
> discussed in this section, although GNU/Linux is not affected because
> the glibc mmap()s and munmap()s (and therefore cleanses) stdio buffers.

This will change in glibc 2.23, stdio will use regular malloc and free
for its buffers.  I did not expect this change to have security
implications.  Considering that the actual bug lies elsewhere, and stdio
usage is based on copying out of the buffer (so leaks can still happen
elsewhere), I do not wish to revert this change.

Florian
