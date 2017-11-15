X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/11/15/6
Message-ID: <20171115203735.svsrk7hu2z7rtxaa@eldamar.local>
Date: Wed, 15 Nov 2017 21:37:35 +0100
From: Salvatore Bonaccorso <carnil@...ian.org>
To: oss-security@...ts.openwall.com
Subject: Re: collectd: CVE-2017-16820: snmp-plugin: double free of request PDU
Content-Type: text/plain; charset=utf-8

On Wed, Nov 15, 2017 at 09:30:40PM +0100, Salvatore Bonaccorso wrote:
> Hi
> 
> Collectd's snmp-plugin is prone to a double free vulneability. This
> issue was made aware to the Debian security team, but turned out to be
> public already in. MITRE has assigned CVE-2017-16820 for it. The snmp
> plugin contains a double-free vulnerability in the
> snmp_sess_synch_response() function. Commit message:

Should have read csnmp_read_table, not snmp_sess_synch_response.

Regards,
Salvatore
