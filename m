X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1424" "Wednesday" "15" "February" "2017" "15:03:24" "+0100" "Raphael Geissert" "geissert@debian.org" "<CAA7hUgF5wi+ECx7=xycRfQib8X+j0n+6Mxopnd67x62K9YfnWw@mail.gmail.com>" "34" "Re: [oss-security] MITRE is adding data intake to its CVE ID process" nil nil nil "2" "2017021514:03:24" "[oss-security] MITRE is adding data intake to its CVE ID process" (number mark "U       geissert@deb Feb 15   34/1424  " thread-indent "\"Re: [oss-security] MITRE is adding data intake to its CVE ID process\"\n") "<20170211233541.GA6315@openwall.com>" ("<e159bb7e5d3a4352be4cc9c401b0e081@imshyb02.MITRE.ORG>" "<b1a94becd9a94b39bd3c95c89bc05f1f@imshyb02.MITRE.ORG>" "<20170211233541.GA6315@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 12059 invoked by uid 550); 15 Feb 2017 14:03:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12041 invoked from network); 15 Feb 2017 14:03:56 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:sender:in-reply-to:references:from:date:message-id
         :subject:to;
        bh=jhHyPJq9yr4e+6YaqG8Tv2PvH1K2kyK08zAv9tQOOvk=;
        b=Hu0ZEX8U35h5bTJBSPX59zbi/N552V6zrv42dlalYarVEzYYwC88N+QGhRH9s/XHQb
         +CHvW8C/PtD8VQ2OwgCiB25rqCv+Kq3LUxFWZvO01+PZGl7bUcooiGrezaMJLe8fC7su
         Mt2+hZlekgFqXp3aFsNBo1+0CmFHiPYZGvRG641oMn3kMCDpDOAkZ7SNIqiRlHwYbF46
         2pBSDrnivyLemR/i9HsZIP5EVkb/FwnQsxVynwlNb5GOrdvLazvfD77+WSLQLNhx/IpA
         sclnf7kW2WKcH3BDQfRF7I/OqZMcPppX0eKFNR4kgfXRWFTVQK5svTPcND7zKg4Nxi4/
         qD/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:sender:in-reply-to:references:from
         :date:message-id:subject:to;
        bh=jhHyPJq9yr4e+6YaqG8Tv2PvH1K2kyK08zAv9tQOOvk=;
        b=PwZeH71wH4Up2qPkvQuOiWF9YN8sk2TvJd+6KilqHWN0rj7vP/w9Pi6dzrY7qk29sS
         vmZj0o8UUq7yrWFo0UBoE4uReNjlZo0SCJapwmVP4Gp9SG4o3KAPxc77KUsJStQ6ylcR
         qpgrzJAtF7+wwZjzHyqHBsu5jqbA7c1hG+n9eN8d7dVl1RyyIP4g15+cvirQcq6Rw4wb
         mijFnadw7qzl6vmRYK2ZlPC4JoGQGSwZn5Mn8sRwtkCAwBLjQePhMCkJimAx4Hg2qufL
         5YU9e0/MF9gQUinoy8j4U0E/6djVzP/bHnaTZYI38+B/ZLsntohYl5BlCb8v4KTikNjQ
         bMkw==
X-Gm-Message-State: AMke39n4BBq3wykGftn11BF7COuc7L5WwoE/ibvDwFrK2SGrB5wG2s1QJxUvp3GzT0PoA6wFIXyVyuD91VLHhA==
X-Received: by 10.223.160.114 with SMTP id l47mr28748757wrl.73.1487167424676;
 Wed, 15 Feb 2017 06:03:44 -0800 (PST)
MIME-Version: 1.0
Sender: atomo64@gmail.com
In-Reply-To: <20170211233541.GA6315@openwall.com>
References: <e159bb7e5d3a4352be4cc9c401b0e081@imshyb02.MITRE.ORG>
 <b1a94becd9a94b39bd3c95c89bc05f1f@imshyb02.MITRE.ORG> <20170211233541.GA6315@openwall.com>
From: Raphael Geissert <geissert@debian.org>
Date: Wed, 15 Feb 2017 15:03:24 +0100
X-Google-Sender-Auth: 6vxYRL9c3EjfrzbnB5AjAEY_a-A
Message-ID: <CAA7hUgF5wi+ECx7=xycRfQib8X+j0n+6Mxopnd67x62K9YfnWw@mail.gmail.com>
To: Open Source Security <oss-security@lists.openwall.com>
Content-Type: text/plain; charset=UTF-8
Subject: Re: [oss-security] MITRE is adding data intake to its CVE ID process

Hi,

On 12 February 2017 at 00:35, Solar Designer <solar@openwall.com> wrote:
> On Fri, Feb 10, 2017 at 10:59:27PM -0500, cve-assign@mitre.org wrote:
>> C5. I want MITRE to send the https://cveform.mitre.org form data, and
>> the CVE ID, to the oss-security list at the same time that these are
>> sent to the requester.
>>
>> R5. We have had internal discussions within MITRE about this. We are
>> able to implement this easily if the community requires this approach.
>> At the moment, we are expecting the requester to resend this
>> information to oss-security once they accept their CVE ID assignment.
[...]
> MITRE - can you please implement that, and we'll see how it goes and
> whether we need it adjusted or possibly discontinued if things go wrong
> or if there's opposition (so far, there's almost none)?
>
>> Please see http://www.openwall.com/lists/oss-security/2017/02/09/26
>> for an example.
>
> This is also an example of how the change breaks threading.  First,
> there was a thread about the issue on the list.  Then there was CVE
> request and assignment off-list.  And then there's this new thread on
> the CVE assignment.

If this was to be implemented, the submitter could also just include
the message-id of the related oss-sec post.
The mail by MITRE could then set a In-Reply-To accordingly to avoid
thread breaking.

Cheers,
-- 
Raphael Geissert - Debian Developer
www.debian.org - get.debian.net
