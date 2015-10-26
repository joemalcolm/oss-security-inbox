X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["409" "Monday" "26" "October" "2015" "20:32:44" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20151026193244.GA1444@elende.valinor.li>" "16" "[oss-security] CVE Request: Wordpress: Cross-site scripting vulnerability in the user list table" nil nil nil "10" "2015102619:32:44" "[oss-security] CVE Request: Wordpress: Cross-site scripting vulnerability in the user list table" (number mark "        carnil@debia Oct 26   16/409   " thread-indent "\"[oss-security] CVE Request: Wordpress: Cross-site scripting vulnerability in the user list table\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 23710 invoked by uid 550); 26 Oct 2015 19:32:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23692 invoked from network); 26 Oct 2015 19:32:57 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=2NRUP+++k+fgqdtyFtSJBA7YNCQ8DkaFL4afGLmCFSU=;
        b=e5318h1yyjgWpVlEyMGjEBi2S0eTRVZE5XM3i5cenSso1MB62zUR1dUkeR7swl+fWn
         2DmcZ9z0h5czUfTF3lLQ0vh6V3//WhC2s3ABVG94qdMyAkwcD7V1i3qDSzRupqBikatL
         4N62YTbB0NjrRGJVrbpIGNdBMOjsOuAchpqm2MzumUcXHnzM2amVpxCSw14mfn1uwX8c
         FbCm8iWh8N0XemUz9S3GoLlbGlWzKOkqs5kRusN3iP6aB0XdpHmHM8r3cjpcVjTpmfuy
         6NB7NOpAa1WxqHBfe5GlU2wfaD+4KTByoeCINQhE1Wb9dZPecGiSR8WFXCLNImwghGmk
         PN+g==
X-Received: by 10.180.37.114 with SMTP id x18mr4840799wij.92.1445887965632;
        Mon, 26 Oct 2015 12:32:45 -0700 (PDT)
Message-ID: <20151026193244.GA1444@elende.valinor.li>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: Craig Small <csmall@debian.org>, security@wordpress.org,
	CVE Assignments MITRE <cve-assign@mitre.org>
Date: Mon, 26 Oct 2015 20:32:44 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Subject: [oss-security] CVE Request: Wordpress: Cross-site scripting vulnerability in the
 user list table
To: OSS Security Mailinglist <oss-security@lists.openwall.com>

Hi

Wordpress release 4.3.1 Security and Maintenance Release contained as
well a fix for a cross-site scripting vulnerability in the user list
table:

https://wordpress.org/news/2015/09/wordpress-4-3-1/

Upstream commit:
https://github.com/WordPress/WordPress/commit/f91a5fd10ea7245e5b41e288624819a37adf290a

Has a CVE for this already been requested as well? If not can you
assign a CVE?

Regards,
Salvatore
