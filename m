X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["862" "Thursday" "25" "June" "2015" "12:44:47" "+0200" "Petr Matousek" "pmatouse@redhat.com" "<20150625104447.GI18896@dhcp-25-225.brq.redhat.com>" "21" "[oss-security] Re: CVE request -- Linux kernel - kvm: x86: out-of-bounds memory access in pit_ioport_read function" nil nil nil "6" "2015062510:44:47" "[oss-security] Re: CVE request -- Linux kernel - kvm: x86: out-of-bounds memory access in pit_ioport_read function" (number mark "        pmatouse@red Jun 25   21/862   " thread-indent "\"[oss-security] Re: CVE request -- Linux kernel - kvm: x86: out-of-bounds memory access in pit_ioport_read function\"\n") "<20150625104241.D22D76C063C@smtpvmsrv1.mitre.org>" ("<20150625095432.GH18896@dhcp-25-225.brq.redhat.com>" "<20150625104241.D22D76C063C@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21561 invoked by uid 550); 25 Jun 2015 10:45:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21534 invoked from network); 25 Jun 2015 10:45:02 -0000
Message-ID: <20150625104447.GI18896@dhcp-25-225.brq.redhat.com>
Mail-Followup-To: cve-assign@mitre.org, oss-security@lists.openwall.com
References: <20150625095432.GH18896@dhcp-25-225.brq.redhat.com>
 <20150625104241.D22D76C063C@smtpvmsrv1.mitre.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150625104241.D22D76C063C@smtpvmsrv1.mitre.org>
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.26
Cc: oss-security@lists.openwall.com
Date: Thu, 25 Jun 2015 12:44:47 +0200
From: Petr Matousek <pmatouse@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request -- Linux kernel - kvm: x86: out-of-bounds memory
 access in pit_ioport_read function
To: cve-assign@mitre.org

On Thu, Jun 25, 2015 at 06:42:41AM -0400, cve-assign@mitre.org wrote:
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA1
> 
> > Doesn't this fall under different code base?
> 
> No. There would be separate CVE IDs if it were a conceptually
> identical vulnerability in different code found in different
> codebases. We do not assign multiple CVE IDs to the same vulnerability
> in the same piece of code, regardless of how or why that code has been
> copied into different projects. This is a case with reuse of an entire
> substantial function: the function name is the same, the code
> structure is the same, names of variables and structure members are
> largely the same, etc. The reuse extends to pit_ioport_write as well.

Fair enough.

Thanks,
-- 
Petr Matousek / Red Hat Product Security
PGP: 0xC44977CA 8107 AF16 A416 F9AF 18F3  D874 3E78 6F42 C449 77CA
