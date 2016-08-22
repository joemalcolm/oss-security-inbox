X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1797" "Sunday" "21" "August" "2016" "20:45:01" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty3Hd-hRYmfSsRoLoOwQC-Dvx+ENLDwM1bL3R6xKmhqukA@mail.gmail.com>" "55" "Re: [oss-security] TLS testing results - OS distro vulnerabilities" "^Cc:" nil nil "8" "2016082202:45:01" "[oss-security] TLS testing results - OS distro vulnerabilities" (number mark "        kseifried@re Aug 21   55/1797  " thread-indent "\"Re: [oss-security] TLS testing results - OS distro vulnerabilities\"\n") "<DB3PR05MB217DBB2D4476DFBE907D6D8BE170@DB3PR05MB217.eurprd05.prod.outlook.com>" ("<DB3PR05MB217DBB2D4476DFBE907D6D8BE170@DB3PR05MB217.eurprd05.prod.outlook.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9372 invoked by uid 550); 22 Aug 2016 02:45:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9350 invoked from network); 22 Aug 2016 02:45:14 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=tE3aHlRfi+E0rd2TrYTV/IZLZnpefunJBsCQgjaFwwg=;
        b=FjuCw51tq3dTM+7sKvaA1ERQW2izwRT9QpDCIs3QRcbvrNDO7vEmnE9BCFDSfy6qo+
         RJIBnJXdWd0mQzE/s4c5B1h1f6fUvccxw1SYB54TxwHu5Zu0VfvNUkVrF/ZkLCPq3siS
         FMVN0SlmonSTVmtim9Z/YlccAO7SYH/f6W27zSWgXwYvLCWH+eEtJD2eJsNO202RNnkd
         8yZCHZ+Yw3WqQbrGr7/F2wOlbbiXPuM6B9EX4M+T+v+qW2tFtws7JYIxZGuXdLYu4EWo
         3HzJEGUCMs69FZJS83Hg5glei+YO3SS5zQ6s2mDkpTahIcDwK7GCA9YLfklGm7zCiUfr
         3DLA==
X-Gm-Message-State: AEkoouvWJ4ijy+J8srD0r2ggrdCNEROc3O7i1c7EuGxeE44KCyUkVkS3TocyASnNOL9VXC8L6HPM23eHddXTOHTv
X-Received: by 10.202.72.71 with SMTP id v68mr11484034oia.70.1471833902416;
 Sun, 21 Aug 2016 19:45:02 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <DB3PR05MB217DBB2D4476DFBE907D6D8BE170@DB3PR05MB217.eurprd05.prod.outlook.com>
References: <DB3PR05MB217DBB2D4476DFBE907D6D8BE170@DB3PR05MB217.eurprd05.prod.outlook.com>
Message-ID: <CANO=Ty3Hd-hRYmfSsRoLoOwQC-Dvx+ENLDwM1bL3R6xKmhqukA@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a113db202ec285d053aa008b4
Cc: "ouspg@ee.oulu.fi" <ouspg@ee.oulu.fi>
Date: Sun, 21 Aug 2016 20:45:01 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] TLS testing results - OS distro vulnerabilities
To: oss-security <oss-security@lists.openwall.com>

--001a113db202ec285d053aa008b4
Content-Type: text/plain; charset=UTF-8

If you find apps/distros/etc that are NOT checking certificate validity
properly please either ask for CVEs here or contact DWF for CVEs (for open
source stuff). Thanks.

On Sat, Aug 20, 2016 at 10:50 AM, Mauri Miettinen <
Mauri.Miettinen@student.oulu.fi> wrote:

> To whom it may concern,
>
> We developed a tool to check if languages and libraries verify TLS
> certificates properly.
> While testing this tool we did a shootout against supported versions of the
> some major Linux distributions.
>
> Results are available from:
>
> https://github.com/ouspg/trytls/blob/shootout-0.3/shootout/README.md
>
> It seems it may be unsafe to do TLS in some of the  common distros.
> E.g. the native Python version in the distros varies, and not all fixes
> have
> been backported. In these cases Python still doesn't always have
> certificate
> checking enabled by default.
>
> We have contacted Python developers about the results.
>
> https://mail.python.org/pipermail/python-dev/2016-August/145815.html
>
> They gave us a couple of good pointers on how configuration could be
> used to mitigate the issues in some of the distributions. We are afraid
> this is still a hazard where neither software developers or users realize
> that code that works well for the developer may not be safe for the users.
>
> Would you have any other resources, advice or pointers we should
> document when communicating about this in the TryTLS project?
>
> Mauri Miettinen
>
> PS. Results have indications of weak crypto issues as well.




-- 

--
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--001a113db202ec285d053aa008b4--
