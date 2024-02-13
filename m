Received: (qmail 3955 invoked by uid 550); 13 Feb 2024 22:31:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3626 invoked from network); 13 Feb 2024 22:31:42 -0000
Date: Tue, 13 Feb 2024 23:34:36 +0100
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Cc: Otto Moerbeek <otto.moerbeek@powerdns.com>
Message-ID: <20240213223436.GA4355@openwall.com>
References: <8f2901ed-401d-441a-bcf5-f23eda0d9e88@nlnetlabs.nl> <bf47ae9d-4a0f-4446-b224-c8c7f08e44e2@oracle.com> <20240213215209.GA4099@openwall.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240213215209.GA4099@openwall.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] Unbound: disclosure of CVE-2023-50387 and CVE-2023-50868 DNSSEC validation vulnerabilities

It's not great that we're adding to a thread on Unbound, but since we
already started...

On Tue, Feb 13, 2024 at 10:52:09PM +0100, Solar Designer wrote:
> On Tue, Feb 13, 2024 at 12:06:42PM -0800, Alan Coopersmith wrote:
> > On 2/13/24 06:07, Yorgos Thessalonikefs wrote:
> > >DNSSEC protocol vulnerabilities have been discovered that render various
> > >DNSSEC validators victims of Denial Of Service while trying to validate
> > >specially crafted DNSSEC responses.
> > >
> > >There are two known vulnerabilities: CVE-2023-50387 (referred here as
> > >the KeyTrap vulnerability) and CVE-2023-50868 (referred here as the
> > >NSEC3 vulnerability).
> > 
> > Similarly, dnsmasq 2.90 was published today to address these:
> > https://lists.thekelleys.org.uk/pipermail/dnsmasq-discuss/2024q1/017430.html
> 
> And fixes for these two CVEs were merged into PowerDNS today:
> 
> https://github.com/PowerDNS/pdns/pull/13781

There are also three PRs (13782, 13783, 13784) with back-ports to other
supported branches.

> I hope PowerDNS will also be sending a proper advisory in here.

Turns out there is a PowerDNS advisory here:

https://blog.powerdns.com/2024/02/13/powerdns-recursor-4-8-6-4-9-3-5-0-2-released

but really it should be posted to oss-security as well.

Alexander
