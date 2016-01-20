X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2166" "Wednesday" "20" "January" "2016" "10:14:26" "+0100" "Florian Weimer" "fweimer@redhat.com" "<569F4FF2.2090806@redhat.com>" "49" "[oss-security] Re: CVE assignment request for security bugs fixed in glibc 2.23" "^Cc:" nil nil "1" "2016012009:14:26" "[oss-security] Re: CVE assignment request for security bugs fixed in glibc 2.23" (number mark "        fweimer@redh Jan 20   49/2166  " thread-indent "\"[oss-security] Re: CVE assignment request for security bugs fixed in glibc 2.23\"\n") "<20160120025110.E39DC42E01D@smtpvbsrv1.mitre.org>" ("<20160120025110.E39DC42E01D@smtpvbsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 12047 invoked by uid 550); 20 Jan 2016 09:14:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 12021 invoked from network); 20 Jan 2016 09:14:41 -0000
References: <20160120025110.E39DC42E01D@smtpvbsrv1.mitre.org>
X-Enigmail-Draft-Status: N1010
Message-ID: <569F4FF2.2090806@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.4.0
MIME-Version: 1.0
In-Reply-To: <20160120025110.E39DC42E01D@smtpvbsrv1.mitre.org>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.23
Cc: oss-security@lists.openwall.com
Date: Wed, 20 Jan 2016 10:14:26 +0100
From: Florian Weimer <fweimer@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE assignment request for security bugs fixed in glibc 2.23
To: cve-assign@mitre.org

On 01/20/2016 03:51 AM, cve-assign@mitre.org wrote:
> The MITRE CVE team generally can assign IDs for security-fix releases
> of products where a notable upstream vendor has already made a final
> determination of what issues are, from their perspective,
> vulnerabilities that require customers to perform a product update.

In glibc's case, it's more about changes which may deserve backports to
distribution releases.

> Based on the set of issues mentioned, however, we probably don't have
> a shared understanding of what glibc bugs should be considered
> vulnerabilities and what ones should be considered ordinary bugs.

My understanding is shaped in part by your previous assignments.
CVE-2015-1473 is a good example, where the stack usage accounting is off
by a factor of four.

We try to approach this differently on the glibc side, as explained here:

  <https://sourceware.org/glibc/wiki/Security%20Process>

But this policy, requiring actual application impact for (say)
denial-of-service vulnerabilities, does not match your past assignment
practice, or indeed general industry expectations.

Approaching this from a completely different angle: If glibc upstream
marks certain bugs as potential backport material due to their security
impact, without arranging for CVE assignment, how can we make such
assignments happen in time for downstream security updates?

I expected that you do not want Red Hat, Debian &c to assign CVE IDs for
already public issues.  Yet you have failed to provide such assignments
when they were requested, leading to CVE-less security updates such as
this one:

  <https://lists.debian.org/debian-lts-announce/2015/09/msg00011.html>

> None of this is going to be resolved today, so here are the five CVE
> IDs for the listed issues.

Thanks, I will incorporate the assignments into the glibc bug tracker.

We still have a backlog of a few dozen issues fixed in previous releases
which are clearly vulnerabilities or have been referenced in downstream
security advisories.  We really should have a discussion about how to
handle them.  We can have it here, or in response to the multiple
messages I sent last fall.

Florian
