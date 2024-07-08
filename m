Received: (qmail 3641 invoked by uid 550); 9 Jul 2024 10:24:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11626 invoked from network); 8 Jul 2024 23:53:09 -0000
Date: Tue, 9 Jul 2024 09:52:58 +1000 (AEST)
From: Damien Miller <djm@mindrot.org>
To: oss-security@lists.openwall.com
cc: Qualys Security Advisory <qsa@qualys.com>
In-Reply-To: <20240708162106.GA4920@openwall.com>
Message-ID: <67430275-b84d-462e-ab74-5a756c6d068f@mindrot.org>
References: <20240701083838.GA12787@localhost.localdomain> <20240708162106.GA4920@openwall.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.75 on 130.102.79.58
Subject: Re: [oss-security] CVE-2024-6387: RCE in OpenSSH's server, on
 glibc-based Linux systems

On Mon, 8 Jul 2024, Solar Designer wrote:

> Hi,
> 
> Today is the coordinated release date to publicly disclose a related
> issue I found during review of Qualys' findings, with further analysis
> by Qualys.  My summary is:
> 
> CVE-2024-6409: OpenSSH: Possible remote code execution in privsep child
> due to a race condition in signal handling

As an aside, who wrote the text of
https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2024-6409 ?

It's disappointing that this CVE states that this is a vulnerability
in OpenSSH sshd, and fails to make clear that this only affects Redhat
versions and users of their downstream patch.

This follows another critical failure to properly issue CVEs for OpenSSH:
CVE-2024-6387 only lists CPEs for Redhat systems as affected (see the
JSON dump of the entry: https://cveawg.mitre.org/api/cve/CVE-2024-6387 )

This means that anyone using automation that consumes CVEs for detecting
vulnerabilities will be left exposed.

Moreover, the explanatory text for CVE-2024-6387 is also extremely lacking.
It fails to explain the consequence of the vulnerability (unauth RCE) and
just talks about mechanism.

I don't know if it's in anyone on this list's ability to get these
fixed, but IMO they are serious failures of the CVE process that make
it near-useless for consumers of this information.

-d
