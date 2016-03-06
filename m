X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3222" "Sunday" "6" "March" "2016" "21:39:54" "+0100" "Gsunde Orangen" "gsunde.orangen@gmail.com" "<56DC959A.6060200@gmail.com>" "67" "Re: [oss-security] Concerns about CVE coverage shrinking - direct impact to researchers/companies" "^Date:" nil nil "3" "2016030620:39:54" "[oss-security] Concerns about CVE coverage shrinking - direct impact to researchers/companies" (number mark "        gsunde.orang Mar  6   67/3222  " thread-indent "\"Re: [oss-security] Concerns about CVE coverage shrinking - direct impact to researchers/companies\"\n") "<8BB58F16-D629-48CB-96C6-3EA7406BA6A6@fearnothingproductions.net>" ("<CANO=Ty3u964Yax4jMPkwDEiWj=S5TBQdGKarKyicVAk2Ec+Hxw@mail.gmail.com>" "<56D9DD1F.1030302@cert.org>" "<20160305172039.GA20796@openwall.com>" "<20160306062700.GA25289@gremlin.ru>" "<110FE574-DEEC-4308-90BE-A83A5C53421A@gmail.com>" "<20160306150917.GA29105@openwall.com>" "<CAFHyJTqHw=Cjg6C-u4eUyUVe9bcntn+LombQ+fnosgXBy79OZA@mail.gmail.com>" "<20160306161617.GA30781@openwall.com>" "<8BB58F16-D629-48CB-96C6-3EA7406BA6A6@fearnothingproductions.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 18320 invoked by uid 550); 6 Mar 2016 20:40:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 18302 invoked from network); 6 Mar 2016 20:40:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding;
        bh=Yz2azLbrTLJSohux5dcGr+6iH1cEIkm8gKYUBJToW5k=;
        b=Ez/Tdo/D4gStMs0zWutTQayGo4OSu3II5vA4YY3Pfqirek693XHNXadsiphV+n0r+/
         eMAO4agFoajnroAGcJLHrh8jnb/EDzFR9FI63kFf5H1mydfXuCVaHZuJMttnq9ndxTD+
         IS50UJYifQOnowJZwYUD4WcTk+bx0kQxmZ6+cq3KxChfYNVfv+fdsTGjn/wBJUfP3uI9
         EOMpkDQfEXqmn+DjRKDcIwlrys2JxJzvWUOH3d4P+tpF2xuUaXTPay9NiIXIaAAwc0yF
         YpwPq+78N62+SHQbzyCxIyYH+q3CuwY0piXLoL/F60a1nTDsPCoioZJQkKMSqd4b8wWE
         HCUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding;
        bh=Yz2azLbrTLJSohux5dcGr+6iH1cEIkm8gKYUBJToW5k=;
        b=j3XY7KjBi7RKnBg0Zqi7bj4JroGFfuAVCe7s3CyPeHHQMCYTwvN4j2ZkUvr8tX+rCR
         s6dgIhpk1zkR5k1wQ51Uw57G4zbmtwnZuJn9C7tl6YzgyWakigz6NeX3IpqK+b1Asrwq
         V3/PGQVmt8VOs5XcNY1kZDE84rukrfYXVYksfcDya3HL5bk/l61ZpRDzmfcql6yO6ng2
         DaofwISQxYZy2oC4xJXaBuhFfRj9xTrU+SwW40BnpdoyclRJvyroMH2lFQN2htWI47dB
         5wV/TNkMCTJ4X0/i2Utm2VXa0kKA9bkOYyrbKvq9CYPOuOYev2sQlXnkTStrkRO6/KxT
         3cFA==
X-Gm-Message-State: AD7BkJKWELlxuODgSXZzfwTnSeGM7QtlCGeSV1bOPc59jd4OTzSps2tNPp0d0TYmLP5cIg==
X-Received: by 10.28.188.5 with SMTP id m5mr3448687wmf.35.1457296794887;
        Sun, 06 Mar 2016 12:39:54 -0800 (PST)
References: <CANO=Ty3u964Yax4jMPkwDEiWj=S5TBQdGKarKyicVAk2Ec+Hxw@mail.gmail.com>
 <56D9DD1F.1030302@cert.org> <20160305172039.GA20796@openwall.com>
 <20160306062700.GA25289@gremlin.ru>
 <110FE574-DEEC-4308-90BE-A83A5C53421A@gmail.com>
 <20160306150917.GA29105@openwall.com>
 <CAFHyJTqHw=Cjg6C-u4eUyUVe9bcntn+LombQ+fnosgXBy79OZA@mail.gmail.com>
 <20160306161617.GA30781@openwall.com>
 <8BB58F16-D629-48CB-96C6-3EA7406BA6A6@fearnothingproductions.net>
Message-ID: <56DC959A.6060200@gmail.com>
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:38.0) Gecko/20100101
 Thunderbird/38.6.0
