X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4535" "Wednesday" "27" "January" "2016" "09:23:26" "-0800" "Zach W." "kestrel@trylinux.us" "<56A8FD0E.8000009@trylinux.us>" "109" "Re: [oss-security] shodan.io actively infiltrating ntp.org IPv6 pools for scanning purposes" "^Date:" nil nil "1" "2016012717:23:26" "[oss-security] shodan.io actively infiltrating ntp.org IPv6 pools for scanning purposes" (number mark "        kestrel@tryl Jan 27  109/4535  " thread-indent "\"Re: [oss-security] shodan.io actively infiltrating ntp.org IPv6 pools for scanning purposes\"\n") "<CANO=Ty1ZFtpeUespB+nn0gZ8oC7PAkkr7+eTR1U+RyLtGKHKtA@mail.gmail.com>" ("<2413003.GtkKFizscD@chimera>" "<CANO=Ty1ZFtpeUespB+nn0gZ8oC7PAkkr7+eTR1U+RyLtGKHKtA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 14309 invoked by uid 550); 28 Jan 2016 04:33:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 16237 invoked from network); 27 Jan 2016 17:23:39 -0000
References: <2413003.GtkKFizscD@chimera>
 <CANO=Ty1ZFtpeUespB+nn0gZ8oC7PAkkr7+eTR1U+RyLtGKHKtA@mail.gmail.com>
Message-ID: <56A8FD0E.8000009@trylinux.us>
User-Agent: Mozilla/5.0 (Windows NT 6.2; WOW64; rv:38.0) Gecko/20100101
 Thunderbird/38.5.0
MIME-Version: 1.0
In-Reply-To: <CANO=Ty1ZFtpeUespB+nn0gZ8oC7PAkkr7+eTR1U+RyLtGKHKtA@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Date: Wed, 27 Jan 2016 09:23:26 -0800
From: "Zach W." <kestrel@trylinux.us>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] shodan.io actively infiltrating ntp.org IPv6 pools
 for scanning purposes
To: oss-security@lists.openwall.com

> I'm also not sure that having scanners scan and publish these results is
> such a bad thing, it raises awareness, and hopfully long term leads to
> things like legislation that forces device makers to make safe devices
> (e.g. no web interface with password "Admin")

I agree with Kurt.

Having worked heavily with projects such as Shodan, I understand that
there are two sides to the coin. However, many issues have been brought
to light with such services that would otherwise not have been known to
the sec community.

I'm not sure if @achillean (John Matherly) is on oss-sec, but he is
always very forthcoming in dealing with these kinds of things. My
suggestion would be to reach out to him and find out.

Zach W.

On 1/27/2016 6:43 AM, Kurt Seifried wrote:
> On Wed, Jan 27, 2016 at 4:24 AM, Luca BRUNO <lucab@debian.org> wrote:
>
>> [cross-posted to pool-ntp and oss-sec]
>>
>> Hi,
>> while reviewing network logs this morning I spotted some anomalies related
>> to scan probes, ntp.org pools and IPv6.
>>
>> It looks like Brad already observed and blogged about this some days ago,
>> but I haven't seen this discussed in the usual ntp-pools, Debian and
>> oss-sec ML, so I'm reposting this here:
>>
>> http://netpatterns.blogspot.de/2016/01/the-rising-sophistication-of-network.html
>>
>> In summary, some machines (which seem related to the shodan.io scanning
>> project)
>> are actively participating in pool.ntp.org as IPv6 endpoints.
>> However, clients connecting to them for NTP timesync, are subsequently
>> scanned
>> by probes originating from *.scan6.shodan.io hosts.
>>
>> Confirming original report from Brad, I can add that those scanners seem to
>> implement some kind of rate-limiting: they will timeout NTP and won't
>> re-scan
>> recent clients when doing multiple/subsequent NTP requests.
>> Moreover, this is not targeted/restricted to the Debian pool only, but
>> plague
>> the whole IPv6 pool, as seen on a sample query to the RedHat pool:
>>
>> ```
>> $ dig +short -t AAAA 2.rhel.pool.ntp.org | grep -E
>> ':[[:xdigit:]]00[[:xdigit:]]$'
>> 2a03:b0c0:3:d0::18:b001
>> $ dig +short -x 2a03:b0c0:3:d0::18:b001
>> analog.data.shodan.io.
>> ```
>> (Upon querying this server for NTP, the machine immediately got
>> IPv6-scanned
>> by rock.scan6.shodan.io)
>>
>> pool.ntp.org services are the default NTP servers in many default
>> configurations
>> (at least most of Linux distro) and I guess that this kind of behavior is
>> dangerously
>> increasing the exposure level of way too many systems.
>>
>> For ntp.org admins: can those rogue server be expunged from the pools,
>> and the whole
>> shodan.io situation clarified? (Brad's post has a comprehensive endpoints
>> list and
>> helper tools for detection)
>>
>> For oss-sec crowd: is there anything we can do to improve the situation
>> and avoid
>> similar cases in the future? Should crowd-sourced and fundamental services
>> like this
>> be encouraged to move to a stronger WoT?
>>
>> Ciao, Luca
>>
>> --
>>  .''`.  ** Debian GNU/Linux **  | Luca Bruno (kaeso)
>> : :'  :   The Universal O.S.    | lucab (AT) debian.org
>> `. `'`                          | GPG: 0xBB1A3A854F3BBEBF
>>   `-     http://www.debian.org  | Debian GNU/Linux Developer
>>
>
> Unfortunately there are strong economic incentives for this kind of
> behavior. scanning is a great example, you want to scan the Internet of
> things, this is easy with IPv4 (just bulk scan the used public space which
> is like 3 billion IPs) and basically impossible with IPv6. Simply leverage
> the fact that these IoT things often connect out to NTP servers by default
> using the pool.ntp.org servers. No matter what you do on the ntp.org pool
> the people who want to scan will most likely be willing to spend time and
> money to get at that data (hosting ntp servers, sniffing traffic to them,
> etc.). Sadly what you need is business process to detect this activity (and
> other forms of shenanigans) and then deal with the offender (e.g. remove
> their ntp server from the pool).
>
> Sadly we can't really rely on the IoT device makers to fix this, they have
> basically 0 incentive to prevent scanners from hitting their products
> (they're already sold, to late for the customer to make an informed
> decision).
>
> I'm also not sure that having scanners scan and publish these results is
> such a bad thing, it raises awareness, and hopfully long term leads to
> things like legislation that forces device makers to make safe devices
> (e.g. no web interface with password "Admin").
>

