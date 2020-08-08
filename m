X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1992" "Saturday" "8" "August" "2020" "17:21:44" "+0200" "Bastian Blank" "bblank@thinkmo.de" "<20200808152144.j5fatn23s6tgncsb@shell.thinkmo.de>" "48" "Re: [oss-security] Voiding CVE-2020-16248" "^Cc:" nil nil "8" "2020080815:21:44" "[oss-security] Voiding CVE-2020-16248" (number mark "        bblank@think Aug  8   48/1992  " thread-indent "\"Re: [oss-security] Voiding CVE-2020-16248\"\n") "<CAD77+gR7G5zBc4pwQ86H-UuMk6QOgPcuK8R-hmmHqv8+8_+dbw@mail.gmail.com>" ("<CAD77+gR7G5zBc4pwQ86H-UuMk6QOgPcuK8R-hmmHqv8+8_+dbw@mail.gmail.com>") nil nil nil nil nil nil nil "Re: [oss-security] Voiding CVE-2020-16248" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7973 invoked by uid 550); 8 Aug 2020 17:45:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 20326 invoked from network); 8 Aug 2020 15:21:56 -0000
Message-ID: <20200808152144.j5fatn23s6tgncsb@shell.thinkmo.de>
Mail-Followup-To: Bastian Blank <bblank@thinkmo.de>,
	Richard Hartmann <richih.mailinglist@gmail.com>,
	oss-security@lists.openwall.com
References: <CAD77+gR7G5zBc4pwQ86H-UuMk6QOgPcuK8R-hmmHqv8+8_+dbw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <CAD77+gR7G5zBc4pwQ86H-UuMk6QOgPcuK8R-hmmHqv8+8_+dbw@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
Cc: oss-security@lists.openwall.com
Date: Sat, 8 Aug 2020 17:21:44 +0200
From: Bastian Blank <bblank@thinkmo.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Voiding CVE-2020-16248
To: Richard Hartmann <richih.mailinglist@gmail.com>

Hi Richard

On Sat, Aug 08, 2020 at 10:49:14AM +0200, Richard Hartmann wrote:
> the Prometheus project[1] has received a public "vulnerability"
> report[2] against what the reporter called SSRF, but what is the core
> functionality of blackbox_exporter[3]: The ability to trigger network
> probes over the network to monitor a target's availability.

Could you please explain yourself why you think this is not a
vulnerability?  Even wanted functuality can constitute a vulnerability
if looked on closer.

The software allows to send pre-defined requests to arbitrary targets
and extract at least parts of the response.  This is a typical SSRF.
Would you require to specify the allowed targets, noone would ask.

>                                                        From context,
> it seems to be a paid assessment of our software for an unnamed client
> which increases motivation to get "results", in particular CVEs for
> "zero days" - which are then promptly reported publicly with an
> embargoed CVE.

Please don't.  You just accused the reporter of malpractice on a public
forum.  JFYI, this is punishable in your jurisdiction.

Also embargo and posting a public issue on GitHub don't really mix.

> The reporter has not replied to our statement that this behaviour is
> core functionality. I could not find out which organization has
> reserved CVE-2020-16248 so I decided to send email to this list to
> inform the organization, enabling them to update their records.

You did not address the reporter at all.  The reporter is also not a
regular user of GitHub, where this issue was raised.

> Sorry for using this list for that purpose, I could not find a less
> wrong place to inform the (hopefully) interested parties.

As others already told you, Mitre provides a form to request updates to
CVE entries at https://cve.mitre.org/cve/update_cve_entries.html.

Regards,
Bastian

-- 
Our way is peace.
		-- Septimus, the Son Worshiper, "Bread and Circuses",
		   stardate 4040.7.
