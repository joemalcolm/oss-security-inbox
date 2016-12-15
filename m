X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["515" "Thursday" "15" "December" "2016" "06:33:48" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20161215053348.5sioflbygm3ba3h5@lorien.valinor.li>" "19" "[oss-security] CVE Request: Game Music Emulators: incorrect emulation of the SPC700 audio co-processor of SNES: arbitrary code execution via malformed SPC music file" nil nil nil "12" "2016121505:33:48" "[oss-security] CVE Request: Game Music Emulators: incorrect emulation of the SPC700 audio co-processor of SNES: arbitrary code execution via malformed SPC music file" (number mark "U       carnil@debia Dec 15   19/515   " thread-indent "\"[oss-security] CVE Request: Game Music Emulators: incorrect emulation of the SPC700 audio co-processor of SNES: arbitrary code execution via malformed SPC music file\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24137 invoked by uid 550); 15 Dec 2016 05:34:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24119 invoked from network); 15 Dec 2016 05:34:03 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=1v4J+mjndQjq3RohprWYAZyAvWjuqiBWy/cIb7EQltw=;
        b=Ul0gU4OIU6qGmoQIYavVB7zEGKMg7T0PWOpglAgDLSjxbb7sBW5vnm4i9/ImwlVIQT
         6C/qMLuYJsGH0cYGQbqOdWAQcR/ELCAq71SiKr7hT2s58PRKb7LcI58GdxyaGednNDzT
         jL4Pg+rJKUooLxDuLdUNpxtavHmW/DJ1QpAgkhzENy0KUt6yDS6KxvxZy16As7s49VPt
         L4Nilnapdbf0oWVjLF7bx8f+9sygeJcRyx8UcTtNvPmtQDlD7/3aqsqw8uwYEs8MQrdq
         vQkcEjSvykkOn1rOIDrzeDglILEPRjvhyTHh0yVJw6O5DP/YvmHovnbtJd8QItAQY7Gm
         Zd1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mime-version:content-disposition:user-agent;
        bh=1v4J+mjndQjq3RohprWYAZyAvWjuqiBWy/cIb7EQltw=;
        b=i/r89uU8ZDUnG/KYKpaX4VFdGXgKWpJoZsEDI/GIZRaFgwLT6A0x0AMgEVQrp6If5v
         RNtej7RAcqle+Mzqa90XbJEZuOruvxVIfj3khURnZfQgHxJ/+GtSNYJ5L54IgTAGZdLJ
         0VaGLBzdVNLJKf2to6uqbSm+75INPGya+SPDCJGTfsFjIyZTd5kjfneWv2C7p4jMvs+m
         fkH6WgvI1Ql4EJGUyD+6/FFUclBm2vppPgYvWhgqy7+uXNcOE9MnMhLDOGkBT4yBN6fa
         zleLODivrAHWdLRwuS2g9I31T3lloCYn0xyQipkpRrKc18UmlY1ksrRjNDFFZD8M0MyY
         TTwg==
X-Gm-Message-State: AIkVDXKumtyc4RlJN5ZgA/wb2FWslvuNgooj4w6uYgLvUU2CbB9ym/nVacsBpeXzpzY/jw==
X-Received: by 10.55.135.197 with SMTP id j188mr429015qkd.71.1481780031304;
        Wed, 14 Dec 2016 21:33:51 -0800 (PST)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Thu, 15 Dec 2016 06:33:48 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: OSS Security Mailinglist <oss-security@lists.openwall.com>
Message-ID: <20161215053348.5sioflbygm3ba3h5@lorien.valinor.li>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20161126 (1.7.1)
Subject: [oss-security] CVE Request: Game Music Emulators: incorrect emulation of the SPC700
 audio co-processor of SNES: arbitrary code execution via malformed SPC music
 file

Hi

As reported by Chris Evans via

http://scarybeastsecurity.blogspot.de/2016/12/redux-compromising-linux-using-snes.html

Incorrect emulation of the SPC700 audio co-processor of the Super
Nintendo Entertainment System allows the execution of arbitrary code
if a malformed SPC music file is opened.

Debian released a DSA for this issue (in the qemu-music-emu source
package):

https://lists.debian.org/debian-security-announce/2016/msg00318.html

Could you please assign a CVE for this issue.

Regards,
Salvatore
