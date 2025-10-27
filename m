Received: (qmail 19600 invoked by uid 550); 27 Oct 2025 19:22:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 19569 invoked from network); 27 Oct 2025 19:22:03 -0000
Date: Mon, 27 Oct 2025 19:21:54 +0000
From: Moritz =?iso-8859-1?Q?M=FChlenhoff?= <jmm@inutil.org>
To: oss-security@lists.openwall.com
Message-ID: <aP_GUo51BVldIFVQ@inutil.org>
References: <2ccbcc13-fc25-484c-a34d-56f27ac87db7@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2ccbcc13-fc25-484c-a34d-56f27ac87db7@oracle.com>
Subject: Re: [oss-security] Questionable CVE's reported against dnsmasq

On Mon, Oct 27, 2025 at 09:34:03AM -0700, Alan Coopersmith wrote:
> Among the new CVE's published this weekend were these from the VulDB CNA:
> 
> For all three bugs, the documented "exploit" requires "Replace the default
> configuration file (/etc/dnsmasq.conf) with the provided malicious file."
> and if you can replace the server's configuration file you don't need to
> play games with putting invalid contents in to break the parser, but can
> simply change the configuration directly.

The same nonsense also happened for the Kamailio SIP server (CVE-2025-12204,
CVE-2025-12205, CVE-2025-12206 and CVE-2025-12207).

Cheers,
        Moritz
