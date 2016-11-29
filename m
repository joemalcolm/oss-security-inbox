X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1591" "Tuesday" "29" "November" "2016" "07:15:36" "-0800" "Yongjun Zhang" "yzhang@cloudera.com" "<CAA0W1bQ9jnVcNYZK8i-fGYtc=VUiYm_H+TxqkjY3Tfuwb1kwMQ@mail.gmail.com>" "87" "[oss-security] Re: CVE-2016-5393: Apache Hadoop Privilege escalation vulnerability" nil nil nil "11" "2016112915:15:36" "[oss-security] Re: CVE-2016-5393: Apache Hadoop Privilege escalation vulnerability" (number mark "U       yzhang@cloud Nov 29   87/1591  " thread-indent "\"[oss-security] Re: CVE-2016-5393: Apache Hadoop Privilege escalation vulnerability\"\n") "<CAMXuLLpSKYqvCsWXv6qcD0sDwsYLShbfsD40ivwzOnJ=X=8VpA@mail.gmail.com>" ("<CAA0W1bTbUmUUSF1rjRpX-2DvWutcrPt7TJSWUcSLg1F0gyHG1Q@mail.gmail.com>" "<CAMXuLLpSKYqvCsWXv6qcD0sDwsYLShbfsD40ivwzOnJ=X=8VpA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15910 invoked by uid 550); 29 Nov 2016 16:17:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9557 invoked from network); 29 Nov 2016 15:15:48 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cloudera-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=oYIjaX1TNA3ryEYmWMTx1o6d2YvrUgkkh84vaeRls3Q=;
        b=vaXh4dwmHWltkKGvcijOzYuNu+7TaRroWsTDhJUSzGPrSVyIk3ywAEDexu8C3F4m7K
         lb6C6DS7FAULP8p5rmMjdFlQkm5Wszxj3+LbTiwAZZHNlTgUY7ifmxZzO9kXNH5fuJfp
         L6Fj7S+aDyxrEYup0VjkJvBOviOMCQmR2yLcTbVnvj1Xhq9wAJ5ECHZTSNZQMk4ipLeZ
         gSWOsXGZu6dHxHNXpqQR/nhllTgwwAhokW5d4UxZ610gxoaqanCUZR4vcYey7nJL3S0B
         3mr8uz9BQhzh8AohNEkpYApOEzyt8Nk99gx49ILdiGnMajH2szTsKk3mWhMwIv4T2toN
         uphw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=oYIjaX1TNA3ryEYmWMTx1o6d2YvrUgkkh84vaeRls3Q=;
        b=Xz8cIXcisicgZ8wGH2k/YK1HB63oQxYy4QwlX4Ea8f8dKoVA+LPPzdONpKXa+gISPm
         aauFa4uhlBEo6YgsnsNTlftC4fTV7Hid8ik2IwwMkWMQgHD8UlRb0JLYfRKni+Xv8DBy
         X9M/lbxaYUR8I3os/46eL9pO3Mn6k4gFE80SPvl5cRW87KK/TOzNurMe3hHxGYlue+mA
         2lzTyA/HnRgG1s4SSTbszNIK9aTBxfudLh3daF09T1C5mzjNk5fBZ5Assm4+As8hgkhG
         rvkBWtPH/Ag9WP2CEJ5V1bVRkUk+T0QLYGSijfkDLtH5EfjtNoAoiHOSRSTtFLsMMTwD
         nUCA==
X-Gm-Message-State: AKaTC01FRxjTaXp1cOd5jeSm0vZILllQcI1/P8AJpHWcHBVDGY+g+qFAeW8NQyOpe784vbKLDbS8nkl6sXx7A/no
X-Received: by 10.202.183.6 with SMTP id h6mr15324987oif.76.1480432536849;
 Tue, 29 Nov 2016 07:15:36 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <CAMXuLLpSKYqvCsWXv6qcD0sDwsYLShbfsD40ivwzOnJ=X=8VpA@mail.gmail.com>
References: <CAA0W1bTbUmUUSF1rjRpX-2DvWutcrPt7TJSWUcSLg1F0gyHG1Q@mail.gmail.com>
 <CAMXuLLpSKYqvCsWXv6qcD0sDwsYLShbfsD40ivwzOnJ=X=8VpA@mail.gmail.com>
From: Yongjun Zhang <yzhang@cloudera.com>
Date: Tue, 29 Nov 2016 07:15:36 -0800
Message-ID: <CAA0W1bQ9jnVcNYZK8i-fGYtc=VUiYm_H+TxqkjY3Tfuwb1kwMQ@mail.gmail.com>
To: Zhe Zhang <zhe.zhang.research@gmail.com>
Cc: security@apache.org, oss-security@lists.openwall.com, 
	bugtraq@securityfocus.com, general@hadoop.apache.org
Content-Type: multipart/alternative; boundary=001a113cd1ec794ae30542720ff4
Subject: [oss-security] Re: CVE-2016-5393: Apache Hadoop Privilege escalation vulnerability

--001a113cd1ec794ae30542720ff4
Content-Type: text/plain; charset=UTF-8

Hi Zhe,

Please refer to  https://www.apache.org/security/ for details.

Thanks.

--Yongjun

On Mon, Nov 28, 2016 at 10:26 PM, Zhe Zhang <zhe.zhang.research@gmail.com>
wrote:

> Thanks for the note Yongjun! Does HADOOP-13434
> <https://issues.apache.org/jira/browse/HADOOP-13434> fix the problem?
>
> On Mon, Nov 28, 2016 at 4:04 PM Yongjun Zhang <yjzhangal@apache.org>
> wrote:
>
> > Hi,
> >
> > Please see below the official announcement of a critical security
> > vulnerability that's discovered and subsequently fixed in Apache Hadoop
> > releases.
> >
> > Thanks and best regards,
> >
> > --Yongjun
> >
> > ----------
> >
> > CVE-2016-5393: Apache Hadoop Privilege escalation vulnerability
> >
> > Severity: Critical
> >
> >
> >
> > Vendor:
> >
> > The Apache Software Foundation
> >
> >
> >
> > Versions Affected:
> >
> > Hadoop 2.6.x, 2.7.x
> >
> >
> >
> > Description:
> >
> > A remote user who can authenticate with the HDFS NameNode can possibly
> run
> > arbitrary commands as the hdfs user.
> >
> >
> >
> > Mitigation:
> >
> > 2.7.x users should upgrade to 2.7.3
> >
> > 2.6.x users should upgrade to 2.6.5
> >
> >
> >
> > Impact:
> >
> > A remote user who can authenticate with the HDFS NameNode can possibly
> run
> > arbitrary commands with the same privileges as HDFS service.
> >
> >
> >
> > Credit:
> >
> > This issue was discovered by Freddie Rice.
> >
> > ----------
> >
> --
> Zhe Zhang
> Apache Hadoop Committer
> http://zhe-thoughts.github.io/about/ | @oldcap
>

--001a113cd1ec794ae30542720ff4--
