X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3416" "Wednesday" "27" "January" "2016" "14:32:29" "+0000" "=?UTF-8?B?VGhvbWFzIEIuIFLDvGNrZXI=?=" "thomas@ruecker.fi" "<56A8D4FD.3010904@ruecker.fi>" "89" "Re: [oss-security] shodan.io actively infiltrating ntp.org IPv6 pools for scanning purposes" "^Cc:" nil nil "1" "2016012714:32:29" "[oss-security] shodan.io actively infiltrating ntp.org IPv6 pools for scanning purposes" (number mark "        thomas@rueck Jan 27   89/3416  " thread-indent "\"Re: [oss-security] shodan.io actively infiltrating ntp.org IPv6 pools for scanning purposes\"\n") "<2413003.GtkKFizscD@chimera>" ("<2413003.GtkKFizscD@chimera>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13358 invoked by uid 550); 27 Jan 2016 14:32:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13339 invoked from network); 27 Jan 2016 14:32:46 -0000
References: <2413003.GtkKFizscD@chimera>
Message-ID: <56A8D4FD.3010904@ruecker.fi>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.5.1
MIME-Version: 1.0
In-Reply-To: <2413003.GtkKFizscD@chimera>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
Cc: team@security.debian.org, secalert@redhat.com
Date: Wed, 27 Jan 2016 14:32:29 +0000
From: =?UTF-8?Q?Thomas_B._R=c3=bccker?= <thomas@ruecker.fi>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] shodan.io actively infiltrating ntp.org IPv6 pools
 for scanning purposes
To: oss-security@lists.openwall.com, pool@lists.ntp.org, linuxbrad@gmail.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

On 01/27/2016 11:24 AM, Luca BRUNO wrote:
> [cross-posted to pool-ntp and oss-sec]
> 
> Hi, while reviewing network logs this morning I spotted some
> anomalies related to scan probes, ntp.org pools and IPv6.
> 
> It looks like Brad already observed and blogged about this some
> days ago, but I haven't seen this discussed in the usual ntp-pools,
> Debian and oss-sec ML, so I'm reposting this here: 
> http://netpatterns.blogspot.de/2016/01/the-rising-sophistication-of-ne
twork.html
>
>
> 
In summary, some machines (which seem related to the shodan.io scanning
project)
> are actively participating in pool.ntp.org as IPv6 endpoints. 
> However, clients connecting to them for NTP timesync, are
> subsequently scanned by probes originating from *.scan6.shodan.io
> hosts.
> 
> Confirming original report from Brad, I can add that those scanners
> seem to implement some kind of rate-limiting: they will timeout NTP
> and won't re-scan recent clients when doing multiple/subsequent NTP
> requests. Moreover, this is not targeted/restricted to the Debian
> pool only, but plague the whole IPv6 pool, as seen on a sample
> query to the RedHat pool:
> 
> ``` $ dig +short -t AAAA 2.rhel.pool.ntp.org | grep -E
> ':[[:xdigit:]]00[[:xdigit:]]$' 2a03:b0c0:3:d0::18:b001 $ dig +short
> -x 2a03:b0c0:3:d0::18:b001 analog.data.shodan.io. ```

While it's quite possible that the nodes are being run by Shodan, I
don't see conclusive proof of that just yet.
The reverse DNS, in my understanding could point to anything, including
"localhost" and "example.org". It only gets confirmed by doing another
DNS request, a forward lookup, for the previously received FQDN and
comparing it to the initial IPv6 address.

In the example at hand this fails, as a lookup yields:
analog.data.shodan.io has no AAAA record
While whois data for the IPv6 address shows this to be a digitalocean
droplet, just like mentioned by the linked blogpost regarding the other
addresses. So there is no obvious association with Shodan.


> (Upon querying this server for NTP, the machine immediately got
> IPv6-scanned by rock.scan6.shodan.io)
> 
> pool.ntp.org services are the default NTP servers in many default
> configurations (at least most of Linux distro) and I guess that
> this kind of behavior is dangerously increasing the exposure level
> of way too many systems.
> 
> For ntp.org admins: can those rogue server be expunged from the
> pools, and the whole shodan.io situation clarified? (Brad's post
> has a comprehensive endpoints list and helper tools for detection)
> 
> For oss-sec crowd: is there anything we can do to improve the
> situation and avoid similar cases in the future? Should
> crowd-sourced and fundamental services like this be encouraged to
> move to a stronger WoT?

I think it would be good if someone would ask Shodan for a statement.
This could clarify the above issue.


- From a security PoV I find this a fascinating and efficient approach to
finding hosts in, by design, sparsely populated IPv6 subnets. Just goes
to show, that if you don't want scans to reach your network, you should
run a perimeter firewall (determining sensible rules is on another page)
.

Cheers,

Thomas



-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAlao1P0ACgkQfkVKO9VkYGlXxwCeLZoe5ANFbCyOKtaESwagM54k
fk0AnRP4OrloTSsT1zJdO13jpBkyQLDa
=BShC
-----END PGP SIGNATURE-----
