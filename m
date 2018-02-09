X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1690" "Friday" "9" "February" "2018" "08:47:00" "+0100" "=?UTF-8?B?UGV0ciDFoHBhxI1law==?=" "petr.spacek@nic.cz" "<ad030315-66c0-608e-62fd-622413bf6188@nic.cz>" "43" "[oss-security] Re: bug in DNS resolvers - DNSSEC validation" "^Cc:" nil nil "2" "2018020907:47:00" "[oss-security] Re: bug in DNS resolvers - DNSSEC validation" (number mark "        petr.spacek@ Feb  9   43/1690  " thread-indent "\"[oss-security] Re: bug in DNS resolvers - DNSSEC validation\"\n") "<cig332d11fszn7.fsf@amazon.com>" ("<cig332d11fszn7.fsf@amazon.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22489 invoked by uid 550); 9 Feb 2018 08:23:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24551 invoked from network); 9 Feb 2018 07:47:12 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nic.cz; s=default;
	t=1518162421; bh=+MukL+gPdniwugFImSBgbvxOZ7LYDotFKn5ns7DZTls=;
	h=To:From:Date;
	b=v9e9+EI/K3wrgmqWG2v9wd9Umv8pXR/0Wjk0kT4lMG5kYx7btvrQ1D973T3o1+xi8
	 9xiXHVWUGdJ4Ew8zoI5ZCzZe+dT7e2kcuqhAupbKzItlIHhYFYW8i3j7oyWgr8noeX
	 z933xa2DOFMg0rRQ9G27cDbgSq9LsJ66yrffQffI=
References: <cig332d11fszn7.fsf@amazon.com>
Organization: CZ.NIC
Message-ID: <ad030315-66c0-608e-62fd-622413bf6188@nic.cz>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.5.2
MIME-Version: 1.0
In-Reply-To: <cig332d11fszn7.fsf@amazon.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.99.2 at mail
X-Virus-Status: Clean
Cc: Jan Pavlinec <jan.pavlinec@nic.cz>,
 Remi Gacogne <remi.gacogne@powerdns.com>, Solar Designer
 <solar@openwall.com>, Kristian Fiskerstrand <k_f@gentoo.org>
Date: Fri, 9 Feb 2018 08:47:00 +0100
From: =?UTF-8?B?UGV0ciDFoHBhxI1law==?= <petr.spacek@nic.cz>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: bug in DNS resolvers - DNSSEC validation
To: Anthony Liguori <aliguori@amazon.com>, oss-security@lists.openwall.com

Please accept my apology for this omission, the issue were made public
right after end of embargo but I totally forgot about posting it again here.

On 9.2.2018 02:46, Anthony Liguori wrote:
> The following issues were reported on distros@ on Jan 15th and
> subsequently made public without a post here.  I'm referencing the
> public announcements I've found with hope that Petr et al can provide
> more specific information here.
> 
> https://nvd.nist.gov/vuln/detail/CVE-2018-1000002?cpeVersion=2.2
> https://doc.powerdns.com/recursor/security-advisories/powerdns-advisory-2018-01.html

Announcement for Knot Resolver 1.5.2 is here:
https://lists.nic.cz/pipermail/knot-resolver-users/2018/000000.html

Nature of the issue is that original DNSSEC specification in dection 5.4
of [RFC4035] under-specifies the algorithm for checking nonexistence
proofs.

While implementing DNSSEC validation into Knot Resolver, we forgot to
implement additional conditions explained in RFC 6840, so our DNSSEC
validator could accept an NSEC or NSEC3 RR proofs from an ancestor zone
as proving the nonexistence of an RR in a child zone.


Please note that Knot Resolver versions older than latest 1.5.z are
obsolete and not maintained by CZ.NIC anymore so all users all advised
to upgrade immediatelly to to latests 1.5 or 2.0 branches.

Version 1.5.z is going to be end-of-life in approximatelly one month so
direct upgrade to version 2.0 or later is strongly recommended.

Petr Špaček  @  CZ.NIC


> The distros@ list has a policy that after the embargo lifts, the report
> is also made to oss-security to ensure there is a public record of what
> has been reported.
> 
> Regards,
> 
> Anthony Liguori

