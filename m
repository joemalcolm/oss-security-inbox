X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3918" "Saturday" "8" "August" "2020" "07:21:35" "-0500" "Daniel Ruggeri" "druggeri@apache.org" "<eb6a0eab-af5e-7fea-3183-9e3308b1e3db@apache.org>" "110" "Re: [oss-security] CVE-2020-11984: Apache httpd: mod_uwsgi buffer overlow" "^Date:" nil nil "8" "2020080812:21:35" "[oss-security] CVE-2020-11984: Apache httpd: mod_uwsgi buffer overlow" (number mark "        druggeri@apa Aug  8  110/3918  " thread-indent "\"Re: [oss-security] CVE-2020-11984: Apache httpd: mod_uwsgi buffer overlow\"\n") "<20200808012029.GD3169683@millbarge>" ("<1596799898.GKATVRZF@httpd.apache.org>" "<20200808012029.GD3169683@millbarge>") nil nil nil nil nil nil nil "Re: [oss-security] CVE-2020-11984: Apache httpd: mod_uwsgi buffer overlow" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17516 invoked by uid 550); 8 Aug 2020 12:40:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5255 invoked from network); 8 Aug 2020 12:21:53 -0000
ARC-Seal: i=1; a=rsa-sha256; t=1596889300; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=dbFWbnN9/+AisgDDz5eEeApAq68ekSEGsTCv/cEXX+6oWDAIVZJtAt9tvcSHL2A8BplksOJlbfu+P3kT8gACoq9TlEjGnYXsr1e7M4WfOBTTZv5oyI8Sew97xr5PaBE8hOtPSg+uWpM8JkN0tlxJBzcTCmRupbbN5vGXIGHd2vg=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1596889300; h=Content-Type:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To; 
	bh=IVxBM9X+ELOOl2bgikzAN56+SN6xCsdez0qk10la8SY=; 
	b=jMfKeaECgxIygUk3DoU+a2bvPDTukFIZpqFbe7VcAsVWmCAYI1ZNvkjtYzLhXmO6Uj2CMRZ+OtCqK8YEXbYfGx4JFKaP6yKk/qvTDYQgm9Qc/eTC4uJaACjkDkFV+wHapDADklT19XO00K4ePm7g27822MVV+ljCtadiFyh6IVA=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	spf=pass  smtp.mailfrom=daniel@bitnebula.com;
	dmarc=pass header.from=<druggeri@apache.org> header.from=<druggeri@apache.org>
References: <1596799898.GKATVRZF@httpd.apache.org>
 <20200808012029.GD3169683@millbarge>
Message-ID: <eb6a0eab-af5e-7fea-3183-9e3308b1e3db@apache.org>
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20200808012029.GD3169683@millbarge>
Content-Type: multipart/alternative;
 boundary="------------E588741362B72C4DAEC96098"
Content-Language: en-US
X-ZohoMailClient: External
Date: Sat, 8 Aug 2020 07:21:35 -0500
From: Daniel Ruggeri <druggeri@apache.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2020-11984: Apache httpd: mod_uwsgi buffer
 overlow
To: oss-security@lists.openwall.com

--------------E588741362B72C4DAEC96098
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable


On 8/7/2020 8:20 PM, Seth Arnold wrote:
> On Fri, Aug 07, 2020 at 06:31:38AM -0500, Daniel Ruggeri wrote:
>> CVE-2020-11984: mod_uwsgi buffer overlow
>> Versions Affected:
>> httpd 2.4.32 to 2.4.44
>> Description:
>> Apache HTTP Server 2.4.32 to 2.4.44
>> mod_proxy_uwsgi info disclosure and possible RCE
>> References:
>> https://httpd.apache.org/security/vulnerabilities_24.html
> Hello Daniel, all,
>
> I'm confused: this english description of affected versions
> reads like 2.4.44 is affected. However, there is a heading on the
> vulnerabilities_24.html page that says this CVE is fixed in 2.4.44.
Hi, Seth;

=A0=A0 You're correct. That was an error on our part. We try to double check
this data (since sometimes we burn a release number as we test the
candidate) and things can get out of sync. I have it in my personal TODO
list to add some tooling around automating this particular part of the
release management process.

I've fixed this in a recent patch and the the site should now show the
correct data - many thanks for the correction

>
> Many projects include a "fixed in versions ..." list to indicate when
> something is fixed; I think this is less ambiguous.
>
> The "affects versions" don't always line up with the heading that claims
> to be fixed, eg CVE-2019-10092 claims to be fixed in 2.4.41, but the
> Affects entry doesn't mention 2.4.40.

Right - sometimes this will happen when we don't release a version. This
particular example is because 2.4.40 was not released (see below for a
bit more info).


>
> The headings are out of order:
>
> $ curl -sq https://httpd.apache.org/security/vulnerabilities_24.html | gr=
ep "Fixed in Apache"
> Fixed in Apache httpd 2.4.44</h1><dl>
> Fixed in Apache httpd 2.4.25</h1><dl>  # 2.4.25 is between 2.4.42 and 2.4=
.44
> Fixed in Apache httpd 2.4.42</h1><dl>
> Fixed in Apache httpd 2.4.41</h1><dl>
> Fixed in Apache httpd 2.4.39</h1><dl>
> [..]

No problem - I thought about this as I was putting together the
announcement but didn't adjust it at the time. I've fixed this as well


> The download site doesn't have a 2.4.40 download:
> https://archive.apache.org/dist/httpd/
>
> But the CHANGES_2.4.41 file shows a 2.4.40 release:
> https://archive.apache.org/dist/httpd/CHANGES_2.4.41

Correct - 2.4.40 was not released. We made a number of changes leading
up to it, but ultimately found an issue in the release candidate that we
fixed between then and a release that we were comfortable with.

If you're interested, you can see a bit more history (and even what's
coming in future release) by taking a look at this file:
http://svn.apache.org/repos/asf/httpd/httpd/branches/2.4.x/STATUS

We always note when we tag a release and then the final release date for
every version. You can find similar files for the old 2.2, 2.0, and 1.3
branches too.

>
> I don't actually care that much about CVE-2019-10092 -- I just tried to
> figure out the status of CVE-2020-11984 by looking at other examples on
> the page and found the page difficult to understand.
>
> And, something is a bit off with the CURRENT-IS-$version markers:
>
> $ curl -sq https://archive.apache.org/dist/httpd/ | grep -c CURRENT
> 47
I can see how that appears odd. This URL is our archive distribution
point, so anything we release to the formal distribution point will be
added here automatically to preserve history. It's best to use the
current distribution point:
https://dist.apache.org/repos/dist/release/httpd/

We always maintain the zero-length CURRNT-IS-foo file here and remove
non-current releases.


>
> I expected one in each of the 2.0, 2.2, and 2.4 series, or perhaps just
> one for the newest 2.4 release.
>
> Thanks


Thanks for taking the time to provide feedback! Have a great weekend


--------------E588741362B72C4DAEC96098--

