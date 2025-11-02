Received: (qmail 6056 invoked by uid 550); 2 Nov 2025 01:28:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 21578 invoked from network); 2 Nov 2025 01:26:33 -0000
Date: Sun, 2 Nov 2025 02:26:31 +0100
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20251102012631.GA8285@openwall.com>
References: <aP_msOoiyHJ_M4Yx@mertle> <20251027163220.8c7ede47-6b3a-4190-ad4b-e52761b341de@korelogic.com> <20251028014909.GA6430@openwall.com> <76f8e74c-d9cc-4f20-8061-488598f85fe7@protonmail.com> <20251101030054.GA3031@openwall.com> <875xbtlf4z.fsf@hope.eyrie.org> <87qzuh33x1.fsf@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87qzuh33x1.fsf@gmail.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] Questionable CVE's reported against dnsmasq

On Sat, Nov 01, 2025 at 01:15:38PM -0700, Collin Funk wrote:
> Russ Allbery <eagle@eyrie.org> writes:
> > This is a bit of an "ask the Lazyweb" question since I have done only
> > minimal research, but is there any way for me to declare, as the software
> > maintainer, what I consider to be the security boundaries of the software
> > in a way that can be at least partially machine-readable?

I'm not aware of a machine-readable way, but I was thinking of using
SECURITY.md for this in projects I (co-)maintain.

> There is a recent example in GNU Tar CVE-2025-45582 [1] which describes
> a situation that has been described in the manual for 15 years. Copying
> the relevant text from the manual [2]:
> 
>     When extracting from two or more untrusted archives, each one should
>     be extracted independently, into different empty
>     directories. Otherwise, the first archive could create a symbolic
>     link into an area outside the working directory, and the second one
>     could follow the link and overwrite data that is not under the
>     working directory. For example, when restoring from a series of
>     incremental dumps, the archives should have been created by a
>     trusted process, as otherwise the incremental restores might alter
>     data outside the working directory.
> 
> There seems to have been agreement to change this longstanding behavior,
> but the CVE situation seems to have been handled very sloppily. The CVE
> was assigned on 2025-07-11, and the GNU Tar mantainers did not know
> about it until 2025-08-07 when a third party inquired about it on
> list [3]. Presumably upon scanning a container or something like
> that.
> 
> Collin
> 
> [1] https://nvd.nist.gov/vuln/detail/CVE-2025-45582
> [2] https://www.gnu.org/software/tar/manual/html_node/Integrity.html
> [3] https://lists.gnu.org/archive/html/bug-tar/2025-08/msg00000.html

Here's a historical similarly controversial CVE against GNU tar:

https://nvd.nist.gov/vuln/detail/CVE-2005-2541

Quoting the NVD page above:

> Tar 1.15.1 does not properly warn the user when extracting setuid or
> setgid files, which may allow local users or remote attackers to gain
> privileges.
> 
> CVSS 2.0 Severity and Vector Strings:
> 
> National Institute of Standards and Technology
> NIST: NVD
> Base Score:  10.0 HIGH
> Vector:  (AV:N/AC:L/Au:N/C:C/I:C/A:C)
> 
> Vendor Statements (disclaimer)
> 
> Official Statement from Red Hat (08/30/2006)
> 
> This is the documented and expected behaviour of tar.

It is interesting that although Red Hat seems to dispute this CVE and
doesn't intend to fix it, they nevertheless give it a non-zero CVSS
score (copying here from the CSAF file as access.redhat.com gives me
empty pages today):

          "cvss_v3": {
            "attackComplexity": "HIGH",
            "attackVector": "LOCAL",
            "availabilityImpact": "HIGH",
            "baseScore": 7.0,
            "baseSeverity": "HIGH",
            "confidentialityImpact": "HIGH",
            "integrityImpact": "HIGH",
            "privilegesRequired": "NONE",
            "scope": "UNCHANGED",
            "userInteraction": "REQUIRED",
            "vectorString": "CVSS:3.1/AV:L/AC:H/PR:N/UI:R/S:U/C:H/I:H/A:H",
            "version": "3.1"
          },

To arrive at a zero score, the vector would need to claim no impact -
but would it be right to claim no impact not because there isn't any,
but because the behavior is documented?  As in "no additional impact
relative to documented behavior."  I don't know, but I hope so.

Also from the CSAF file:

          "text": "Currently, there are no plans to change tar behaviour to strip setuid and setgid bits when extracting archives.\n\nThis vulnerability is considered moderate rather than important because the exploitation scenario requires specific conditions: the `tar` extraction must be performed by the root user, and the tarball itself must be crafted maliciously with setuid or setgid bits. In typical use cases, users do not routinely extract untrusted tar files as root, reducing the likelihood of exploitation. Additionally, non-root extractions do not preserve these bits unless explicitly requested with the `-p` option.",
          "title": "Statement"

and

          "category": "workaround",
          "details": "To mitigate the risks associated with this vulnerability, avoid extracting tar files as the root user, especially when dealing with untrusted sources. Instead, perform extractions as a non-root user or in a restricted environment. Use a dedicated, empty directory for extracting archives to prevent accidental exposure of sensitive files. After extraction, review the file permissions to check for unexpected setuid or setgid bits before granting access. When extraction as root is necessary, use the --no-same-permissions option to prevent preserving the setuid and setgid bits.",

Alexander
