X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["779" "Thursday" "18" "May" "2017" "22:31:47" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20170518203147.2hgozxkkpg57ngen@eldamar.local>" "27" "[oss-security] Deluge: CVE-2017-9031: WebUI component: directory traversal vulnerability" "^Date:" nil nil "5" "2017051820:31:47" "[oss-security] Deluge: CVE-2017-9031: WebUI component: directory traversal vulnerability" (number mark "U       carnil@debia May 18   27/779   " thread-indent "\"[oss-security] Deluge: CVE-2017-9031: WebUI component: directory traversal vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18369 invoked by uid 550); 18 May 2017 20:32:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 18348 invoked from network); 18 May 2017 20:32:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=+ze/YzWBjQ75wszfqoIxjAhDGVO9yWqjZqVLTOWhn2A=;
        b=ksNu+O4uqqY6VWV5N8btEAQKzkLxOg6YNURqNcVsD4i7CtzfJpGYY0a6siMHhHBhIb
         lajohDF2vpIh8pmxY3p1VI030MqCcxcVp6K25qFhYjqmTCAZJq9tu6f6Cf+u6icvJi0d
         hSVnfBjaGmcmn73fdDTMnslwwkTx5gaXkXuCYb/5Xap3/uXO7yUaURXD6RDaywkfxaWi
         7wGshrgnZtFoujXB4f3IZZDCuM6cVvI6w3VyhDbwzacRd6S59++9K8aMEy2YOpDqQXyI
         Is/mJr5+PfO+dHovu2mrAG8D7kzSpRlIuQWyWalmrC4eTF7fsrvxkHaV+HsI90j5AKRC
         O/lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mime-version:content-disposition:user-agent;
        bh=+ze/YzWBjQ75wszfqoIxjAhDGVO9yWqjZqVLTOWhn2A=;
        b=GbXhmry5HOB9y57gwDO926XklPXG8JI0Gu5em4Ka3QjUJK1bLZXcuOMcdgyfayXpIo
         hGOqQF4FFdQ/rLGaSt+CWnUa/jrcCpxywj2zK9v3Kn+1tU/8jvx3I6PgW4czhd+0j/1v
         +TbTtZoCk937ujvRuoca4h6WdZ+Bwwi9at00IVXW/ADIotLOfHlFMznI4Vu+otbWtWeb
         wQfi7441P/PSRP+nFbp0/7974ZrA9rSOKTpHYN3oeIeTDXRVgK+1DcXzZlSh7N+gNpi+
         1egOcHiK8AYWF14GVEvrDDXuw9wTvrZs6zB+18M74aXefeDZoqY+x+YApZBwF72Lj/AE
         NPoA==
X-Gm-Message-State: AODbwcBhGmdgJ8j6Z+O8Zxsx0LI71T1KtdN4s6ltXOMWwLRvVLMm8hDp
	VSxUitzHZda0p+uu
X-Received: by 10.28.130.196 with SMTP id e187mr3968366wmd.24.1495139514663;
        Thu, 18 May 2017 13:31:54 -0700 (PDT)
Message-ID: <20170518203147.2hgozxkkpg57ngen@eldamar.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20170306 (1.8.0)
Date: Thu, 18 May 2017 22:31:47 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Subject: [oss-security] Deluge: CVE-2017-9031: WebUI component: directory traversal
 vulnerability
To: OSS Security Mailinglist <oss-security@lists.openwall.com>

Hi

CVE-2017-9031 was assigned for the following directory traversal issue
in Deluge's WebUI:

http://dev.deluge-torrent.org/wiki/ReleaseNotes/1.3.15

Quoting upstream announce:
> Highly recommended to upgrade to this release as it contains a
> directory traversal security fix that once again has the real
> potential to compromise your machine. 

The related commit is:

http://git.deluge-torrent.org/deluge/commit/?h=1.3-stable&id=41acade01ae88f7b7bbdba308a0886771aa582fd

which gives more information about the issue:

> [WebUI] Check render template files exist and raise 404 if not
> - Check render/* requests match to .html files in the 'render' dir
> - Protects against directory (path) traversal

Additional reference:
https://bugs.debian.org/862611

Regards,
Salvatore
