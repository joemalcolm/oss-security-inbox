X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2616" "Saturday" "23" "September" "2017" "11:14:28" "-0400" "Marc Deslauriers" "marc.deslauriers@canonical.com" "<e36752e0-c1d1-220f-76ae-5abbd047cd65@canonical.com>" "73" "Re: [oss-security] Why send bugs embargoed to distros?" "^Date:" nil nil "9" "2017092315:14:28" "[oss-security] Why send bugs embargoed to distros?" (number mark "        marc.deslaur Sep 23   73/2616  " thread-indent "\"Re: [oss-security] Why send bugs embargoed to distros?\"\n") "<20170923134418.6e460656@pc1>" ("<20170923134418.6e460656@pc1>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32696 invoked by uid 550); 23 Sep 2017 15:14:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32678 invoked from network); 23 Sep 2017 15:14:41 -0000
References: <20170923134418.6e460656@pc1>
Message-ID: <e36752e0-c1d1-220f-76ae-5abbd047cd65@canonical.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <20170923134418.6e460656@pc1>
Content-Type: text/plain; charset=utf-8
Content-Language: en-CA
Content-Transfer-Encoding: 8bit
Date: Sat, 23 Sep 2017 11:14:28 -0400
From: Marc Deslauriers <marc.deslauriers@canonical.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Why send bugs embargoed to distros?
To: oss-security@lists.openwall.com

Hi,

On 2017-09-23 07:44 AM, Hanno Böck wrote:
> Hi,
> 
> A few days have passed since the optionsbleed disclosure. Some
> interesting things have surfaced, e.g. the fact that it was apparently
> discovered already in 2014, but nobody noticed it was a security bug.
> 
> 
> But I'd like to discuss something else:
> I had informed the distros mailing list one week earlier about the
> upcoming disclosure with a bug description and links to the already
> available patch.
> My understanding is that the purpose of the distros list is that
> updates can be prepared so after a disclosure the time between "vuln is
> known" and "patch is available" is short.
> However from all I can see this largely didn't happen.
> 
> Debian+Ubuntu took more than a day after disclosure to fix. According
> to the Debian bug tracker the bug got only opened after the public
> disclosure[2]. I see no sign that any work on a fix began before the
> disclosure.

Having access to the embargoed information allowed us (Ubuntu) to evaluate the
impact of the issue, look at the fix, and start locally testing the fix to
determine if there were any issues. It also allows us to properly assign
resources to working on the update.

It would have probably taken us more than a day to publish this update if we
didn't have access to the information in advance.

> 
> If I can trust Red Hat's CVE tracker [3] there still are no fixed
> packages available. Also I haven't found any info about updated
> opensuse packages.
> 
> The only distro I'm aware of that prepared packages and pushed them
> right after disclosure is Gentoo.

For issues that aren't critical, we tend to wait until the upstream project
commits the fix before we release updates, to make sure a last-minute adjustment
or additional fix didn't get added.

> 
> All of this makes me wonder if the distros list serves its purpose.
> 
> I'd be curious to hear:
> 
> a) if any people felt that pre-disclosure of optionsbleed was helpful
> to them and in which way (after all - even if it only helps minor
> distros and major distros ignore it it may still be a good thing).

Yes, I believe the pre-disclosure was helpful to us. Thanks for doing it.

> 
> b) if people think that they'd usually prepare a fixed package, however
> they didn't consider optionsbleed important enough. (Naturally I
> probably have a bias seeing my findings as more important as other
> people, but I could live with that.)
> 
> c) other things?
> 

Thanks,

Marc.


-- 
Marc Deslauriers
Ubuntu Security Engineer     | http://www.ubuntu.com/
Canonical Ltd.               | http://www.canonical.com/
