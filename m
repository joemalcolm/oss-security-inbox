X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/01/02/1
Message-ID: <20130102180201.GA5867@pisco.westfalen.local>
Date: Wed, 2 Jan 2013 19:02:01 +0100
From: Moritz Muehlenhoff <jmm@...ian.org>
To: oss-security@...ts.openwall.com
Subject: Re: CVE request: Curl insecure usage
Content-Type: text/plain; charset=utf-8

On Wed, Dec 26, 2012 at 12:38:19PM +0100, Moritz Muehlenhoff wrote:
> On Thu, Nov 29, 2012 at 10:44:36PM +0100, Moritz Mühlenhoff wrote:
> > > Also can someone collate and post a list of all the other apps using
> > > curl insecurely and need CVE's with appropriate links to the
> > > upstreams/etc? Thanks.
> > 
> > There are some, which are potentially affected, but where discussion
> > with upstream is still pending.
 
Here are two more. These are the last two remaining issues found by 
Alessandro Ghedini:
Please assign CVE IDs:

1. Zabbix
https://support.zabbix.com/browse/ZBX-5924

2. Moodle
This one is two-fold. First of all Moodle embeds PHP-Cas and Moodle is thus
affected by CVE-2012-5583 as well. (Same code, so same CVE ID).

Additionally there's another issue specific to Moodle, which requires a CVE
ID:
https://github.com/tpyo/amazon-s3-php-class/pull/36

Cheers,
        Moritz
