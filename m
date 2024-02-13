Received: (qmail 9305 invoked by uid 550); 13 Feb 2024 21:49:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7821 invoked from network); 13 Feb 2024 21:49:16 -0000
Date: Tue, 13 Feb 2024 22:52:09 +0100
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20240213215209.GA4099@openwall.com>
References: <8f2901ed-401d-441a-bcf5-f23eda0d9e88@nlnetlabs.nl> <bf47ae9d-4a0f-4446-b224-c8c7f08e44e2@oracle.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <bf47ae9d-4a0f-4446-b224-c8c7f08e44e2@oracle.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] Unbound: disclosure of CVE-2023-50387 and CVE-2023-50868 DNSSEC validation vulnerabilities

On Tue, Feb 13, 2024 at 12:06:42PM -0800, Alan Coopersmith wrote:
> On 2/13/24 06:07, Yorgos Thessalonikefs wrote:
> >DNSSEC protocol vulnerabilities have been discovered that render various
> >DNSSEC validators victims of Denial Of Service while trying to validate
> >specially crafted DNSSEC responses.
> >
> >There are two known vulnerabilities: CVE-2023-50387 (referred here as
> >the KeyTrap vulnerability) and CVE-2023-50868 (referred here as the
> >NSEC3 vulnerability).
> 
> Similarly, dnsmasq 2.90 was published today to address these:
> https://lists.thekelleys.org.uk/pipermail/dnsmasq-discuss/2024q1/017430.html

And fixes for these two CVEs were merged into PowerDNS today:

https://github.com/PowerDNS/pdns/pull/13781

I hope PowerDNS will also be sending a proper advisory in here.

Alexander
