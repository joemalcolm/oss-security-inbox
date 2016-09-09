X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2666" "Friday" "9" "September" "2016" "09:42:12" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty3juci9AThs7OTWMSoCuJyGEeAiJ+j8qJPgn6mj-Xs91A@mail.gmail.com>" "94" "[oss-security] Re: CVEs for public Kibana / logstash issues" nil nil nil "9" "2016090915:42:12" "[oss-security] Re: CVEs for public Kibana / logstash issues" (number mark "U       kseifried@re Sep  9   94/2666  " thread-indent "\"[oss-security] Re: CVEs for public Kibana / logstash issues\"\n") "<CANO=Ty1b8mrUZQQuxwiVykKg1C-_qxbfuczbQxEL=8cBYfG9Nw@mail.gmail.com>" ("<CANO=Ty1b8mrUZQQuxwiVykKg1C-_qxbfuczbQxEL=8cBYfG9Nw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5144 invoked by uid 550); 9 Sep 2016 15:42:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5123 invoked from network); 9 Sep 2016 15:42:24 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=o73F5U8HgOvb0NTGmbq9UzD+uNzNAZgUyChadCifsqQ=;
        b=RlvWUy8AiFnnVeX0PjQiWYCG0MKU4E4UpSRuEvLgS32HGgzt25wL5p2FXMs/X4/x4C
         6Rc8cVsr4s8DZxy793KgjfHnzz0cPAtYBU3uvNMBpeez4nIF/zz+jUpMVLFePLbrOw7e
         Azmi73zeVXK9R3UXfkW+g6EGn47J5CHxgY0d67Gj51W0lG8pdOMVL29Zfxy3asjleDtO
         TST7BMB+ycvdCprl9fgb9uE78sO7t7ZpQp0NdB/OQG3GVjjo9KPGJCkqqb4NUUj73KOb
         yzNUULNsWXta8W+rpX2L+kXcZElWvtsWuGzPC4NT+TmOzxa4OUHfkDhM6GW8Krc2HVQ0
         /8HQ==
X-Gm-Message-State: AE9vXwO2O/dijTHi8BvLuV7r8yuos4sxkrpzIvZIlB9/OubPem9gci3iLo30gIHmkuAh+dC5WQBwIKWu8MED8U58
X-Received: by 10.202.196.196 with SMTP id u187mr6506610oif.20.1473435733059;
 Fri, 09 Sep 2016 08:42:13 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CANO=Ty1b8mrUZQQuxwiVykKg1C-_qxbfuczbQxEL=8cBYfG9Nw@mail.gmail.com>
References: <CANO=Ty1b8mrUZQQuxwiVykKg1C-_qxbfuczbQxEL=8cBYfG9Nw@mail.gmail.com>
From: Kurt Seifried <kseifried@redhat.com>
Date: Fri, 9 Sep 2016 09:42:12 -0600
Message-ID: <CANO=Ty3juci9AThs7OTWMSoCuJyGEeAiJ+j8qJPgn6mj-Xs91A@mail.gmail.com>
To: oss-security <oss-security@lists.openwall.com>, security@elastis.co
Content-Type: multipart/alternative; boundary=001a113544f27802b1053c14fdf2
Subject: [oss-security] Re: CVEs for public Kibana / logstash issues

--001a113544f27802b1053c14fdf2
Content-Type: text/plain; charset=UTF-8

As per discussion with MITRE the DWF will assign these CVEs (I had assumed
Elastic.co had asked for some already hence the public query). The CVEs for
this are in commit:
https://github.com/distributedweaknessfiling/DWF-Database/commit/b894223ca5da3dd5bb9dde8ba6b13cf2c53fa1fe

On Thu, Sep 8, 2016 at 9:02 AM, Kurt Seifried <kseifried@redhat.com> wrote:

> I just checked https://www.elastic.co/community/security and the Kibana
> issues do not have CVEs, can you please assign CVEs for:
>
> Kibana:
>
> ESA-2016-05 2016-09-06
> Version 2.4.0 of the Reporting plugin is vulnerable to a CSRF
> vulnerability that could allow an attacker to generate superfluous reports
> whenever an authenticated Kibana user navigates to a specially-crafted page. Users
> of the Reporting plugin should upgrade Kibana to 4.6.1 and Reporting to
> 2.4.1.
>

CVE-2016-1000218


>
> ESA-2016-04 2016-08-03
> When a custom output is configured for logging in versions of Kibana
> before 4.5.4 and 4.1.11, cookies and authorization headers could be written
> to the log files. This information could be used to hijack sessions of
> other users when using Kibana behind some form of authentication such as
> Shield. Users should upgrade to 4.5.4 or 4.1.11.
>

CVE-2016-1000219


>
> ESA-2016-03 2016-08-03
> Versions of Kibana before 4.5.4 and 4.1.11 are vulnerable to an XSS attack
> that would allow an attacker to execute arbitrary JavaScript in users'
> browsers. Users should upgrade to 4.5.4 or 4.1.11.
>

CVE-2016-1000220


>
> Logstash:
>
> ESA-2016-02 2016-07-07
> Prior to version 2.3.4, Elasticsearch Output plugin would log to file HTTP
> authorization headers which could contain sensitive information. Users
> who secure communication from Logstash to Elasticsearch via Basic
> Authorization using Elastic Shield or other systems are advised to upgrade
> to this version.
>

CVE-2016-1000221


>
> ESA-2016-01 2016-02-02
> Prior to version 2.1.2, the CSV output can be attacked via engineered
> input that will create malicious formulas in the CSV data. Users that
> currently use Logstash CSV output plugin or may want to use it in the
> future should upgrade to 2.2.0 or 2.1.2.
>

CVE-2016-1000222


>
> Thanks
>
> --
>
> --
> Kurt Seifried -- Red Hat -- Product Security -- Cloud
> PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
> Red Hat Product Security contact: secalert@redhat.com
>



-- 

--
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--001a113544f27802b1053c14fdf2--
