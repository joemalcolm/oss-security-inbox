X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2635" "Thursday" "9" "February" "2017" "09:10:23" "+0000" "Simon McVittie" "smcv@debian.org" "<20170209091023.vrhpgjbhbzaqmaez@perpetual.pseudorandom.co.uk>" "49" "Re: [oss-security] MITRE is adding data intake to its CVE ID process" "^Cc:" nil nil "2" "2017020909:10:23" "[oss-security] MITRE is adding data intake to its CVE ID process" (number mark "        smcv@debian. Feb  9   49/2635  " thread-indent "\"Re: [oss-security] MITRE is adding data intake to its CVE ID process\"\n") "<e159bb7e5d3a4352be4cc9c401b0e081@imshyb02.MITRE.ORG>" ("<e159bb7e5d3a4352be4cc9c401b0e081@imshyb02.MITRE.ORG>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15532 invoked by uid 550); 9 Feb 2017 09:10:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15514 invoked from network); 9 Feb 2017 09:10:40 -0000
Message-ID: <20170209091023.vrhpgjbhbzaqmaez@perpetual.pseudorandom.co.uk>
References: <e159bb7e5d3a4352be4cc9c401b0e081@imshyb02.MITRE.ORG>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e159bb7e5d3a4352be4cc9c401b0e081@imshyb02.MITRE.ORG>
User-Agent: NeoMutt/20170113 (1.7.2)
Cc: cve-assign@mitre.org
Date: Thu, 9 Feb 2017 09:10:23 +0000
From: Simon McVittie <smcv@debian.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] MITRE is adding data intake to its CVE ID process
To: oss-security@lists.openwall.com

On Thu, 09 Feb 2017 at 00:00:09 -0500, cve-assign@mitre.org wrote:
> If you have had trouble using the <https://cveform.mitre.org/> site,
> please let us know specifically what happened and how it did not meet
> your expectations.

The CVE form requires specifying a vendor on the "products and
sources list". I'm sure this works fine for proprietary software,
where everyone obtains Microsoft Office from Microsoft. For open
source it seems impractical: for instance, I'm a maintainer of both
D-Bus and ikiwiki, neither of which has any particular allegiance
to any larger legal entity than the individual maintainers.

Once released, D-Bus is later packaged by Debian, Red Hat, etc.,
and ikiwiki is packaged in at least Debian and Fedora; but they are
not the people issuing releases and do not have any special authority
over the upstream project, so there's no particular reason why the
upstream maintainers should say that any particular OS distribution is
"our vendor".

Or do you expect the upstream maintainers of open source software that
is packaged by at least one major distribution to choose one of those
distributions arbitrarily, and claim they are the vendor for the purposes
of your web form? If so, please make that more clear.

Similarly, I hope you're not expecting upstream open source maintainers to
check that their own software is in some master list of products before
requesting a CVE? I'm reasonably sure ikiwiki isn't in any non-automated
list of products, but Debian issues security update notifications for
it and would like to use CVE IDs in them.

For situations where a vulnerability is discovered by maintainers,
I've found it much easier to obtain CVE IDs before publication by asking
distribution security contacts like the Debian security team (again, an
arbitrary choice among the distributions that could be considered to be
the vendor). However, for public vulnerabilities, I don't want to leave my
users vulnerable while waiting for a CVE ID for a vulnerability that is
already known to the public - so I find myself issuing security updates
that identify the vulnerabilities with some self-generated identifier,
and attaching a CVE reference later. It seems to me that this is the
opposite of the intention of the CVE system: in an ideal world, every
security update would come with a CVE ID, even if that ID is later marked
as a duplicate of some other report.

(In practice what I frequently end up doing is allocating OVE IDs
<http://www.openwall.com/ove/> and then later declaring them to be
duplicates of a newly-issued CVE, as seen on
<https://ikiwiki.info/security/#index48h2>.)

    S
