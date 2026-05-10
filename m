Received: (qmail 18409 invoked by uid 550); 10 May 2026 07:48:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 18156 invoked from network); 10 May 2026 07:48:01 -0000
Date: Sun, 10 May 2026 09:47:56 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20260510074756.GA17210@openwall.com>
References: <958c7edc-400f-44e9-aac4-78161e999db4@pipping.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <958c7edc-400f-44e9-aac4-78161e999db4@pipping.org>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] uriparser 1.0.2 fixes CVE-2026-44927 and CVE-2026-44928

On Sat, May 09, 2026 at 08:18:49PM +0200, Sebastian Pipping wrote:
> just a quick note that uriparser 1.0.2 released today is fixing
> vulnerabilities CVE-2026-44927 and CVE-2026-44928.

Thanks, but let's please be including vulnerability descriptions right
in the postings.  Also, when it's one vulnerability, its title should be
in the Subject line.  When it's more than one, then if there's a way to
group them e.g. by category or severity, that could go into the Subject.

> Some key links are:
> 
> - The change log of release 1.0.2
>   https://github.com/uriparser/uriparser/blob/uriparser-1.0.2/ChangeLog

This says:

>>>>>>>>>>>>> SECURITY >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
  * Fixed: [CVE-2026-44927]
      Stop truncating `ptrdiff_t` to `int`
      Thanks for the report to Ilia Alshanetsky and Joshua W. Windle!
      (GitHub #304)
  * Fixed: [CVE-2026-44928]
      Fix `EqualsUri` with regard to `.absolutePath`
      Thanks for the report to Ilia Alshanetsky! (GitHub #305)
>>>>>>>>>>>>> SECURITY >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
  * Fixed: Fix OOM related memory leak in `CopyUriMm`
      Thanks for the report to Ilia Alshanetsky! (GitHub #306)

> - The fixing pull requests
>   - https://github.com/uriparser/uriparser/pull/304
>   - https://github.com/uriparser/uriparser/pull/305
> 
> - The official CVE metadata
>   - https://nvd.nist.gov/vuln/detail/CVE-2026-44927
>   - https://nvd.nist.gov/vuln/detail/CVE-2026-44928

These only say a little:

CVE-2026-44927: In uriparser before 1.0.2, there is pointer difference
truncation to int in various places.

CVE-2026-44928: In uriparser before 1.0.2, the function family EqualsUri
can misclassify two unequal URIs as equal.

For CVE-2026-44927, it could help to clarify actual security exposure
and impact.

Alexander
