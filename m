X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1409" "Wednesday" "17" "February" "2016" "15:04:42" "+0530" "Sandeep Kamble" "sandeepk.l337@gmail.com" "<CALq7B36t-pvYNou7MEKdncoXMbMzwkXgScj1sF=KqjObnZ2iag@mail.gmail.com>" "43" "Re: [oss-security] Re: Umbraco - The open source ASP.NET CMS Multiple Vulnerabilities" "^Cc:" nil nil "2" "2016021709:34:42" "[oss-security] Re: Umbraco - The open source ASP.NET CMS Multiple Vulnerabilities" (number mark "U       sandeepk.l33 Feb 17   43/1409  " thread-indent "\"Re: [oss-security] Re: Umbraco - The open source ASP.NET CMS Multiple Vulnerabilities\"\n") "<1455701432.2704.1.camel@trustmatta.com>" ("<20160216222342.CCC126FC01D@smtpvmsrv1.mitre.org>" "<1455701432.2704.1.camel@trustmatta.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13430 invoked by uid 550); 18 Feb 2016 06:32:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22104 invoked from network); 17 Feb 2016 09:34:54 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=j2z3lbFjpG7zraH6uQQY0WgEXkw28ohsFypY7VEyUxg=;
        b=Zau9R1eVd2oDW3s7WNvYL1nuf5db8gHmMGVYuxkI7eRCUm/4ZJpb8BBrE+91/TeZRX
         M8aBPgQizuufyw6v+c56scEpQ1orALBycz3gmJy4UtdWbPlAv6uTidYwn+eKcTGcbTJ9
         1UD2NwM6H56VPYwLMbwQyZQCZ3djSMwKcUTS+WvHahe7YpRe7IAwbZk8JYxSIrlbKEYX
         kl3naIdKgjpt1hMP9wpk562niY9DWoZSKd1LWY1/tKMov5G3mSIj7/UJrcTA2mcq8gtE
         gSs+cQNcMRp/apcU6TNjfRS0q7Qq8v4lBNJmEhzlQCxsZaCmxru7XhqFbdlZ0kvshpHx
         BSug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=j2z3lbFjpG7zraH6uQQY0WgEXkw28ohsFypY7VEyUxg=;
        b=mouk4snehILiifI7yazyxWLSf1onBl/di4Io0M99e9LAaI4O3GoIRWnT2wKnFIof9N
         OX07BFkyhpR4Ps4UGUp4SwByusOcVNplE+cyMOyShru2S93waDW0i3cEQNvOwT7ZoPV9
         nXuqI5kS/CJMABHNZgpnJXI8D0tODjL8fa8pmEUNuPehHuZZpMGiBaTVBSkNqtG96Rp3
         SJ7wx9LRyv4O9Y4/2dCZkB7wVH20HMtCY0iId4AiSkaKLP12IBaAYuOROts53S461wNj
         qlXhwtwmBn34RchW6k9mtBHOpGgR7BApnwb8Y0FJ4sVZNNc3x1YYpQ9hnc0pzjjW3MRO
         7BhA==
X-Gm-Message-State: AG10YOTxrFff2YYd0Y7LC+WMkjyvdJnTnmSJUA21MCd0WjWMnX/flyroakAuzYecl6dLvqJXEyhNIeu4D7tObQ==
MIME-Version: 1.0
X-Received: by 10.60.142.170 with SMTP id rx10mr344384oeb.37.1455701683025;
 Wed, 17 Feb 2016 01:34:43 -0800 (PST)
In-Reply-To: <1455701432.2704.1.camel@trustmatta.com>
References: <20160216222342.CCC126FC01D@smtpvmsrv1.mitre.org>
	<1455701432.2704.1.camel@trustmatta.com>
Message-ID: <CALq7B36t-pvYNou7MEKdncoXMbMzwkXgScj1sF=KqjObnZ2iag@mail.gmail.com>
Content-Type: multipart/alternative; boundary=047d7b163515b73fa5052bf3f554
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Wed, 17 Feb 2016 15:04:42 +0530
From: Sandeep Kamble <sandeepk.l337@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: Umbraco - The open source ASP.NET CMS Multiple Vulnerabilities
To: Florent Daigniere <florent.daigniere@trustmatta.com>

--047d7b163515b73fa5052bf3f554
Content-Type: text/plain; charset=UTF-8

I think CVE-2012-1301 is more about behaving like an open proxy. In this
bug attacker able to perform SSRF and using this attacker able to perform
port scanning etc.
On 17 Feb 2016 13:30, "Florent Daigniere" <florent.daigniere@trustmatta.com>
wrote:

> On Tue, 2016-02-16 at 17:23 -0500, cve-assign@mitre.org wrote:
> > > http://issues.umbraco.org/issue/U4-7457
> > > SSRF
> >
> > > the feedproxy.aspx is used to access the external resources using
> > > the URL GET parameter.
> >
> > > http://local/Umbraco/feedproxy.aspx?url=http://bobsite/index
> > >
> > > once you change the URL to the
> > > http://local/Umbraco/feedproxy.aspx?url=http://127.0.0.1:80/index,
> > > you able
> > > to access the localhost application of the server.
> > >
> > > Using this payload change the port number to perform port scanning
> > > of the
> > > server. It will be helpful to find the more details of the server.
> > > For example:
> > >
> > > http://local/Umbraco/feedproxy.aspx?url=http://127.0.0.1:25/index
> > > http://local/Umbraco/feedproxy.aspx?url=http://127.0.0.1:8080/index
> > >
> > > If the port number is closed, you will find the error message on
> > > the
> > > feedproxy.aspx page.
> >
> > Use CVE-2015-8813.
> >
>
> How different is it from CVE-2012-1301 ? Have they re-introduced it?
>
> Florent

--047d7b163515b73fa5052bf3f554--
