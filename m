Received: (qmail 16183 invoked by uid 550); 14 Nov 2025 17:41:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 16150 invoked from network); 14 Nov 2025 17:41:33 -0000
Date: Fri, 14 Nov 2025 17:41:23 +0000
From: Moritz =?iso-8859-1?Q?M=FChlenhoff?= <jmm@inutil.org>
To: oss-security@lists.openwall.com
Message-ID: <aRdpw5ss1eltT1FV@inutil.org>
References: <70e25a3d-7652-44da-8e4d-4e0a2e3a7a63@schafweide.org>
 <a6aa04d0-eb96-4d87-b7d4-b37838b05ce0@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a6aa04d0-eb96-4d87-b7d4-b37838b05ce0@oracle.com>
Subject: Re: [oss-security] CVE-2025-40300 / VMScape

Alan Coopersmith wrote:
> The CPU vendors have their own methods for alerting OS & Hypervisor makers of
> CPU-level security issues in advance of publication, that don't flow through
> the distros lists or this list, so fixes for those often happen without any
> notice here.

Most major CPU architecture issues have reached the list via the excellent Xen
advisories (which are also posted to this list).

But in the case of CVE-2025-40300, Xen isn't affected
(https://virtualize.sh/blog/vmscape-and-why-xen-dodged-it/), so there was never
a respective Xen advisory.

Cheers,
        Moritz