MIME-Version: 1.0
In-Reply-To: <8BB58F16-D629-48CB-96C6-3EA7406BA6A6@fearnothingproductions.net>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit
Date: Sun, 6 Mar 2016 21:39:54 +0100
From: Gsunde Orangen <gsunde.orangen@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Concerns about CVE coverage shrinking - direct
 impact to researchers/companies
To: oss-security@lists.openwall.com

I totally agree.
The concern addressed by Kurt initially is fully valid (for both
researchers and for companies that are not on Mitre's product/sources
list), so a new (better: additional) solution is required.
However, creating a new standard independently of CVE would be too
disruptive and be a disservice to the software industry.
I'd propose to work out a new solution together with Mitre, whilst
keeping the CVE IDs as today.
Since 2014, virtually unlimited number of CVE IDs can be assigned per
year [1], so a solution could be that
 - Mitre continues to assign 4 and 5 digit IDs as today
 - 6 digit IDs are reserved for the new process (hosted outside Mitre)
If more than one million vulnerabilities need to be addressed in one
year, we could follow the rule (odd digits -> Mitre, even digits ->
"other process")
>From Mitre's POC, this "other process" would become a "CNA", just with
its own policy and process definition, not prescribed by Mitre.
It would soon become clear to everyone (and all tools and products that
rely on CVE) where to look at for the authoritative vulnerability
information.

And yes: OWASP.org could certainly be a perfect host for that new "CNA"
- as Mark offered earlier ;-)

Gsunde

[1] https://cve.mitre.org/cve/identifiers/cve-ids.html


On 06.03.2016, 18:16 Robert Paprocki wrote:
> This thread should be the definition of Munroe's Law. Like Goodwin's Law, which states that the longer an online conversation continues, the probability that it will involve Nazi analogies reaches 1, Munroe's Law says that eventually any conversation about an existing standard reaches no conclusions other than to create a new standard. 
> 
> https://xkcd.com/927
> 
>> On Mar 6, 2016, at 08:16, Solar Designer <solar@openwall.com> wrote:
>>
>>> On Sun, Mar 06, 2016 at 03:47:19PM +0000, op7ic x00 wrote:
>>> agree, the vanity hunting is going to be there but I suppose as with any
>>> bug ID that is going to happen.
>>> But beyond that I don't think it matters as much. In the end of the day if
>>> somebody can use OVI or OVE to identify their bug then at least we got some
>>> level of reference to look it up on google.
>>
>> Right.
>>
>>> I was toying with 4digit IDs that would be random enough, thats a
>>> possiblity too, the only problem is that there is a overhead of doing DB
>>> sorting and lookups to make sure their don't clash. Thats why ovi uses
>>> sequential numbers - its just easier to manage.
>>
>> Oh, you (would) use an actual database backend?  OVE currently uses a C
>> program with a tiny binary data file (to keep track of per-IP and
>> per-netblock consumption of IDs, as well as the current date and ID),
>> and the file is wiped clean (by this same program) on first access after
>> midnight.  I wrote this yesterday in response to the thread in here.
>>
>> For random IDs, if we wanted those, there are shuffling algorithms that
>> don't require storage yet guarantee unique numbers (until the target
>> range is exhausted) - they're good e.g. for IP ID and DNS sequence
>> numbers - although checking against an array of 10k numbers is almost
>> instant anyway (as far as this application is concerned).
>>
>> Anyway, this is getting off-topic.
>>
>> Alexander
> 

