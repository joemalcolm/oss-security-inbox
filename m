X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/11/27/2
Message-ID: <alpine.LFD.2.10.1311271352200.19951@javelin.pnq.redhat.com>
Date: Wed, 27 Nov 2013 14:00:20 +0530 (IST)
From: P J P <ppandit@...hat.com>
To: oss security list <oss-security@...ts.openwall.com>
Subject: Re: CVE Request: static IV used in Percona XtraBackup
Content-Type: text/plain; charset=utf-8

   Hi,

+-- On Tue, 26 Nov 2013, Kurt Seifried wrote --+
| P.S. has anyone considered packaging this for Fedora? looks nifty.

  IIUC, the package is called maatkit(http://www.maatkit.org). It used to be 
an independent collection of MySQL tools. Percona folks acquired it a while 
ago.

   # yum info maatkit.noarch

I'm not sure if maatkit includes tools from Percona Toolkit too.

--
Prasad J Pandit / Red Hat Security Response Team
